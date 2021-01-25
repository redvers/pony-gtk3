/*
   needs: ["None", "I32", "GObjectREF"]
provides: ["GtkTreeModelFilter"]
*/
class GtkTreeModelFilter is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'




fun clear_cache(): None =>
  @gtk_tree_model_filter_clear_cache[None](widget)

/* convert_child_iter_to_iter unavailable due to typing issues
 {:doh, %{argctype: "GtkTreeIter*", argname: "filter_iter", argtype: "TreeIter", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkTreeIter*", argname: "child_iter", argtype: "TreeIter", paramtype: :param, txo: "none"}}
*/

/* convert_child_path_to_path unavailable due to return typing issues
{:argctype, "GtkTreePath*"}
{:argname, "rv"}
{:argtype, "TreePath"}
{:paramtype, :param}
{:txo, "full"} */

/* convert_iter_to_child_iter unavailable due to typing issues
 {:doh, %{argctype: "GtkTreeIter*", argname: "child_iter", argtype: "TreeIter", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkTreeIter*", argname: "filter_iter", argtype: "TreeIter", paramtype: :param, txo: "none"}}
*/

/* convert_path_to_child_path unavailable due to return typing issues
{:argctype, "GtkTreePath*"}
{:argname, "rv"}
{:argtype, "TreePath"}
{:paramtype, :param}
{:txo, "full"} */

/* get_model unavailable due to return typing issues
{:argctype, "GtkTreeModel*"}
{:argname, "rv"}
{:argtype, "TreeModel"}
{:paramtype, :param}
{:txo, "none"} */

fun refilter(): None =>
  @gtk_tree_model_filter_refilter[None](widget)

/* set_modify_func unavailable due to typing issues
 {:doh, %{argctype: "", argname: "types", argtype: "", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkTreeModelFilterModifyFunc", argname: "func", argtype: "TreeModelFilterModifyFunc", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "data", argtype: "gpointer", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GDestroyNotify", argname: "destroy", argtype: "GLib.DestroyNotify", paramtype: :param, txo: "none"}}
*/

fun set_visible_column(column_pony: I32): None =>
  @gtk_tree_model_filter_set_visible_column[None](widget, column_pony)

/* set_visible_func unavailable due to typing issues
 {:doh, %{argctype: "GtkTreeModelFilterVisibleFunc", argname: "func", argtype: "TreeModelFilterVisibleFunc", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "data", argtype: "gpointer", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GDestroyNotify", argname: "destroy", argtype: "GLib.DestroyNotify", paramtype: :param, txo: "none"}}
*/

