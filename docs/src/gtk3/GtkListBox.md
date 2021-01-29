```````pony-full-source
/*
   needs: ["None", "Bool", "GtkWidget val", "I32", "GObjectREF"]
provides: ["GtkListBox val"]
*/
use "../gobject"
class val GtkListBox is GtkWidget
"""
A GtkListBox is a vertical container that contains GtkListBoxRow
children. These rows can by dynamically sorted and filtered, and
headers can be added dynamically depending on the row content.
It also allows keyboard and mouse navigation and selection like
a typical list.

Using GtkListBox is often an alternative to #GtkTreeView, especially
when the list contents has a more complicated layout than what is allowed
by a #GtkCellRenderer, or when the contents is interactive (i.e. has a
button in it).

Although a #GtkListBox must have only #GtkListBoxRow children you can
add any kind of widget to it via gtk_container_add(), and a #GtkListBoxRow
widget will automatically be inserted between the list and the widget.

#GtkListBoxRows can be marked as activatable or selectable. If a row
is activatable, #GtkListBox::row-activated will be emitted for it when
the user tries to activate it. If it is selectable, the row will be marked
as selected when the user tries to select it.

The GtkListBox widget was added in GTK+ 3.10.

# GtkListBox as GtkBuildable

The GtkListBox implementation of the #GtkBuildable interface supports
setting a child as the placeholder by specifying “placeholder” as the “type”
attribute of a <child> element. See gtk_list_box_set_placeholder() for info.

# CSS nodes

|[<!-- language="plain" -->
list
╰── row[.activatable]
]|

GtkListBox uses a single CSS node named list. Each GtkListBoxRow uses
a single CSS node named row. The row nodes get the .activatable
style class added when appropriate.
"""
  var widget: GObjectREF val

  fun gtkwidget(): GObjectREF val => widget

  new val create_from_GtkBuilder(gtkbuilder: GtkBuilder, glade_id: String) =>
    widget = @gtk_builder_get_object[GObjectREF](gtkbuilder.gtkwidget(), glade_id.cstring())

  new val create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'

  new val never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF


  new val create() =>
    widget = @gtk_list_box_new[GObjectREF]() //


  fun pony_NOT_IMPLEMENTED_YET_bind_model(): None =>
    """
    Binds @model to @box.

If @box was already bound to a model, that previous binding is
destroyed.

The contents of @box are cleared and then filled with widgets that
represent items from @model. @box is updated whenever @model changes.
If @model is %NULL, @box is left empty.

It is undefined to add or remove widgets directly (for example, with
gtk_list_box_insert() or gtk_container_add()) while @box is bound to a
model.

Note that using a model is incompatible with the filtering and sorting
functionality in GtkListBox. When using a model, filtering and sorting
should be implemented by the model.

    {:doh, %{argctype: "GListModel*", argname: "model", argtype: "Gio.ListModel", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkListBoxCreateWidgetFunc", argname: "create_widget_func", argtype: "ListBoxCreateWidgetFunc", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "user_data", argtype: "gpointer", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GDestroyNotify", argname: "user_data_free_func", argtype: "GLib.DestroyNotify", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_drag_highlight_row(): None =>
    """
    This is a helper function for implementing DnD onto a #GtkListBox.
The passed in @row will be highlighted via gtk_drag_highlight(),
and any previously highlighted row will be unhighlighted.

The row will also be unhighlighted when the widget gets
a drag leave event.

    {:doh, %{argctype: "GtkListBoxRow*", argname: "row", argtype: "ListBoxRow", paramtype: :param, txo: "none"}}
*/
    """

fun drag_unhighlight_row(): None =>
"""
If a row has previously been highlighted via gtk_list_box_drag_highlight_row()
it will have the highlight removed.
"""
  @gtk_list_box_drag_unhighlight_row[None](widget)

fun get_activate_on_single_click(): Bool =>
"""
Returns whether rows activate on single clicks.
"""
  @gtk_list_box_get_activate_on_single_click[Bool](widget)

  fun pony_NOT_IMPLEMENTED_YET_get_adjustment(): None =>
    """
    Gets the adjustment (if any) that the widget uses to
for vertical scrolling.

    {:argctype, "GtkAdjustment*"}
{:argname, "rv"}
{:argtype, "Adjustment"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_row_at_index(): None =>
    """
    Gets the n-th child in the list (not counting headers).
If @_index is negative or larger than the number of items in the
list, %NULL is returned.

    {:argctype, "GtkListBoxRow*"}
{:argname, "rv"}
{:argtype, "ListBoxRow"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_row_at_y(): None =>
    """
    Gets the row at the @y position.

    {:argctype, "GtkListBoxRow*"}
{:argname, "rv"}
{:argtype, "ListBoxRow"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_selected_row(): None =>
    """
    Gets the selected row.

Note that the box may allow multiple selection, in which
case you should use gtk_list_box_selected_foreach() to
find all selected rows.

    {:argctype, "GtkListBoxRow*"}
{:argname, "rv"}
{:argtype, "ListBoxRow"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_selected_rows(): None =>
    """
    Creates a list of all selected children.

    {:argctype, "GList*"}
{:argname, "rv"}
{:argtype, "GLib.List"}
{:paramtype, :param}
{:txo, "container"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_selection_mode(): None =>
    """
    Gets the selection mode of the listbox.

    {:argctype, "GtkSelectionMode"}
{:argname, "rv"}
{:argtype, "SelectionMode"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

fun insert(child_pony: GtkWidget val, position_pony: I32): None =>
"""
Insert the @child into the @box at @position. If a sort function is
set, the widget will actually be inserted at the calculated position and
this function has the same effect of gtk_container_add().

If @position is -1, or larger than the total number of items in the
@box, then the @child will be appended to the end.
"""
  @gtk_list_box_insert[None](widget, child_pony.gtkwidget(), position_pony)

fun invalidate_filter(): None =>
"""
Update the filtering for all rows. Call this when result
of the filter function on the @box is changed due
to an external factor. For instance, this would be used
if the filter function just looked for a specific search
string and the entry with the search string has changed.
"""
  @gtk_list_box_invalidate_filter[None](widget)

fun invalidate_headers(): None =>
"""
Update the separators for all rows. Call this when result
of the header function on the @box is changed due
to an external factor.
"""
  @gtk_list_box_invalidate_headers[None](widget)

fun invalidate_sort(): None =>
"""
Update the sorting for all rows. Call this when result
of the sort function on the @box is changed due
to an external factor.
"""
  @gtk_list_box_invalidate_sort[None](widget)

fun prepend(child_pony: GtkWidget val): None =>
"""
Prepend a widget to the list. If a sort function is set, the widget will
actually be inserted at the calculated position and this function has the
same effect of gtk_container_add().
"""
  @gtk_list_box_prepend[None](widget, child_pony.gtkwidget())

fun select_all(): None =>
"""
Select all children of @box, if the selection mode allows it.
"""
  @gtk_list_box_select_all[None](widget)

  fun pony_NOT_IMPLEMENTED_YET_select_row(): None =>
    """
    Make @row the currently selected row.

    {:doh, %{argctype: "GtkListBoxRow*", argname: "row", argtype: "ListBoxRow", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_selected_foreach(): None =>
    """
    Calls a function for each selected child.

Note that the selection cannot be modified from within this function.

    {:doh, %{argctype: "GtkListBoxForeachFunc", argname: "func", argtype: "ListBoxForeachFunc", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "data", argtype: "gpointer", paramtype: :param, txo: "none"}}
*/
    """

fun set_activate_on_single_click(single_pony: Bool): None =>
"""
If @single is %TRUE, rows will be activated when you click on them,
otherwise you need to double-click.
"""
  @gtk_list_box_set_activate_on_single_click[None](widget, single_pony)

  fun pony_NOT_IMPLEMENTED_YET_set_adjustment(): None =>
    """
    Sets the adjustment (if any) that the widget uses to
for vertical scrolling. For instance, this is used
to get the page size for PageUp/Down key handling.

In the normal case when the @box is packed inside
a #GtkScrolledWindow the adjustment from that will
be picked up automatically, so there is no need
to manually do that.

    {:doh, %{argctype: "GtkAdjustment*", argname: "adjustment", argtype: "Adjustment", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_set_filter_func(): None =>
    """
    By setting a filter function on the @box one can decide dynamically which
of the rows to show. For instance, to implement a search function on a list that
filters the original list to only show the matching rows.

The @filter_func will be called for each row after the call, and it will
continue to be called each time a row changes (via gtk_list_box_row_changed()) or
when gtk_list_box_invalidate_filter() is called.

Note that using a filter function is incompatible with using a model
(see gtk_list_box_bind_model()).

    {:doh, %{argctype: "GtkListBoxFilterFunc", argname: "filter_func", argtype: "ListBoxFilterFunc", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "user_data", argtype: "gpointer", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GDestroyNotify", argname: "destroy", argtype: "GLib.DestroyNotify", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_set_header_func(): None =>
    """
    By setting a header function on the @box one can dynamically add headers
in front of rows, depending on the contents of the row and its position in the list.
For instance, one could use it to add headers in front of the first item of a
new kind, in a list sorted by the kind.

The @update_header can look at the current header widget using gtk_list_box_row_get_header()
and either update the state of the widget as needed, or set a new one using
gtk_list_box_row_set_header(). If no header is needed, set the header to %NULL.

Note that you may get many calls @update_header to this for a particular row when e.g.
changing things that don’t affect the header. In this case it is important for performance
to not blindly replace an existing header with an identical one.

The @update_header function will be called for each row after the call, and it will
continue to be called each time a row changes (via gtk_list_box_row_changed()) and when
the row before changes (either by gtk_list_box_row_changed() on the previous row, or when
the previous row becomes a different row). It is also called for all rows when
gtk_list_box_invalidate_headers() is called.

    {:doh, %{argctype: "GtkListBoxUpdateHeaderFunc", argname: "update_header", argtype: "ListBoxUpdateHeaderFunc", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "user_data", argtype: "gpointer", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GDestroyNotify", argname: "destroy", argtype: "GLib.DestroyNotify", paramtype: :param, txo: "none"}}
*/
    """

fun set_placeholder(placeholder_pony: GtkWidget val): None =>
"""
Sets the placeholder widget that is shown in the list when
it doesn't display any visible children.
"""
  @gtk_list_box_set_placeholder[None](widget, placeholder_pony.gtkwidget())

  fun pony_NOT_IMPLEMENTED_YET_set_selection_mode(): None =>
    """
    Sets how selection works in the listbox.
See #GtkSelectionMode for details.

    {:doh, %{argctype: "GtkSelectionMode", argname: "mode", argtype: "SelectionMode", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_set_sort_func(): None =>
    """
    By setting a sort function on the @box one can dynamically reorder the rows
of the list, based on the contents of the rows.

The @sort_func will be called for each row after the call, and will continue to
be called each time a row changes (via gtk_list_box_row_changed()) and when
gtk_list_box_invalidate_sort() is called.

Note that using a sort function is incompatible with using a model
(see gtk_list_box_bind_model()).

    {:doh, %{argctype: "GtkListBoxSortFunc", argname: "sort_func", argtype: "ListBoxSortFunc", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "user_data", argtype: "gpointer", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GDestroyNotify", argname: "destroy", argtype: "GLib.DestroyNotify", paramtype: :param, txo: "none"}}
*/
    """

fun unselect_all(): None =>
"""
Unselect all children of @box, if the selection mode allows it.
"""
  @gtk_list_box_unselect_all[None](widget)

  fun pony_NOT_IMPLEMENTED_YET_unselect_row(): None =>
    """
    Unselects a single row of @box, if the selection mode allows it.

    {:doh, %{argctype: "GtkListBoxRow*", argname: "row", argtype: "ListBoxRow", paramtype: :param, txo: "none"}}
*/
    """


```````