```````pony-full-source
/*
   needs: ["Bool", "U32", "None", "GObjectREF"]
provides: ["GtkFlowBox"]
*/
use "../gobject"
class GtkFlowBox is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create() =>
    widget = @gtk_flow_box_new[GObjectREF]() //


/* bind_model unavailable due to typing issues
 {:doh, %{argctype: "GListModel*", argname: "model", argtype: "Gio.ListModel", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkFlowBoxCreateWidgetFunc", argname: "create_widget_func", argtype: "FlowBoxCreateWidgetFunc", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "user_data", argtype: "gpointer", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GDestroyNotify", argname: "user_data_free_func", argtype: "GLib.DestroyNotify", paramtype: :param, txo: "none"}}
*/

fun get_activate_on_single_click(): Bool =>
  @gtk_flow_box_get_activate_on_single_click[Bool](widget)

/* get_child_at_index unavailable due to return typing issues
{:argctype, "GtkFlowBoxChild*"}
{:argname, "rv"}
{:argtype, "FlowBoxChild"}
{:paramtype, :param}
{:txo, "none"} */

/* get_child_at_pos unavailable due to return typing issues
{:argctype, "GtkFlowBoxChild*"}
{:argname, "rv"}
{:argtype, "FlowBoxChild"}
{:paramtype, :param}
{:txo, "none"} */

fun get_column_spacing(): U32 =>
  @gtk_flow_box_get_column_spacing[U32](widget)

fun get_homogeneous(): Bool =>
  @gtk_flow_box_get_homogeneous[Bool](widget)

fun get_max_children_per_line(): U32 =>
  @gtk_flow_box_get_max_children_per_line[U32](widget)

fun get_min_children_per_line(): U32 =>
  @gtk_flow_box_get_min_children_per_line[U32](widget)

fun get_row_spacing(): U32 =>
  @gtk_flow_box_get_row_spacing[U32](widget)

/* get_selected_children unavailable due to return typing issues
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
 {:doh, %{argctype: "GtkWidget*", argname: "widget", argtype: "Widget", paramtype: :param, txo: "none"}}
*/

fun invalidate_filter(): None =>
  @gtk_flow_box_invalidate_filter[None](widget)

fun invalidate_sort(): None =>
  @gtk_flow_box_invalidate_sort[None](widget)

fun select_all(): None =>
  @gtk_flow_box_select_all[None](widget)

/* select_child unavailable due to typing issues
 {:doh, %{argctype: "GtkFlowBoxChild*", argname: "child", argtype: "FlowBoxChild", paramtype: :param, txo: "none"}}
*/

/* selected_foreach unavailable due to typing issues
 {:doh, %{argctype: "GtkFlowBoxForeachFunc", argname: "func", argtype: "FlowBoxForeachFunc", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "data", argtype: "gpointer", paramtype: :param, txo: "none"}}
*/

fun set_activate_on_single_click(single_pony: Bool): None =>
  @gtk_flow_box_set_activate_on_single_click[None](widget, single_pony)

fun set_column_spacing(spacing_pony: U32): None =>
  @gtk_flow_box_set_column_spacing[None](widget, spacing_pony)

/* set_filter_func unavailable due to typing issues
 {:doh, %{argctype: "GtkFlowBoxFilterFunc", argname: "filter_func", argtype: "FlowBoxFilterFunc", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "user_data", argtype: "gpointer", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GDestroyNotify", argname: "destroy", argtype: "GLib.DestroyNotify", paramtype: :param, txo: "none"}}
*/

/* set_hadjustment unavailable due to typing issues
 {:doh, %{argctype: "GtkAdjustment*", argname: "adjustment", argtype: "Adjustment", paramtype: :param, txo: "none"}}
*/

fun set_homogeneous(homogeneous_pony: Bool): None =>
  @gtk_flow_box_set_homogeneous[None](widget, homogeneous_pony)

fun set_max_children_per_line(n_children_pony: U32): None =>
  @gtk_flow_box_set_max_children_per_line[None](widget, n_children_pony)

fun set_min_children_per_line(n_children_pony: U32): None =>
  @gtk_flow_box_set_min_children_per_line[None](widget, n_children_pony)

fun set_row_spacing(spacing_pony: U32): None =>
  @gtk_flow_box_set_row_spacing[None](widget, spacing_pony)

/* set_selection_mode unavailable due to typing issues
 {:doh, %{argctype: "GtkSelectionMode", argname: "mode", argtype: "SelectionMode", paramtype: :param, txo: "none"}}
*/

/* set_sort_func unavailable due to typing issues
 {:doh, %{argctype: "GtkFlowBoxSortFunc", argname: "sort_func", argtype: "FlowBoxSortFunc", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "user_data", argtype: "gpointer", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GDestroyNotify", argname: "destroy", argtype: "GLib.DestroyNotify", paramtype: :param, txo: "none"}}
*/

/* set_vadjustment unavailable due to typing issues
 {:doh, %{argctype: "GtkAdjustment*", argname: "adjustment", argtype: "Adjustment", paramtype: :param, txo: "none"}}
*/

fun unselect_all(): None =>
  @gtk_flow_box_unselect_all[None](widget)

/* unselect_child unavailable due to typing issues
 {:doh, %{argctype: "GtkFlowBoxChild*", argname: "child", argtype: "FlowBoxChild", paramtype: :param, txo: "none"}}
*/


```````