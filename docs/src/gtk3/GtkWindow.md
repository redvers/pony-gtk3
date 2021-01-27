```````pony-full-source
/*
   needs: ["Bool", "None", "Pointer[U8 val] ref", "String", "I32", "GObjectREF", "GtkWindowType"]
provides: ["GtkWindow"]
*/
use "../gobject"
class GtkWindow is GtkContainer
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create(gtype_pony: GtkWindowType) =>
    widget = @gtk_window_new[GObjectREF](gtype_pony.apply()) //


fun activate_default(): Bool =>
  @gtk_window_activate_default[Bool](widget)

fun activate_focus(): Bool =>
  @gtk_window_activate_focus[Bool](widget)

/* activate_key unavailable due to typing issues
 {:doh, %{argctype: "GdkEventKey*", argname: "event", argtype: "Gdk.EventKey", paramtype: :param, txo: "none"}}
*/

/* add_accel_group unavailable due to typing issues
 {:doh, %{argctype: "GtkAccelGroup*", argname: "accel_group", argtype: "AccelGroup", paramtype: :param, txo: "none"}}
*/

/* add_mnemonic unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "target", argtype: "Widget", paramtype: :param, txo: "none"}}
*/

/* begin_move_drag unavailable due to typing issues
 {:doh, %{argctype: "guint32", argname: "timestamp", argtype: "guint32", paramtype: :param, txo: "none"}}
*/

/* begin_resize_drag unavailable due to typing issues
 {:doh, %{argctype: "GdkWindowEdge", argname: "edge", argtype: "Gdk.WindowEdge", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "guint32", argname: "timestamp", argtype: "guint32", paramtype: :param, txo: "none"}}
*/

fun close(): None =>
  @gtk_window_close[None](widget)

fun deiconify(): None =>
  @gtk_window_deiconify[None](widget)

fun fullscreen(): None =>
  @gtk_window_fullscreen[None](widget)

/* fullscreen_on_monitor unavailable due to typing issues
 {:doh, %{argctype: "GdkScreen*", argname: "screen", argtype: "Gdk.Screen", paramtype: :param, txo: "none"}}
*/

fun get_accept_focus(): Bool =>
  @gtk_window_get_accept_focus[Bool](widget)

/* get_application unavailable due to return typing issues
{:argctype, "GtkApplication*"}
{:argname, "rv"}
{:argtype, "Application"}
{:paramtype, :param}
{:txo, "none"} */

/* get_attached_to unavailable due to return typing issues
{:argctype, "GtkWidget*"}
{:argname, "rv"}
{:argtype, "Widget"}
{:paramtype, :param}
{:txo, "none"} */

fun get_decorated(): Bool =>
  @gtk_window_get_decorated[Bool](widget)

/* get_default_size unavailable due to typing issues
 {:doh, %{argctype: "gint*", argname: "width", argtype: "gint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gint*", argname: "height", argtype: "gint", paramtype: :param, txo: "full"}}
*/

/* get_default_widget unavailable due to return typing issues
{:argctype, "GtkWidget*"}
{:argname, "rv"}
{:argtype, "Widget"}
{:paramtype, :param}
{:txo, "none"} */

fun get_deletable(): Bool =>
  @gtk_window_get_deletable[Bool](widget)

fun get_destroy_with_parent(): Bool =>
  @gtk_window_get_destroy_with_parent[Bool](widget)

/* get_focus unavailable due to return typing issues
{:argctype, "GtkWidget*"}
{:argname, "rv"}
{:argtype, "Widget"}
{:paramtype, :param}
{:txo, "none"} */

fun get_focus_on_map(): Bool =>
  @gtk_window_get_focus_on_map[Bool](widget)

fun get_focus_visible(): Bool =>
  @gtk_window_get_focus_visible[Bool](widget)

/* get_gravity unavailable due to return typing issues
{:argctype, "GdkGravity"}
{:argname, "rv"}
{:argtype, "Gdk.Gravity"}
{:paramtype, :param}
{:txo, "none"} */

/* get_group unavailable due to return typing issues
{:argctype, "GtkWindowGroup*"}
{:argname, "rv"}
{:argtype, "WindowGroup"}
{:paramtype, :param}
{:txo, "none"} */

fun get_has_resize_grip(): Bool =>
  @gtk_window_get_has_resize_grip[Bool](widget)

fun get_hide_titlebar_when_maximized(): Bool =>
  @gtk_window_get_hide_titlebar_when_maximized[Bool](widget)

/* get_icon unavailable due to return typing issues
{:argctype, "GdkPixbuf*"}
{:argname, "rv"}
{:argtype, "GdkPixbuf.Pixbuf"}
{:paramtype, :param}
{:txo, "none"} */

/* get_icon_list unavailable due to return typing issues
{:argctype, "GList*"}
{:argname, "rv"}
{:argtype, "GLib.List"}
{:paramtype, :param}
{:txo, "container"} */

fun get_icon_name(): String =>
  var cstring_pony: Pointer[U8 val] ref = @gtk_window_get_icon_name[Pointer[U8 val] ref](widget)
var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

/* get_mnemonic_modifier unavailable due to return typing issues
{:argctype, "GdkModifierType"}
{:argname, "rv"}
{:argtype, "Gdk.ModifierType"}
{:paramtype, :param}
{:txo, "none"} */

fun get_mnemonics_visible(): Bool =>
  @gtk_window_get_mnemonics_visible[Bool](widget)

fun get_modal(): Bool =>
  @gtk_window_get_modal[Bool](widget)

/* get_opacity unavailable due to return typing issues
{:argctype, "gdouble"}
{:argname, "rv"}
{:argtype, "gdouble"}
{:paramtype, :param}
{:txo, "none"} */

/* get_position unavailable due to typing issues
 {:doh, %{argctype: "gint*", argname: "root_x", argtype: "gint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gint*", argname: "root_y", argtype: "gint", paramtype: :param, txo: "full"}}
*/

fun get_resizable(): Bool =>
  @gtk_window_get_resizable[Bool](widget)

/* get_resize_grip_area unavailable due to typing issues
 {:doh, %{argctype: "GdkRectangle*", argname: "rect", argtype: "Gdk.Rectangle", paramtype: :param, txo: "none"}}
*/

fun get_role(): String =>
  var cstring_pony: Pointer[U8 val] ref = @gtk_window_get_role[Pointer[U8 val] ref](widget)
var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

/* get_screen unavailable due to return typing issues
{:argctype, "GdkScreen*"}
{:argname, "rv"}
{:argtype, "Gdk.Screen"}
{:paramtype, :param}
{:txo, "none"} */

/* get_size unavailable due to typing issues
 {:doh, %{argctype: "gint*", argname: "width", argtype: "gint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gint*", argname: "height", argtype: "gint", paramtype: :param, txo: "full"}}
*/

fun get_skip_pager_hint(): Bool =>
  @gtk_window_get_skip_pager_hint[Bool](widget)

fun get_skip_taskbar_hint(): Bool =>
  @gtk_window_get_skip_taskbar_hint[Bool](widget)

fun get_title(): String =>
  var cstring_pony: Pointer[U8 val] ref = @gtk_window_get_title[Pointer[U8 val] ref](widget)
var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

/* get_titlebar unavailable due to return typing issues
{:argctype, "GtkWidget*"}
{:argname, "rv"}
{:argtype, "Widget"}
{:paramtype, :param}
{:txo, "none"} */

/* get_transient_for unavailable due to return typing issues
{:argctype, "GtkWindow*"}
{:argname, "rv"}
{:argtype, "Window"}
{:paramtype, :param}
{:txo, "none"} */

/* get_type_hint unavailable due to return typing issues
{:argctype, "GdkWindowTypeHint"}
{:argname, "rv"}
{:argtype, "Gdk.WindowTypeHint"}
{:paramtype, :param}
{:txo, "none"} */

fun get_urgency_hint(): Bool =>
  @gtk_window_get_urgency_hint[Bool](widget)

/* get_window_type unavailable due to return typing issues
{:argctype, "GtkWindowType"}
{:argname, "rv"}
{:argtype, "WindowType"}
{:paramtype, :param}
{:txo, "none"} */

fun has_group(): Bool =>
  @gtk_window_has_group[Bool](widget)

fun has_toplevel_focus(): Bool =>
  @gtk_window_has_toplevel_focus[Bool](widget)

fun iconify(): None =>
  @gtk_window_iconify[None](widget)

fun is_active(): Bool =>
  @gtk_window_is_active[Bool](widget)

fun is_maximized(): Bool =>
  @gtk_window_is_maximized[Bool](widget)

fun maximize(): None =>
  @gtk_window_maximize[None](widget)

/* mnemonic_activate unavailable due to typing issues
 {:doh, %{argctype: "GdkModifierType", argname: "modifier", argtype: "Gdk.ModifierType", paramtype: :param, txo: "none"}}
*/

fun move(x_pony: I32, y_pony: I32): None =>
  @gtk_window_move[None](widget, x_pony, y_pony)

/* parse_geometry unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "geometry", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

fun present(): None =>
  @gtk_window_present[None](widget)

/* present_with_time unavailable due to typing issues
 {:doh, %{argctype: "guint32", argname: "timestamp", argtype: "guint32", paramtype: :param, txo: "none"}}
*/

/* propagate_key_event unavailable due to typing issues
 {:doh, %{argctype: "GdkEventKey*", argname: "event", argtype: "Gdk.EventKey", paramtype: :param, txo: "none"}}
*/

/* remove_accel_group unavailable due to typing issues
 {:doh, %{argctype: "GtkAccelGroup*", argname: "accel_group", argtype: "AccelGroup", paramtype: :param, txo: "none"}}
*/

/* remove_mnemonic unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "target", argtype: "Widget", paramtype: :param, txo: "none"}}
*/

fun reshow_with_initial_size(): None =>
  @gtk_window_reshow_with_initial_size[None](widget)

fun resize(width_pony: I32, height_pony: I32): None =>
  @gtk_window_resize[None](widget, width_pony, height_pony)

fun resize_grip_is_visible(): Bool =>
  @gtk_window_resize_grip_is_visible[Bool](widget)

fun resize_to_geometry(width_pony: I32, height_pony: I32): None =>
  @gtk_window_resize_to_geometry[None](widget, width_pony, height_pony)

fun set_accept_focus(setting_pony: Bool): None =>
  @gtk_window_set_accept_focus[None](widget, setting_pony)

/* set_application unavailable due to typing issues
 {:doh, %{argctype: "GtkApplication*", argname: "application", argtype: "Application", paramtype: :param, txo: "none"}}
*/

/* set_attached_to unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "attach_widget", argtype: "Widget", paramtype: :param, txo: "none"}}
*/

fun set_decorated(setting_pony: Bool): None =>
  @gtk_window_set_decorated[None](widget, setting_pony)

/* set_default unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "default_widget", argtype: "Widget", paramtype: :param, txo: "none"}}
*/

fun set_default_geometry(width_pony: I32, height_pony: I32): None =>
  @gtk_window_set_default_geometry[None](widget, width_pony, height_pony)

fun set_default_size(width_pony: I32, height_pony: I32): None =>
  @gtk_window_set_default_size[None](widget, width_pony, height_pony)

fun set_deletable(setting_pony: Bool): None =>
  @gtk_window_set_deletable[None](widget, setting_pony)

fun set_destroy_with_parent(setting_pony: Bool): None =>
  @gtk_window_set_destroy_with_parent[None](widget, setting_pony)

/* set_focus unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "focus", argtype: "Widget", paramtype: :param, txo: "none"}}
*/

fun set_focus_on_map(setting_pony: Bool): None =>
  @gtk_window_set_focus_on_map[None](widget, setting_pony)

fun set_focus_visible(setting_pony: Bool): None =>
  @gtk_window_set_focus_visible[None](widget, setting_pony)

/* set_geometry_hints unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "geometry_widget", argtype: "Widget", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkGeometry*", argname: "geometry", argtype: "Gdk.Geometry", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkWindowHints", argname: "geom_mask", argtype: "Gdk.WindowHints", paramtype: :param, txo: "none"}}
*/

/* set_gravity unavailable due to typing issues
 {:doh, %{argctype: "GdkGravity", argname: "gravity", argtype: "Gdk.Gravity", paramtype: :param, txo: "none"}}
*/

fun set_has_resize_grip(value_pony: Bool): None =>
  @gtk_window_set_has_resize_grip[None](widget, value_pony)

fun set_has_user_ref_count(setting_pony: Bool): None =>
  @gtk_window_set_has_user_ref_count[None](widget, setting_pony)

fun set_hide_titlebar_when_maximized(setting_pony: Bool): None =>
  @gtk_window_set_hide_titlebar_when_maximized[None](widget, setting_pony)

/* set_icon unavailable due to typing issues
 {:doh, %{argctype: "GdkPixbuf*", argname: "icon", argtype: "GdkPixbuf.Pixbuf", paramtype: :param, txo: "none"}}
*/

/* set_icon_from_file unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "filename", argtype: "filename", paramtype: :param, txo: "none"}}
*/

/* set_icon_list unavailable due to typing issues
 {:doh, %{argctype: "GList*", argname: "list", argtype: "GLib.List", paramtype: :param, txo: "none"}}
*/

/* set_icon_name unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "name", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

fun set_keep_above(setting_pony: Bool): None =>
  @gtk_window_set_keep_above[None](widget, setting_pony)

fun set_keep_below(setting_pony: Bool): None =>
  @gtk_window_set_keep_below[None](widget, setting_pony)

/* set_mnemonic_modifier unavailable due to typing issues
 {:doh, %{argctype: "GdkModifierType", argname: "modifier", argtype: "Gdk.ModifierType", paramtype: :param, txo: "none"}}
*/

fun set_mnemonics_visible(setting_pony: Bool): None =>
  @gtk_window_set_mnemonics_visible[None](widget, setting_pony)

fun set_modal(modal_pony: Bool): None =>
  @gtk_window_set_modal[None](widget, modal_pony)

/* set_opacity unavailable due to typing issues
 {:doh, %{argctype: "gdouble", argname: "opacity", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/

/* set_position unavailable due to typing issues
 {:doh, %{argctype: "GtkWindowPosition", argname: "position", argtype: "WindowPosition", paramtype: :param, txo: "none"}}
*/

fun set_resizable(resizable_pony: Bool): None =>
  @gtk_window_set_resizable[None](widget, resizable_pony)

/* set_role unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "role", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* set_screen unavailable due to typing issues
 {:doh, %{argctype: "GdkScreen*", argname: "screen", argtype: "Gdk.Screen", paramtype: :param, txo: "none"}}
*/

fun set_skip_pager_hint(setting_pony: Bool): None =>
  @gtk_window_set_skip_pager_hint[None](widget, setting_pony)

fun set_skip_taskbar_hint(setting_pony: Bool): None =>
  @gtk_window_set_skip_taskbar_hint[None](widget, setting_pony)

/* set_startup_id unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "startup_id", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* set_title unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "title", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* set_titlebar unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "titlebar", argtype: "Widget", paramtype: :param, txo: "none"}}
*/

/* set_transient_for unavailable due to typing issues
 {:doh, %{argctype: "GtkWindow*", argname: "parent", argtype: "Window", paramtype: :param, txo: "none"}}
*/

/* set_type_hint unavailable due to typing issues
 {:doh, %{argctype: "GdkWindowTypeHint", argname: "hint", argtype: "Gdk.WindowTypeHint", paramtype: :param, txo: "none"}}
*/

fun set_urgency_hint(setting_pony: Bool): None =>
  @gtk_window_set_urgency_hint[None](widget, setting_pony)

/* set_wmclass unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "wmclass_name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "wmclass_class", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

fun stick(): None =>
  @gtk_window_stick[None](widget)

fun unfullscreen(): None =>
  @gtk_window_unfullscreen[None](widget)

fun unmaximize(): None =>
  @gtk_window_unmaximize[None](widget)

fun unstick(): None =>
  @gtk_window_unstick[None](widget)


```````