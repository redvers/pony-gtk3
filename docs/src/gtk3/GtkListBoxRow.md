```````pony-full-source
/*
   needs: ["None", "Bool", "I32", "GObjectREF"]
provides: ["GtkListBoxRow"]
*/
use "../gobject"
class GtkListBoxRow is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create() =>
    widget = @gtk_list_box_row_new[GObjectREF]() //


fun changed(): None =>
"""
Marks @row as changed, causing any state that depends on this
to be updated. This affects sorting, filtering and headers.

Note that calls to this method must be in sync with the data
used for the row functions. For instance, if the list is
mirroring some external data set, and *two* rows changed in the
external data set then when you call gtk_list_box_row_changed()
on the first row the sort function must only read the new data
for the first of the two changed rows, otherwise the resorting
of the rows will be wrong.

This generally means that if you don’t fully control the data
model you have to duplicate the data that affects the listbox
row functions into the row widgets themselves. Another alternative
is to call gtk_list_box_invalidate_sort() on any model change,
but that is more expensive.
"""
  @gtk_list_box_row_changed[None](widget)

fun get_activatable(): Bool =>
"""
Gets the value of the #GtkListBoxRow:activatable property
for this row.
"""
  @gtk_list_box_row_get_activatable[Bool](widget)

/* get_header unavailable due to return typing issues
{:argctype, "GtkWidget*"}
{:argname, "rv"}
{:argtype, "Widget"}
{:paramtype, :param}
{:txo, "none"} */

fun get_index(): I32 =>
"""
Gets the current index of the @row in its #GtkListBox container.
"""
  @gtk_list_box_row_get_index[I32](widget)

fun get_selectable(): Bool =>
"""
Gets the value of the #GtkListBoxRow:selectable property
for this row.
"""
  @gtk_list_box_row_get_selectable[Bool](widget)

fun is_selected(): Bool =>
"""
Returns whether the child is currently selected in its
#GtkListBox container.
"""
  @gtk_list_box_row_is_selected[Bool](widget)

fun set_activatable(activatable_pony: Bool): None =>
"""
Set the #GtkListBoxRow:activatable property for this row.
"""
  @gtk_list_box_row_set_activatable[None](widget, activatable_pony)

/* set_header unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "header", argtype: "Widget", paramtype: :param, txo: "none"}}
*/

fun set_selectable(selectable_pony: Bool): None =>
"""
Set the #GtkListBoxRow:selectable property for this row.
"""
  @gtk_list_box_row_set_selectable[None](widget, selectable_pony)


```````