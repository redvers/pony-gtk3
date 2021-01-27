```````pony-full-source
/*
   needs: ["GObjectREF"]
provides: ["GtkWindowGroup"]
*/
use "../gobject"
class GtkWindowGroup is GtkWidget
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


```````