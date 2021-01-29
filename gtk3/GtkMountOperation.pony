/*
   needs: ["Bool", "GObjectREF", "GtkWindow val"]
provides: ["GtkMountOperation val"]
*/
use "../gobject"
class val GtkMountOperation is GtkWidget
"""
This should not be accessed directly. Use the accessor functions below.
"""
  var widget: GObjectREF val

  fun gtkwidget(): GObjectREF val => widget

  new val create_from_GtkBuilder(gtkbuilder: GtkBuilder, glade_id: String) =>
    widget = @gtk_builder_get_object[GObjectREF](gtkbuilder.gtkwidget(), glade_id.cstring())

  new val create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'

  new val never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF


  new val create(parent_pony: GtkWindow val) =>
    widget = @gtk_mount_operation_new[GObjectREF](parent_pony.gtkwidget()) //


/* get_parent unavailable due to return typing issues
Gets the transient parent used by the #GtkMountOperation
{:argctype, "GtkWindow*"}
{:argname, "rv"}
{:argtype, "Window"}
{:paramtype, :param}
{:txo, "none"} */

/* get_screen unavailable due to return typing issues
Gets the screen on which windows of the #GtkMountOperation
will be shown.
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
Sets the transient parent for windows shown by the
#GtkMountOperation.
{:doh, %{argctype: "GtkWindow*", argname: "parent", argtype: "Window", paramtype: :param, txo: "none"}}
*/

/* set_screen unavailable due to typing issues
Sets the screen to show windows of the #GtkMountOperation on.
{:doh, %{argctype: "GdkScreen*", argname: "screen", argtype: "Gdk.Screen", paramtype: :param, txo: "none"}}
*/

