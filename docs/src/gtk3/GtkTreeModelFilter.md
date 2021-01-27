```````pony-full-source
/*
   needs: ["None", "I32", "GObjectREF"]
provides: ["GtkTreeModelFilter"]
*/
use "../gobject"
class GtkTreeModelFilter is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'




fun clear_cache(): None =>
"""
This function should almost never be called. It clears the @filter
of any cached iterators that haven’t been reffed with
gtk_tree_model_ref_node(). This might be useful if the child model
being filtered is static (and doesn’t change often) and there has been
a lot of unreffed access to nodes. As a side effect of this function,
all unreffed iters will be invalid.
"""
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
"""
Emits ::row_changed for each row in the child model, which causes
the filter to re-evaluate whether a row is visible or not.
"""
  @gtk_tree_model_filter_refilter[None](widget)

/* set_modify_func unavailable due to typing issues
 {:doh, %{argctype: "", argname: "types", argtype: "", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkTreeModelFilterModifyFunc", argname: "func", argtype: "TreeModelFilterModifyFunc", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "data", argtype: "gpointer", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GDestroyNotify", argname: "destroy", argtype: "GLib.DestroyNotify", paramtype: :param, txo: "none"}}
*/

fun set_visible_column(column_pony: I32): None =>
"""
Sets @column of the child_model to be the column where @filter should
look for visibility information. @columns should be a column of type
%G_TYPE_BOOLEAN, where %TRUE means that a row is visible, and %FALSE
if not.

Note that gtk_tree_model_filter_set_visible_func() or
gtk_tree_model_filter_set_visible_column() can only be called
once for a given filter model.
"""
  @gtk_tree_model_filter_set_visible_column[None](widget, column_pony)

/* set_visible_func unavailable due to typing issues
 {:doh, %{argctype: "GtkTreeModelFilterVisibleFunc", argname: "func", argtype: "TreeModelFilterVisibleFunc", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "data", argtype: "gpointer", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GDestroyNotify", argname: "destroy", argtype: "GLib.DestroyNotify", paramtype: :param, txo: "none"}}
*/


```````