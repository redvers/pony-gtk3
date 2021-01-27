/*
   needs: ["Pointer[U8 val] ref", "String", "Bool", "None", "GObjectREF"]
provides: ["GtkCellArea val"]
*/
use "../gobject"
class val GtkCellArea is GtkWidget
"""
The #GtkCellArea is an abstract class for #GtkCellLayout widgets
(also referred to as "layouting widgets") to interface with an
arbitrary number of #GtkCellRenderers and interact with the user
for a given #GtkTreeModel row.

The cell area handles events, focus navigation, drawing and
size requests and allocations for a given row of data.

Usually users dont have to interact with the #GtkCellArea directly
unless they are implementing a cell-layouting widget themselves.

# Requesting area sizes

As outlined in
[GtkWidget’s geometry management section][geometry-management],
GTK+ uses a height-for-width
geometry management system to compute the sizes of widgets and user
interfaces. #GtkCellArea uses the same semantics to calculate the
size of an area for an arbitrary number of #GtkTreeModel rows.

When requesting the size of a cell area one needs to calculate
the size for a handful of rows, and this will be done differently by
different layouting widgets. For instance a #GtkTreeViewColumn
always lines up the areas from top to bottom while a #GtkIconView
on the other hand might enforce that all areas received the same
width and wrap the areas around, requesting height for more cell
areas when allocated less width.

It’s also important for areas to maintain some cell
alignments with areas rendered for adjacent rows (cells can
appear “columnized” inside an area even when the size of
cells are different in each row). For this reason the #GtkCellArea
uses a #GtkCellAreaContext object to store the alignments
and sizes along the way (as well as the overall largest minimum
and natural size for all the rows which have been calculated
with the said context).

The #GtkCellAreaContext is an opaque object specific to the
#GtkCellArea which created it (see gtk_cell_area_create_context()).
The owning cell-layouting widget can create as many contexts as
it wishes to calculate sizes of rows which should receive the
same size in at least one orientation (horizontally or vertically),
However, it’s important that the same #GtkCellAreaContext which
was used to request the sizes for a given #GtkTreeModel row be
used when rendering or processing events for that row.

In order to request the width of all the rows at the root level
of a #GtkTreeModel one would do the following:

|[<!-- language="C" -->
GtkTreeIter iter;
gint        minimum_width;
gint        natural_width;

valid = gtk_tree_model_get_iter_first (model, &iter);
while (valid)
  {
    gtk_cell_area_apply_attributes (area, model, &iter, FALSE, FALSE);
    gtk_cell_area_get_preferred_width (area, context, widget, NULL, NULL);

    valid = gtk_tree_model_iter_next (model, &iter);
  }
gtk_cell_area_context_get_preferred_width (context, &minimum_width, &natural_width);
]|

Note that in this example it’s not important to observe the
returned minimum and natural width of the area for each row
unless the cell-layouting object is actually interested in the
widths of individual rows. The overall width is however stored
in the accompanying #GtkCellAreaContext object and can be consulted
at any time.

This can be useful since #GtkCellLayout widgets usually have to
support requesting and rendering rows in treemodels with an
exceedingly large amount of rows. The #GtkCellLayout widget in
that case would calculate the required width of the rows in an
idle or timeout source (see g_timeout_add()) and when the widget
is requested its actual width in #GtkWidgetClass.get_preferred_width()
it can simply consult the width accumulated so far in the
#GtkCellAreaContext object.

A simple example where rows are rendered from top to bottom and
take up the full width of the layouting widget would look like:

|[<!-- language="C" -->
static void
foo_get_preferred_width (GtkWidget       *widget,
                         gint            *minimum_size,
                         gint            *natural_size)
{
  Foo        *foo  = FOO (widget);
  FooPrivate *priv = foo->priv;

  foo_ensure_at_least_one_handfull_of_rows_have_been_requested (foo);

  gtk_cell_area_context_get_preferred_width (priv->context, minimum_size, natural_size);
}
]|

In the above example the Foo widget has to make sure that some
row sizes have been calculated (the amount of rows that Foo judged
was appropriate to request space for in a single timeout iteration)
before simply returning the amount of space required by the area via
the #GtkCellAreaContext.

Requesting the height for width (or width for height) of an area is
a similar task except in this case the #GtkCellAreaContext does not
store the data (actually, it does not know how much space the layouting
widget plans to allocate it for every row. It’s up to the layouting
widget to render each row of data with the appropriate height and
width which was requested by the #GtkCellArea).

In order to request the height for width of all the rows at the
root level of a #GtkTreeModel one would do the following:

|[<!-- language="C" -->
GtkTreeIter iter;
gint        minimum_height;
gint        natural_height;
gint        full_minimum_height = 0;
gint        full_natural_height = 0;

valid = gtk_tree_model_get_iter_first (model, &iter);
while (valid)
  {
    gtk_cell_area_apply_attributes (area, model, &iter, FALSE, FALSE);
    gtk_cell_area_get_preferred_height_for_width (area, context, widget,
                                                  width, &minimum_height, &natural_height);

    if (width_is_for_allocation)
       cache_row_height (&iter, minimum_height, natural_height);

    full_minimum_height += minimum_height;
    full_natural_height += natural_height;

    valid = gtk_tree_model_iter_next (model, &iter);
  }
]|

Note that in the above example we would need to cache the heights
returned for each row so that we would know what sizes to render the
areas for each row. However we would only want to really cache the
heights if the request is intended for the layouting widgets real
allocation.

In some cases the layouting widget is requested the height for an
arbitrary for_width, this is a special case for layouting widgets
who need to request size for tens of thousands  of rows. For this
case it’s only important that the layouting widget calculate
one reasonably sized chunk of rows and return that height
synchronously. The reasoning here is that any layouting widget is
at least capable of synchronously calculating enough height to fill
the screen height (or scrolled window height) in response to a single
call to #GtkWidgetClass.get_preferred_height_for_width(). Returning
a perfect height for width that is larger than the screen area is
inconsequential since after the layouting receives an allocation
from a scrolled window it simply continues to drive the scrollbar
values while more and more height is required for the row heights
that are calculated in the background.

# Rendering Areas

Once area sizes have been aquired at least for the rows in the
visible area of the layouting widget they can be rendered at
#GtkWidgetClass.draw() time.

A crude example of how to render all the rows at the root level
runs as follows:

|[<!-- language="C" -->
GtkAllocation allocation;
GdkRectangle  cell_area = { 0, };
GtkTreeIter   iter;
gint          minimum_width;
gint          natural_width;

gtk_widget_get_allocation (widget, &allocation);
cell_area.width = allocation.width;

valid = gtk_tree_model_get_iter_first (model, &iter);
while (valid)
  {
    cell_area.height = get_cached_height_for_row (&iter);

    gtk_cell_area_apply_attributes (area, model, &iter, FALSE, FALSE);
    gtk_cell_area_render (area, context, widget, cr,
                          &cell_area, &cell_area, state_flags, FALSE);

    cell_area.y += cell_area.height;

    valid = gtk_tree_model_iter_next (model, &iter);
  }
]|

Note that the cached height in this example really depends on how
the layouting widget works. The layouting widget might decide to
give every row its minimum or natural height or, if the model content
is expected to fit inside the layouting widget without scrolling, it
would make sense to calculate the allocation for each row at
#GtkWidget::size-allocate time using gtk_distribute_natural_allocation().

# Handling Events and Driving Keyboard Focus

Passing events to the area is as simple as handling events on any
normal widget and then passing them to the gtk_cell_area_event()
API as they come in. Usually #GtkCellArea is only interested in
button events, however some customized derived areas can be implemented
who are interested in handling other events. Handling an event can
trigger the #GtkCellArea::focus-changed signal to fire; as well as
#GtkCellArea::add-editable in the case that an editable cell was
clicked and needs to start editing. You can call
gtk_cell_area_stop_editing() at any time to cancel any cell editing
that is currently in progress.

The #GtkCellArea drives keyboard focus from cell to cell in a way
similar to #GtkWidget. For layouting widgets that support giving
focus to cells it’s important to remember to pass %GTK_CELL_RENDERER_FOCUSED
to the area functions for the row that has focus and to tell the
area to paint the focus at render time.

Layouting widgets that accept focus on cells should implement the
#GtkWidgetClass.focus() virtual method. The layouting widget is always
responsible for knowing where #GtkTreeModel rows are rendered inside
the widget, so at #GtkWidgetClass.focus() time the layouting widget
should use the #GtkCellArea methods to navigate focus inside the area
and then observe the GtkDirectionType to pass the focus to adjacent
rows and areas.

A basic example of how the #GtkWidgetClass.focus() virtual method
should be implemented:

|[<!-- language="C" -->
static gboolean
foo_focus (GtkWidget       *widget,
           GtkDirectionType direction)
{
  Foo        *foo  = FOO (widget);
  FooPrivate *priv = foo->priv;
  gint        focus_row;
  gboolean    have_focus = FALSE;

  focus_row = priv->focus_row;

  if (!gtk_widget_has_focus (widget))
    gtk_widget_grab_focus (widget);

  valid = gtk_tree_model_iter_nth_child (priv->model, &iter, NULL, priv->focus_row);
  while (valid)
    {
      gtk_cell_area_apply_attributes (priv->area, priv->model, &iter, FALSE, FALSE);

      if (gtk_cell_area_focus (priv->area, direction))
        {
           priv->focus_row = focus_row;
           have_focus = TRUE;
           break;
        }
      else
        {
          if (direction == GTK_DIR_RIGHT ||
              direction == GTK_DIR_LEFT)
            break;
          else if (direction == GTK_DIR_UP ||
                   direction == GTK_DIR_TAB_BACKWARD)
           {
              if (focus_row == 0)
                break;
              else
               {
                  focus_row--;
                  valid = gtk_tree_model_iter_nth_child (priv->model, &iter, NULL, focus_row);
               }
            }
          else
            {
              if (focus_row == last_row)
                break;
              else
                {
                  focus_row++;
                  valid = gtk_tree_model_iter_next (priv->model, &iter);
                }
            }
        }
    }
    return have_focus;
}
]|

Note that the layouting widget is responsible for matching the
GtkDirectionType values to the way it lays out its cells.

# Cell Properties

The #GtkCellArea introduces cell properties for #GtkCellRenderers
in very much the same way that #GtkContainer introduces
[child properties][child-properties]
for #GtkWidgets. This provides some general interfaces for defining
the relationship cell areas have with their cells. For instance in a
#GtkCellAreaBox a cell might “expand” and receive extra space when
the area is allocated more than its full natural request, or a cell
might be configured to “align” with adjacent rows which were requested
and rendered with the same #GtkCellAreaContext.

Use gtk_cell_area_class_install_cell_property() to install cell
properties for a cell area class and gtk_cell_area_class_find_cell_property()
or gtk_cell_area_class_list_cell_properties() to get information about
existing cell properties.

To set the value of a cell property, use gtk_cell_area_cell_set_property(),
gtk_cell_area_cell_set() or gtk_cell_area_cell_set_valist(). To obtain
the value of a cell property, use gtk_cell_area_cell_get_property(),
gtk_cell_area_cell_get() or gtk_cell_area_cell_get_valist().
"""
  var widget: GObjectREF val

  fun gtkwidget(): GObjectREF val => widget

  new val create_from_GtkBuilder(gtkbuilder: GtkBuilder, glade_id: String) =>
    widget = @gtk_builder_get_object[GObjectREF](gtkbuilder.gtkwidget(), glade_id.cstring())

  new val create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'

  new val never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF




/* activate unavailable due to typing issues
 {:doh, %{argctype: "GtkCellAreaContext*", argname: "context", argtype: "CellAreaContext", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const GdkRectangle*", argname: "cell_area", argtype: "Gdk.Rectangle", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkCellRendererState", argname: "flags", argtype: "CellRendererState", paramtype: :param, txo: "none"}}
*/

/* activate_cell unavailable due to typing issues
 {:doh, %{argctype: "GtkCellRenderer*", argname: "renderer", argtype: "CellRenderer", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkEvent*", argname: "event", argtype: "Gdk.Event", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const GdkRectangle*", argname: "cell_area", argtype: "Gdk.Rectangle", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkCellRendererState", argname: "flags", argtype: "CellRendererState", paramtype: :param, txo: "none"}}
*/

/* add unavailable due to typing issues
 {:doh, %{argctype: "GtkCellRenderer*", argname: "renderer", argtype: "CellRenderer", paramtype: :param, txo: "none"}}
*/

/* add_focus_sibling unavailable due to typing issues
 {:doh, %{argctype: "GtkCellRenderer*", argname: "renderer", argtype: "CellRenderer", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkCellRenderer*", argname: "sibling", argtype: "CellRenderer", paramtype: :param, txo: "none"}}
*/

/* add_with_properties unavailable due to typing issues
 {:doh, %{argctype: "GtkCellRenderer*", argname: "renderer", argtype: "CellRenderer", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "first_prop_name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "", argname: "...", argtype: "", paramtype: :param, txo: "none"}}
*/

/* apply_attributes unavailable due to typing issues
 {:doh, %{argctype: "GtkTreeModel*", argname: "tree_model", argtype: "TreeModel", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkTreeIter*", argname: "iter", argtype: "TreeIter", paramtype: :param, txo: "none"}}
*/

/* attribute_connect unavailable due to typing issues
 {:doh, %{argctype: "GtkCellRenderer*", argname: "renderer", argtype: "CellRenderer", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "attribute", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* attribute_disconnect unavailable due to typing issues
 {:doh, %{argctype: "GtkCellRenderer*", argname: "renderer", argtype: "CellRenderer", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "attribute", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* attribute_get_column unavailable due to typing issues
 {:doh, %{argctype: "GtkCellRenderer*", argname: "renderer", argtype: "CellRenderer", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "attribute", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* cell_get unavailable due to typing issues
 {:doh, %{argctype: "GtkCellRenderer*", argname: "renderer", argtype: "CellRenderer", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "first_prop_name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "", argname: "...", argtype: "", paramtype: :param, txo: "none"}}
*/

/* cell_get_property unavailable due to typing issues
 {:doh, %{argctype: "GtkCellRenderer*", argname: "renderer", argtype: "CellRenderer", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "property_name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GValue*", argname: "value", argtype: "GObject.Value", paramtype: :param, txo: "none"}}
*/

/* cell_get_valist unavailable due to typing issues
 {:doh, %{argctype: "GtkCellRenderer*", argname: "renderer", argtype: "CellRenderer", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "first_property_name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "va_list", argname: "var_args", argtype: "va_list", paramtype: :param, txo: "none"}}
*/

/* cell_set unavailable due to typing issues
 {:doh, %{argctype: "GtkCellRenderer*", argname: "renderer", argtype: "CellRenderer", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "first_prop_name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "", argname: "...", argtype: "", paramtype: :param, txo: "none"}}
*/

/* cell_set_property unavailable due to typing issues
 {:doh, %{argctype: "GtkCellRenderer*", argname: "renderer", argtype: "CellRenderer", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "property_name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const GValue*", argname: "value", argtype: "GObject.Value", paramtype: :param, txo: "none"}}
*/

/* cell_set_valist unavailable due to typing issues
 {:doh, %{argctype: "GtkCellRenderer*", argname: "renderer", argtype: "CellRenderer", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "first_property_name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "va_list", argname: "var_args", argtype: "va_list", paramtype: :param, txo: "none"}}
*/

/* copy_context unavailable due to return typing issues
{:argctype, "GtkCellAreaContext*"}
{:argname, "rv"}
{:argtype, "CellAreaContext"}
{:paramtype, :param}
{:txo, "full"} */

/* create_context unavailable due to return typing issues
{:argctype, "GtkCellAreaContext*"}
{:argname, "rv"}
{:argtype, "CellAreaContext"}
{:paramtype, :param}
{:txo, "full"} */

/* event unavailable due to typing issues
 {:doh, %{argctype: "GtkCellAreaContext*", argname: "context", argtype: "CellAreaContext", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkEvent*", argname: "event", argtype: "Gdk.Event", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const GdkRectangle*", argname: "cell_area", argtype: "Gdk.Rectangle", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkCellRendererState", argname: "flags", argtype: "CellRendererState", paramtype: :param, txo: "none"}}
*/

/* focus unavailable due to typing issues
 {:doh, %{argctype: "GtkDirectionType", argname: "direction", argtype: "DirectionType", paramtype: :param, txo: "none"}}
*/

/* foreach unavailable due to typing issues
 {:doh, %{argctype: "GtkCellCallback", argname: "callback", argtype: "CellCallback", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "callback_data", argtype: "gpointer", paramtype: :param, txo: "none"}}
*/

/* foreach_alloc unavailable due to typing issues
 {:doh, %{argctype: "GtkCellAreaContext*", argname: "context", argtype: "CellAreaContext", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const GdkRectangle*", argname: "cell_area", argtype: "Gdk.Rectangle", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const GdkRectangle*", argname: "background_area", argtype: "Gdk.Rectangle", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkCellAllocCallback", argname: "callback", argtype: "CellAllocCallback", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "callback_data", argtype: "gpointer", paramtype: :param, txo: "none"}}
*/

/* get_cell_allocation unavailable due to typing issues
 {:doh, %{argctype: "GtkCellAreaContext*", argname: "context", argtype: "CellAreaContext", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkCellRenderer*", argname: "renderer", argtype: "CellRenderer", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const GdkRectangle*", argname: "cell_area", argtype: "Gdk.Rectangle", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkRectangle*", argname: "allocation", argtype: "Gdk.Rectangle", paramtype: :param, txo: "none"}}
*/

/* get_cell_at_position unavailable due to return typing issues
{:argctype, "GtkCellRenderer*"}
{:argname, "rv"}
{:argtype, "CellRenderer"}
{:paramtype, :param}
{:txo, "none"} */

fun get_current_path_string(): String =>
"""
Gets the current #GtkTreePath string for the currently
applied #GtkTreeIter, this is implicitly updated when
gtk_cell_area_apply_attributes() is called and can be
used to interact with renderers from #GtkCellArea
subclasses.
"""
  var cstring_pony: Pointer[U8 val] ref = @gtk_cell_area_get_current_path_string[Pointer[U8 val] ref](widget)
  var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

/* get_edit_widget unavailable due to return typing issues
{:argctype, "GtkCellEditable*"}
{:argname, "rv"}
{:argtype, "CellEditable"}
{:paramtype, :param}
{:txo, "none"} */

/* get_edited_cell unavailable due to return typing issues
{:argctype, "GtkCellRenderer*"}
{:argname, "rv"}
{:argtype, "CellRenderer"}
{:paramtype, :param}
{:txo, "none"} */

/* get_focus_cell unavailable due to return typing issues
{:argctype, "GtkCellRenderer*"}
{:argname, "rv"}
{:argtype, "CellRenderer"}
{:paramtype, :param}
{:txo, "none"} */

/* get_focus_from_sibling unavailable due to return typing issues
{:argctype, "GtkCellRenderer*"}
{:argname, "rv"}
{:argtype, "CellRenderer"}
{:paramtype, :param}
{:txo, "none"} */

/* get_focus_siblings unavailable due to return typing issues
{:argctype, "const GList*"}
{:argname, "rv"}
{:argtype, "GLib.List"}
{:paramtype, :param}
{:txo, "none"} */

/* get_preferred_height unavailable due to typing issues
 {:doh, %{argctype: "GtkCellAreaContext*", argname: "context", argtype: "CellAreaContext", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gint*", argname: "minimum_height", argtype: "gint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gint*", argname: "natural_height", argtype: "gint", paramtype: :param, txo: "full"}}
*/

/* get_preferred_height_for_width unavailable due to typing issues
 {:doh, %{argctype: "GtkCellAreaContext*", argname: "context", argtype: "CellAreaContext", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gint*", argname: "minimum_height", argtype: "gint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gint*", argname: "natural_height", argtype: "gint", paramtype: :param, txo: "full"}}
*/

/* get_preferred_width unavailable due to typing issues
 {:doh, %{argctype: "GtkCellAreaContext*", argname: "context", argtype: "CellAreaContext", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gint*", argname: "minimum_width", argtype: "gint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gint*", argname: "natural_width", argtype: "gint", paramtype: :param, txo: "full"}}
*/

/* get_preferred_width_for_height unavailable due to typing issues
 {:doh, %{argctype: "GtkCellAreaContext*", argname: "context", argtype: "CellAreaContext", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gint*", argname: "minimum_width", argtype: "gint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gint*", argname: "natural_width", argtype: "gint", paramtype: :param, txo: "full"}}
*/

/* get_request_mode unavailable due to return typing issues
{:argctype, "GtkSizeRequestMode"}
{:argname, "rv"}
{:argtype, "SizeRequestMode"}
{:paramtype, :param}
{:txo, "none"} */

/* has_renderer unavailable due to typing issues
 {:doh, %{argctype: "GtkCellRenderer*", argname: "renderer", argtype: "CellRenderer", paramtype: :param, txo: "none"}}
*/

/* inner_cell_area unavailable due to typing issues
 {:doh, %{argctype: "const GdkRectangle*", argname: "cell_area", argtype: "Gdk.Rectangle", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkRectangle*", argname: "inner_area", argtype: "Gdk.Rectangle", paramtype: :param, txo: "none"}}
*/

fun is_activatable(): Bool =>
"""
Returns whether the area can do anything when activated,
after applying new attributes to @area.
"""
  @gtk_cell_area_is_activatable[Bool](widget)

/* is_focus_sibling unavailable due to typing issues
 {:doh, %{argctype: "GtkCellRenderer*", argname: "renderer", argtype: "CellRenderer", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkCellRenderer*", argname: "sibling", argtype: "CellRenderer", paramtype: :param, txo: "none"}}
*/

/* remove unavailable due to typing issues
 {:doh, %{argctype: "GtkCellRenderer*", argname: "renderer", argtype: "CellRenderer", paramtype: :param, txo: "none"}}
*/

/* remove_focus_sibling unavailable due to typing issues
 {:doh, %{argctype: "GtkCellRenderer*", argname: "renderer", argtype: "CellRenderer", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkCellRenderer*", argname: "sibling", argtype: "CellRenderer", paramtype: :param, txo: "none"}}
*/

/* render unavailable due to typing issues
 {:doh, %{argctype: "GtkCellAreaContext*", argname: "context", argtype: "CellAreaContext", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "cairo_t*", argname: "cr", argtype: "cairo.Context", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const GdkRectangle*", argname: "background_area", argtype: "Gdk.Rectangle", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const GdkRectangle*", argname: "cell_area", argtype: "Gdk.Rectangle", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkCellRendererState", argname: "flags", argtype: "CellRendererState", paramtype: :param, txo: "none"}}
*/

/* request_renderer unavailable due to typing issues
 {:doh, %{argctype: "GtkCellRenderer*", argname: "renderer", argtype: "CellRenderer", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkOrientation", argname: "orientation", argtype: "Orientation", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gint*", argname: "minimum_size", argtype: "gint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gint*", argname: "natural_size", argtype: "gint", paramtype: :param, txo: "full"}}
*/

/* set_focus_cell unavailable due to typing issues
 {:doh, %{argctype: "GtkCellRenderer*", argname: "renderer", argtype: "CellRenderer", paramtype: :param, txo: "none"}}
*/

fun stop_editing(canceled_pony: Bool): None =>
"""
Explicitly stops the editing of the currently edited cell.

If @canceled is %TRUE, the currently edited cell renderer
will emit the ::editing-canceled signal, otherwise the
the ::editing-done signal will be emitted on the current
edit widget.

See gtk_cell_area_get_edited_cell() and gtk_cell_area_get_edit_widget().
"""
  @gtk_cell_area_stop_editing[None](widget, canceled_pony)

