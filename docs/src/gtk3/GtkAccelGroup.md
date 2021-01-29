```````pony-full-source
/*
   needs: ["Bool", "None", "GObjectREF"]
provides: ["GtkAccelGroup val"]
*/
use "../gobject"
class val GtkAccelGroup is GtkWidget
"""
A #GtkAccelGroup represents a group of keyboard accelerators,
typically attached to a toplevel #GtkWindow (with
gtk_window_add_accel_group()). Usually you won’t need to create a
#GtkAccelGroup directly; instead, when using #GtkUIManager, GTK+
automatically sets up the accelerators for your menus in the ui
manager’s #GtkAccelGroup.

Note that “accelerators” are different from
“mnemonics”. Accelerators are shortcuts for
activating a menu item; they appear alongside the menu item they’re a
shortcut for. For example “Ctrl+Q” might appear alongside the “Quit”
menu item. Mnemonics are shortcuts for GUI elements such as text
entries or buttons; they appear as underlined characters. See
gtk_label_new_with_mnemonic(). Menu items can have both accelerators
and mnemonics, of course.
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
    widget = @gtk_accel_group_new[GObjectREF]() //


  fun pony_NOT_IMPLEMENTED_YET_activate(): None =>
    """
    Finds the first accelerator in @accel_group that matches
@accel_key and @accel_mods, and activates it.

    {:doh, %{argctype: "GQuark", argname: "accel_quark", argtype: "GLib.Quark", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GObject*", argname: "acceleratable", argtype: "GObject.Object", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkModifierType", argname: "accel_mods", argtype: "Gdk.ModifierType", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_connect(): None =>
    """
    Installs an accelerator in this group. When @accel_group is being
activated in response to a call to gtk_accel_groups_activate(),
@closure will be invoked if the @accel_key and @accel_mods from
gtk_accel_groups_activate() match those of this connection.

The signature used for the @closure is that of #GtkAccelGroupActivate.

Note that, due to implementation details, a single closure can
only be connected to one accelerator group.

    {:doh, %{argctype: "GdkModifierType", argname: "accel_mods", argtype: "Gdk.ModifierType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkAccelFlags", argname: "accel_flags", argtype: "AccelFlags", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GClosure*", argname: "closure", argtype: "GObject.Closure", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_connect_by_path(): None =>
    """
    Installs an accelerator in this group, using an accelerator path
to look up the appropriate key and modifiers (see
gtk_accel_map_add_entry()). When @accel_group is being activated
in response to a call to gtk_accel_groups_activate(), @closure will
be invoked if the @accel_key and @accel_mods from
gtk_accel_groups_activate() match the key and modifiers for the path.

The signature used for the @closure is that of #GtkAccelGroupActivate.

Note that @accel_path string will be stored in a #GQuark. Therefore,
if you pass a static string, you can save some memory by interning it
first with g_intern_static_string().

    {:doh, %{argctype: "const gchar*", argname: "accel_path", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GClosure*", argname: "closure", argtype: "GObject.Closure", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_disconnect(): None =>
    """
    Removes an accelerator previously installed through
gtk_accel_group_connect().

Since 2.20 @closure can be %NULL.

    {:doh, %{argctype: "GClosure*", argname: "closure", argtype: "GObject.Closure", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_disconnect_key(): None =>
    """
    Removes an accelerator previously installed through
gtk_accel_group_connect().

    {:doh, %{argctype: "GdkModifierType", argname: "accel_mods", argtype: "Gdk.ModifierType", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_find(): None =>
    """
    Finds the first entry in an accelerator group for which
@find_func returns %TRUE and returns its #GtkAccelKey.

    {:argctype, "GtkAccelKey*"}
{:argname, "rv"}
{:argtype, "AccelKey"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

fun get_is_locked(): Bool =>
"""
Locks are added and removed using gtk_accel_group_lock() and
gtk_accel_group_unlock().
"""
  @gtk_accel_group_get_is_locked[Bool](widget)

  fun pony_NOT_IMPLEMENTED_YET_get_modifier_mask(): None =>
    """
    Gets a #GdkModifierType representing the mask for this
@accel_group. For example, #GDK_CONTROL_MASK, #GDK_SHIFT_MASK, etc.

    {:argctype, "GdkModifierType"}
{:argname, "rv"}
{:argtype, "Gdk.ModifierType"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

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

  fun pony_NOT_IMPLEMENTED_YET_query(): None =>
    """
    Queries an accelerator group for all entries matching @accel_key
and @accel_mods.

    {:argctype, ""}
{:argname, "rv"}
{:argtype, ""}
{:paramtype, :param}
{:txo, "none"}
*/
    """

fun unlock(): None =>
"""
Undoes the last call to gtk_accel_group_lock() on this @accel_group.
"""
  @gtk_accel_group_unlock[None](widget)


```````