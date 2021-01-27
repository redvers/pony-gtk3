/*
   needs: ["None", "Bool", "GObjectREF"]
provides: ["GtkListBox"]
*/
use "../gobject"
class GtkListBox is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create() =>
    widget = @gtk_list_box_new[GObjectREF]() //


/* bind_model unavailable due to typing issues
 {:doh, %{argctype: "GListModel*", argname: "model", argtype: "Gio.ListModel", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkListBoxCreateWidgetFunc", argname: "create_widget_func", argtype: "ListBoxCreateWidgetFunc", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "user_data", argtype: "gpointer", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GDestroyNotify", argname: "user_data_free_func", argtype: "GLib.DestroyNotify", paramtype: :param, txo: "none"}}
*/

/* drag_highlight_row unavailable due to typing issues
 {:doh, %{argctype: "GtkListBoxRow*", argname: "row", argtype: "ListBoxRow", paramtype: :param, txo: "none"}}
*/

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

/* get_adjustment unavailable due to return typing issues
{:argctype, "GtkAdjustment*"}
{:argname, "rv"}
{:argtype, "Adjustment"}
{:paramtype, :param}
{:txo, "none"} */

/* get_row_at_index unavailable due to return typing issues
{:argctype, "GtkListBoxRow*"}
{:argname, "rv"}
{:argtype, "ListBoxRow"}
{:paramtype, :param}
{:txo, "none"} */

/* get_row_at_y unavailable due to return typing issues
{:argctype, "GtkListBoxRow*"}
{:argname, "rv"}
{:argtype, "ListBoxRow"}
{:paramtype, :param}
{:txo, "none"} */

/* get_selected_row unavailable due to return typing issues
{:argctype, "GtkListBoxRow*"}
{:argname, "rv"}
{:argtype, "ListBoxRow"}
{:paramtype, :param}
{:txo, "none"} */

/* get_selected_rows unavailable due to return typing issues
{:argctype, "GList*"}
{:argname, "rv"}
{:argtype, "GLib.List"}
{:paramtype, :param}
{:txo, "container"} */

/* get_selection_mode unavailable due to return typing issues
{:argctype, "GtkSelectionMode"}
{:argname, "rv"}
{:argtype, "SelectionMode"}
{:paramtype, :param}
{:txo, "none"} */

/* insert unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "child", argtype: "Widget", paramtype: :param, txo: "none"}}
*/

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

/* prepend unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "child", argtype: "Widget", paramtype: :param, txo: "none"}}
*/

fun select_all(): None =>
"""
Select all children of @box, if the selection mode allows it.
"""
  @gtk_list_box_select_all[None](widget)

/* select_row unavailable due to typing issues
 {:doh, %{argctype: "GtkListBoxRow*", argname: "row", argtype: "ListBoxRow", paramtype: :param, txo: "none"}}
*/

/* selected_foreach unavailable due to typing issues
 {:doh, %{argctype: "GtkListBoxForeachFunc", argname: "func", argtype: "ListBoxForeachFunc", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "data", argtype: "gpointer", paramtype: :param, txo: "none"}}
*/

fun set_activate_on_single_click(single_pony: Bool): None =>
"""
If @single is %TRUE, rows will be activated when you click on them,
otherwise you need to double-click.
"""
  @gtk_list_box_set_activate_on_single_click[None](widget, single_pony)

/* set_adjustment unavailable due to typing issues
 {:doh, %{argctype: "GtkAdjustment*", argname: "adjustment", argtype: "Adjustment", paramtype: :param, txo: "none"}}
*/

/* set_filter_func unavailable due to typing issues
 {:doh, %{argctype: "GtkListBoxFilterFunc", argname: "filter_func", argtype: "ListBoxFilterFunc", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "user_data", argtype: "gpointer", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GDestroyNotify", argname: "destroy", argtype: "GLib.DestroyNotify", paramtype: :param, txo: "none"}}
*/

/* set_header_func unavailable due to typing issues
 {:doh, %{argctype: "GtkListBoxUpdateHeaderFunc", argname: "update_header", argtype: "ListBoxUpdateHeaderFunc", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "user_data", argtype: "gpointer", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GDestroyNotify", argname: "destroy", argtype: "GLib.DestroyNotify", paramtype: :param, txo: "none"}}
*/

/* set_placeholder unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "placeholder", argtype: "Widget", paramtype: :param, txo: "none"}}
*/

/* set_selection_mode unavailable due to typing issues
 {:doh, %{argctype: "GtkSelectionMode", argname: "mode", argtype: "SelectionMode", paramtype: :param, txo: "none"}}
*/

/* set_sort_func unavailable due to typing issues
 {:doh, %{argctype: "GtkListBoxSortFunc", argname: "sort_func", argtype: "ListBoxSortFunc", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "user_data", argtype: "gpointer", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GDestroyNotify", argname: "destroy", argtype: "GLib.DestroyNotify", paramtype: :param, txo: "none"}}
*/

fun unselect_all(): None =>
"""
Unselect all children of @box, if the selection mode allows it.
"""
  @gtk_list_box_unselect_all[None](widget)

/* unselect_row unavailable due to typing issues
 {:doh, %{argctype: "GtkListBoxRow*", argname: "row", argtype: "ListBoxRow", paramtype: :param, txo: "none"}}
*/

