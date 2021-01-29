```````pony-full-source
/*
   needs: ["Bool", "None", "I32", "GObjectREF"]
provides: ["GtkCellRenderer val"]
*/
use "../gobject"
class val GtkCellRenderer is GtkWidget
"""
The #GtkCellRenderer is a base class of a set of objects used for
rendering a cell to a #cairo_t.  These objects are used primarily by
the #GtkTreeView widget, though they aren’t tied to them in any
specific way.  It is worth noting that #GtkCellRenderer is not a
#GtkWidget and cannot be treated as such.

The primary use of a #GtkCellRenderer is for drawing a certain graphical
elements on a #cairo_t. Typically, one cell renderer is used to
draw many cells on the screen.  To this extent, it isn’t expected that a
CellRenderer keep any permanent state around.  Instead, any state is set
just prior to use using #GObjects property system.  Then, the
cell is measured using gtk_cell_renderer_get_size(). Finally, the cell
is rendered in the correct location using gtk_cell_renderer_render().

There are a number of rules that must be followed when writing a new
#GtkCellRenderer.  First and foremost, it’s important that a certain set
of properties will always yield a cell renderer of the same size,
barring a #GtkStyle change.  The #GtkCellRenderer also has a number of
generic properties that are expected to be honored by all children.

Beyond merely rendering a cell, cell renderers can optionally
provide active user interface elements. A cell renderer can be
“activatable” like #GtkCellRendererToggle,
which toggles when it gets activated by a mouse click, or it can be
“editable” like #GtkCellRendererText, which
allows the user to edit the text using a widget implementing the
#GtkCellEditable interface, e.g. #GtkEntry.
To make a cell renderer activatable or editable, you have to
implement the #GtkCellRendererClass.activate or
#GtkCellRendererClass.start_editing virtual functions, respectively.

Many properties of #GtkCellRenderer and its subclasses have a
corresponding “set” property, e.g. “cell-background-set” corresponds
to “cell-background”. These “set” properties reflect whether a property
has been set or not. You should not set them independently.
"""
  var widget: GObjectREF val

  fun gtkwidget(): GObjectREF val => widget

  new val create_from_GtkBuilder(gtkbuilder: GtkBuilder, glade_id: String) =>
    widget = @gtk_builder_get_object[GObjectREF](gtkbuilder.gtkwidget(), glade_id.cstring())

  new val create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'

  new val never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF




  fun pony_NOT_IMPLEMENTED_YET_activate(): None =>
    """
    Passes an activate event to the cell renderer for possible processing.
Some cell renderers may use events; for example, #GtkCellRendererToggle
toggles when it gets a mouse click.

    {:doh, %{argctype: "GdkEvent*", argname: "event", argtype: "Gdk.Event", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "path", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const GdkRectangle*", argname: "background_area", argtype: "Gdk.Rectangle", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const GdkRectangle*", argname: "cell_area", argtype: "Gdk.Rectangle", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkCellRendererState", argname: "flags", argtype: "CellRendererState", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_aligned_area(): None =>
    """
    Gets the aligned area used by @cell inside @cell_area. Used for finding
the appropriate edit and focus rectangle.

    {:doh, %{argctype: "GtkCellRendererState", argname: "flags", argtype: "CellRendererState", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const GdkRectangle*", argname: "cell_area", argtype: "Gdk.Rectangle", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkRectangle*", argname: "aligned_area", argtype: "Gdk.Rectangle", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_alignment(): None =>
    """
    Fills in @xalign and @yalign with the appropriate values of @cell.

    {:doh, %{argctype: "gfloat*", argname: "xalign", argtype: "gfloat", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gfloat*", argname: "yalign", argtype: "gfloat", paramtype: :param, txo: "full"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_fixed_size(): None =>
    """
    Fills in @width and @height with the appropriate size of @cell.

    {:doh, %{argctype: "gint*", argname: "width", argtype: "gint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gint*", argname: "height", argtype: "gint", paramtype: :param, txo: "full"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_padding(): None =>
    """
    Fills in @xpad and @ypad with the appropriate values of @cell.

    {:doh, %{argctype: "gint*", argname: "xpad", argtype: "gint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gint*", argname: "ypad", argtype: "gint", paramtype: :param, txo: "full"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_preferred_height(): None =>
    """
    Retreives a renderer’s natural size when rendered to @widget.

    {:doh, %{argctype: "gint*", argname: "minimum_size", argtype: "gint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gint*", argname: "natural_size", argtype: "gint", paramtype: :param, txo: "full"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_preferred_height_for_width(): None =>
    """
    Retreives a cell renderers’s minimum and natural height if it were rendered to
@widget with the specified @width.

    {:doh, %{argctype: "gint*", argname: "minimum_height", argtype: "gint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gint*", argname: "natural_height", argtype: "gint", paramtype: :param, txo: "full"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_preferred_size(): None =>
    """
    Retrieves the minimum and natural size of a cell taking
into account the widget’s preference for height-for-width management.

    {:doh, %{argctype: "GtkRequisition*", argname: "minimum_size", argtype: "Requisition", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkRequisition*", argname: "natural_size", argtype: "Requisition", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_preferred_width(): None =>
    """
    Retreives a renderer’s natural size when rendered to @widget.

    {:doh, %{argctype: "gint*", argname: "minimum_size", argtype: "gint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gint*", argname: "natural_size", argtype: "gint", paramtype: :param, txo: "full"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_preferred_width_for_height(): None =>
    """
    Retreives a cell renderers’s minimum and natural width if it were rendered to
@widget with the specified @height.

    {:doh, %{argctype: "gint*", argname: "minimum_width", argtype: "gint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gint*", argname: "natural_width", argtype: "gint", paramtype: :param, txo: "full"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_request_mode(): None =>
    """
    Gets whether the cell renderer prefers a height-for-width layout
or a width-for-height layout.

    {:argctype, "GtkSizeRequestMode"}
{:argname, "rv"}
{:argtype, "SizeRequestMode"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

fun get_sensitive(): Bool =>
"""
Returns the cell renderer’s sensitivity.
"""
  @gtk_cell_renderer_get_sensitive[Bool](widget)

  fun pony_NOT_IMPLEMENTED_YET_get_size(): None =>
    """
    Obtains the width and height needed to render the cell. Used by view
widgets to determine the appropriate size for the cell_area passed to
gtk_cell_renderer_render().  If @cell_area is not %NULL, fills in the
x and y offsets (if set) of the cell relative to this location.

Please note that the values set in @width and @height, as well as those
in @x_offset and @y_offset are inclusive of the xpad and ypad properties.

    {:doh, %{argctype: "const GdkRectangle*", argname: "cell_area", argtype: "Gdk.Rectangle", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gint*", argname: "x_offset", argtype: "gint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gint*", argname: "y_offset", argtype: "gint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gint*", argname: "width", argtype: "gint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gint*", argname: "height", argtype: "gint", paramtype: :param, txo: "full"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_state(): None =>
    """
    Translates the cell renderer state to #GtkStateFlags,
based on the cell renderer and widget sensitivity, and
the given #GtkCellRendererState.

    {:argctype, "GtkStateFlags"}
{:argname, "rv"}
{:argtype, "StateFlags"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

fun get_visible(): Bool =>
"""
Returns the cell renderer’s visibility.
"""
  @gtk_cell_renderer_get_visible[Bool](widget)

fun is_activatable(): Bool =>
"""
Checks whether the cell renderer can do something when activated.
"""
  @gtk_cell_renderer_is_activatable[Bool](widget)

  fun pony_NOT_IMPLEMENTED_YET_render(): None =>
    """
    Invokes the virtual render function of the #GtkCellRenderer. The three
passed-in rectangles are areas in @cr. Most renderers will draw within
@cell_area; the xalign, yalign, xpad, and ypad fields of the #GtkCellRenderer
should be honored with respect to @cell_area. @background_area includes the
blank space around the cell, and also the area containing the tree expander;
so the @background_area rectangles for all cells tile to cover the entire
@window.

    {:doh, %{argctype: "cairo_t*", argname: "cr", argtype: "cairo.Context", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const GdkRectangle*", argname: "background_area", argtype: "Gdk.Rectangle", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const GdkRectangle*", argname: "cell_area", argtype: "Gdk.Rectangle", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkCellRendererState", argname: "flags", argtype: "CellRendererState", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_set_alignment(): None =>
    """
    Sets the renderer’s alignment within its available space.

    {:doh, %{argctype: "gfloat", argname: "xalign", argtype: "gfloat", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gfloat", argname: "yalign", argtype: "gfloat", paramtype: :param, txo: "none"}}
*/
    """

fun set_fixed_size(width_pony: I32, height_pony: I32): None =>
"""
Sets the renderer size to be explicit, independent of the properties set.
"""
  @gtk_cell_renderer_set_fixed_size[None](widget, width_pony, height_pony)

fun set_padding(xpad_pony: I32, ypad_pony: I32): None =>
"""
Sets the renderer’s padding.
"""
  @gtk_cell_renderer_set_padding[None](widget, xpad_pony, ypad_pony)

fun set_sensitive(sensitive_pony: Bool): None =>
"""
Sets the cell renderer’s sensitivity.
"""
  @gtk_cell_renderer_set_sensitive[None](widget, sensitive_pony)

fun set_visible(visible_pony: Bool): None =>
"""
Sets the cell renderer’s visibility.
"""
  @gtk_cell_renderer_set_visible[None](widget, visible_pony)

  fun pony_NOT_IMPLEMENTED_YET_start_editing(): None =>
    """
    Starts editing the contents of this @cell, through a new #GtkCellEditable
widget created by the #GtkCellRendererClass.start_editing virtual function.

    {:argctype, "GtkCellEditable*"}
{:argname, "rv"}
{:argtype, "CellEditable"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

fun stop_editing(canceled_pony: Bool): None =>
"""
Informs the cell renderer that the editing is stopped.
If @canceled is %TRUE, the cell renderer will emit the
#GtkCellRenderer::editing-canceled signal.

This function should be called by cell renderer implementations
in response to the #GtkCellEditable::editing-done signal of
#GtkCellEditable.
"""
  @gtk_cell_renderer_stop_editing[None](widget, canceled_pony)


```````