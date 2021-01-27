```````pony-full-source
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
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


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


```````