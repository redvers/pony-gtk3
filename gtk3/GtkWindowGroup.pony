/*
   needs: ["GObjectREF"]
provides: ["GtkWindowGroup"]
*/
use "../gobject"
class GtkWindowGroup is GtkWidget
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
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create() =>
    widget = @gtk_window_group_new[GObjectREF]() //


/* add_window unavailable due to typing issues
 {:doh, %{argctype: "GtkWindow*", argname: "window", argtype: "Window", paramtype: :param, txo: "none"}}
*/

/* get_current_device_grab unavailable due to return typing issues
{:argctype, "GtkWidget*"}
{:argname, "rv"}
{:argtype, "Widget"}
{:paramtype, :param}
{:txo, "none"} */

/* get_current_grab unavailable due to return typing issues
{:argctype, "GtkWidget*"}
{:argname, "rv"}
{:argtype, "Widget"}
{:paramtype, :param}
{:txo, "none"} */

/* list_windows unavailable due to return typing issues
{:argctype, "GList*"}
{:argname, "rv"}
{:argtype, "GLib.List"}
{:paramtype, :param}
{:txo, "container"} */

/* remove_window unavailable due to typing issues
 {:doh, %{argctype: "GtkWindow*", argname: "window", argtype: "Window", paramtype: :param, txo: "none"}}
*/

