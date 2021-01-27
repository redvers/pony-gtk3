```````pony-full-source
/*
   needs: ["I32", "None", "GObjectREF"]
provides: ["GtkTreeSelection"]
*/
use "../gobject"
class GtkTreeSelection is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'




fun count_selected_rows(): I32 =>
"""
Returns the number of rows that have been selected in @tree.
"""
  @gtk_tree_selection_count_selected_rows[I32](widget)

/* get_mode unavailable due to return typing issues
{:argctype, "GtkSelectionMode"}
{:argname, "rv"}
{:argtype, "SelectionMode"}
{:paramtype, :param}
{:txo, "none"} */

/* get_select_function unavailable due to return typing issues
{:argctype, "GtkTreeSelectionFunc"}
{:argname, "rv"}
{:argtype, "TreeSelectionFunc"}
{:paramtype, :param}
{:txo, "notpresent"} */

/* get_selected unavailable due to typing issues
 {:doh, %{argctype: "GtkTreeModel**", argname: "model", argtype: "TreeModel", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkTreeIter*", argname: "iter", argtype: "TreeIter", paramtype: :param, txo: "none"}}
*/

/* get_selected_rows unavailable due to return typing issues
{:argctype, "GList*"}
{:argname, "rv"}
{:argtype, "GLib.List"}
{:paramtype, :param}
{:txo, "full"} */

/* get_tree_view unavailable due to return typing issues
{:argctype, "GtkTreeView*"}
{:argname, "rv"}
{:argtype, "TreeView"}
{:paramtype, :param}
{:txo, "none"} */

/* get_user_data unavailable due to return typing issues
{:argctype, "gpointer"}
{:argname, "rv"}
{:argtype, "gpointer"}
{:paramtype, :param}
{:txo, "none"} */

/* iter_is_selected unavailable due to typing issues
 {:doh, %{argctype: "GtkTreeIter*", argname: "iter", argtype: "TreeIter", paramtype: :param, txo: "none"}}
*/

/* path_is_selected unavailable due to typing issues
 {:doh, %{argctype: "GtkTreePath*", argname: "path", argtype: "TreePath", paramtype: :param, txo: "none"}}
*/

fun select_all(): None =>
"""
Selects all the nodes. @selection must be set to #GTK_SELECTION_MULTIPLE
mode.
"""
  @gtk_tree_selection_select_all[None](widget)

/* select_iter unavailable due to typing issues
 {:doh, %{argctype: "GtkTreeIter*", argname: "iter", argtype: "TreeIter", paramtype: :param, txo: "none"}}
*/

/* select_path unavailable due to typing issues
 {:doh, %{argctype: "GtkTreePath*", argname: "path", argtype: "TreePath", paramtype: :param, txo: "none"}}
*/

/* select_range unavailable due to typing issues
 {:doh, %{argctype: "GtkTreePath*", argname: "start_path", argtype: "TreePath", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkTreePath*", argname: "end_path", argtype: "TreePath", paramtype: :param, txo: "none"}}
*/

/* selected_foreach unavailable due to typing issues
 {:doh, %{argctype: "GtkTreeSelectionForeachFunc", argname: "func", argtype: "TreeSelectionForeachFunc", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "data", argtype: "gpointer", paramtype: :param, txo: "none"}}
*/

/* set_mode unavailable due to typing issues
 {:doh, %{argctype: "GtkSelectionMode", argname: "gtype", argtype: "SelectionMode", paramtype: :param, txo: "none"}}
*/

/* set_select_function unavailable due to typing issues
 {:doh, %{argctype: "GtkTreeSelectionFunc", argname: "func", argtype: "TreeSelectionFunc", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "data", argtype: "gpointer", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GDestroyNotify", argname: "destroy", argtype: "GLib.DestroyNotify", paramtype: :param, txo: "none"}}
*/

fun unselect_all(): None =>
"""
Unselects all the nodes.
"""
  @gtk_tree_selection_unselect_all[None](widget)

/* unselect_iter unavailable due to typing issues
 {:doh, %{argctype: "GtkTreeIter*", argname: "iter", argtype: "TreeIter", paramtype: :param, txo: "none"}}
*/

/* unselect_path unavailable due to typing issues
 {:doh, %{argctype: "GtkTreePath*", argname: "path", argtype: "TreePath", paramtype: :param, txo: "none"}}
*/

/* unselect_range unavailable due to typing issues
 {:doh, %{argctype: "GtkTreePath*", argname: "start_path", argtype: "TreePath", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkTreePath*", argname: "end_path", argtype: "TreePath", paramtype: :param, txo: "none"}}
*/


```````