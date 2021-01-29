```````pony-full-source
/*
   needs: ["GObjectREF"]
provides: ["GtkContainerCellAccessible val"]
*/
use "../gobject"
class val GtkContainerCellAccessible is GtkWidget
"""
No documentation provided
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
    widget = @gtk_container_cell_accessible_new[GObjectREF]() //


  fun pony_NOT_IMPLEMENTED_YET_add_child(): None =>
    """
    No provided documentation

    {:doh, %{argctype: "GtkCellAccessible*", argname: "child", argtype: "CellAccessible", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_children(): None =>
    """
    Get a list of children.

    {:argctype, "GList*"}
{:argname, "rv"}
{:argtype, "GLib.List"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_remove_child(): None =>
    """
    No provided documentation

    {:doh, %{argctype: "GtkCellAccessible*", argname: "child", argtype: "CellAccessible", paramtype: :param, txo: "none"}}
*/
    """


```````