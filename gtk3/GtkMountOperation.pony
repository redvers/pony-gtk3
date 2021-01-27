/*
   needs: ["Bool", "GObjectREF", "GtkWindow"]
provides: ["GtkMountOperation"]
*/
use "../gobject"
class GtkMountOperation is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create(parent_pony: GtkWindow) =>
    widget = @gtk_mount_operation_new[GObjectREF](parent_pony.gtkwidget()) //


/* get_parent unavailable due to return typing issues
{:argctype, "GtkWindow*"}
{:argname, "rv"}
{:argtype, "Window"}
{:paramtype, :param}
{:txo, "none"} */

/* get_screen unavailable due to return typing issues
{:argctype, "GdkScreen*"}
{:argname, "rv"}
{:argtype, "Gdk.Screen"}
{:paramtype, :param}
{:txo, "none"} */

fun is_showing(): Bool =>
"""
Returns whether the #GtkMountOperation is currently displaying
a window.
"""
  @gtk_mount_operation_is_showing[Bool](widget)

/* set_parent unavailable due to typing issues
 {:doh, %{argctype: "GtkWindow*", argname: "parent", argtype: "Window", paramtype: :param, txo: "none"}}
*/

/* set_screen unavailable due to typing issues
 {:doh, %{argctype: "GdkScreen*", argname: "screen", argtype: "Gdk.Screen", paramtype: :param, txo: "none"}}
*/

