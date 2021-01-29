/*
   needs: ["GObjectREF", "GtkWidget val"]
provides: ["GtkWindowGroup val"]
*/
use "../gobject"
class val GtkWindowGroup is GtkWidget
"""
A #GtkWindowGroup restricts the effect of grabs to windows
in the same group, thereby making window groups almost behave
like separate applications.

A window can be a member in at most one window group at a time.
Windows that have not been explicitly assigned to a group are
implicitly treated like windows of the default window group.

GtkWindowGroup objects are referenced by each window in the group,
so once you have added all windows to a GtkWindowGroup, you can drop
the initial reference to the window group with g_object_unref(). If the
windows in the window group are subsequently destroyed, then they will
be removed from the window group and drop their references on the window
group; when all window have been removed, the window group will be
freed.
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
    widget = @gtk_window_group_new[GObjectREF]() //


  fun pony_NOT_IMPLEMENTED_YET_add_window(): None =>
    """
    Adds a window to a #GtkWindowGroup.

    {:doh, %{argctype: "GtkWindow*", argname: "window", argtype: "Window", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_current_device_grab(): None =>
    """
    Returns the current grab widget for @device, or %NULL if none.

    {:doh, %{argctype: "GdkDevice*", argname: "device", argtype: "Gdk.Device", paramtype: :param, txo: "none"}}
*/
    """

/* Needs conversion code 
Gets the current grab widget of the given group,
see gtk_grab_add().
  fun get_current_grab(): GtkWidget val =>
    @gtk_window_group_get_current_grab[GObjectREF](widget)
*/

  fun pony_NOT_IMPLEMENTED_YET_list_windows(): None =>
    """
    Returns a list of the #GtkWindows that belong to @window_group.

    {:argctype, "GList*"}
{:argname, "rv"}
{:argtype, "GLib.List"}
{:paramtype, :param}
{:txo, "container"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_remove_window(): None =>
    """
    Removes a window from a #GtkWindowGroup.

    {:doh, %{argctype: "GtkWindow*", argname: "window", argtype: "Window", paramtype: :param, txo: "none"}}
*/
    """

