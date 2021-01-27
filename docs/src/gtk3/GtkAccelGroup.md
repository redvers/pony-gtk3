```````pony-full-source
/*
   needs: ["Bool", "None", "GObjectREF"]
provides: ["GtkAccelGroup"]
*/
use "../gobject"
class GtkAccelGroup is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create() =>
    widget = @gtk_accel_group_new[GObjectREF]() //


/* activate unavailable due to typing issues
 {:doh, %{argctype: "GQuark", argname: "accel_quark", argtype: "GLib.Quark", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GObject*", argname: "acceleratable", argtype: "GObject.Object", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkModifierType", argname: "accel_mods", argtype: "Gdk.ModifierType", paramtype: :param, txo: "none"}}
*/

/* connect unavailable due to typing issues
 {:doh, %{argctype: "GdkModifierType", argname: "accel_mods", argtype: "Gdk.ModifierType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkAccelFlags", argname: "accel_flags", argtype: "AccelFlags", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GClosure*", argname: "closure", argtype: "GObject.Closure", paramtype: :param, txo: "none"}}
*/

/* connect_by_path unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "accel_path", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GClosure*", argname: "closure", argtype: "GObject.Closure", paramtype: :param, txo: "none"}}
*/

/* disconnect unavailable due to typing issues
 {:doh, %{argctype: "GClosure*", argname: "closure", argtype: "GObject.Closure", paramtype: :param, txo: "none"}}
*/

/* disconnect_key unavailable due to typing issues
 {:doh, %{argctype: "GdkModifierType", argname: "accel_mods", argtype: "Gdk.ModifierType", paramtype: :param, txo: "none"}}
*/

/* find unavailable due to return typing issues
{:argctype, "GtkAccelKey*"}
{:argname, "rv"}
{:argtype, "AccelKey"}
{:paramtype, :param}
{:txo, "none"} */

fun get_is_locked(): Bool =>
"""
Locks are added and removed using gtk_accel_group_lock() and
gtk_accel_group_unlock().
"""
  @gtk_accel_group_get_is_locked[Bool](widget)

/* get_modifier_mask unavailable due to return typing issues
{:argctype, "GdkModifierType"}
{:argname, "rv"}
{:argtype, "Gdk.ModifierType"}
{:paramtype, :param}
{:txo, "none"} */

fun lock(): None =>
"""
Locks the given accelerator group.

Locking an acelerator group prevents the accelerators contained
within it to be changed during runtime. Refer to
gtk_accel_map_change_entry() about runtime accelerator changes.

If called more than once, @accel_group remains locked until
gtk_accel_group_unlock() has been called an equivalent number
of times.
"""
  @gtk_accel_group_lock[None](widget)

/* query unavailable due to return typing issues
{:argctype, ""}
{:argname, "rv"}
{:argtype, ""}
{:paramtype, :param}
{:txo, "none"} */

fun unlock(): None =>
"""
Undoes the last call to gtk_accel_group_lock() on this @accel_group.
"""
  @gtk_accel_group_unlock[None](widget)


```````