/*
   needs: ["GObjectREF"]
provides: ["GtkContainerCellAccessible"]
*/
use "../gobject"
class GtkContainerCellAccessible is GtkWidget
"""
No documentation provided
"""
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget

  new create_from_GtkBuilder(gtkbuilder: GtkBuilder, glade_id: String) =>
    widget = @gtk_builder_get_object[GObjectREF](gtkbuilder.gtkwidget(), glade_id.cstring())

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'

  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF


  new create() =>
    widget = @gtk_container_cell_accessible_new[GObjectREF]() //


/* add_child unavailable due to typing issues
 {:doh, %{argctype: "GtkCellAccessible*", argname: "child", argtype: "CellAccessible", paramtype: :param, txo: "none"}}
*/

/* get_children unavailable due to return typing issues
{:argctype, "GList*"}
{:argname, "rv"}
{:argtype, "GLib.List"}
{:paramtype, :param}
{:txo, "none"} */

/* remove_child unavailable due to typing issues
 {:doh, %{argctype: "GtkCellAccessible*", argname: "child", argtype: "CellAccessible", paramtype: :param, txo: "none"}}
*/

