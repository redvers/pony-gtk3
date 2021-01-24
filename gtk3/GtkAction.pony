/*
   needs: ["None", "Pointer[U8 val] ref", "String", "Bool", "GObjectREF"]
provides: ["GtkAction"]
*/
class GtkAction is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF


  new create(name_pony: String, label_pony: String, tooltip_pony: String, stock_id_pony: String) =>
    widget = @gtk_action_new[GObjectREF](name_pony.cstring(), label_pony.cstring(), tooltip_pony.cstring(), stock_id_pony.cstring()) //


fun activate(): None =>
  @gtk_action_activate[None](widget)

fun block_activate(): None =>
  @gtk_action_block_activate[None](widget)

fun connect_accelerator(): None =>
  @gtk_action_connect_accelerator[None](widget)

/* create_icon unavailable due to return typing issues
{:argctype, "GtkWidget*"}
{:argname, "rv"}
{:argtype, "Widget"}
{:paramtype, :param}
{:txo, "none"} */

/* create_menu unavailable due to return typing issues
{:argctype, "GtkWidget*"}
{:argname, "rv"}
{:argtype, "Widget"}
{:paramtype, :param}
{:txo, "none"} */

/* create_menu_item unavailable due to return typing issues
{:argctype, "GtkWidget*"}
{:argname, "rv"}
{:argtype, "Widget"}
{:paramtype, :param}
{:txo, "none"} */

/* create_tool_item unavailable due to return typing issues
{:argctype, "GtkWidget*"}
{:argname, "rv"}
{:argtype, "Widget"}
{:paramtype, :param}
{:txo, "none"} */

fun disconnect_accelerator(): None =>
  @gtk_action_disconnect_accelerator[None](widget)

/* get_accel_closure unavailable due to return typing issues
{:argctype, "GClosure*"}
{:argname, "rv"}
{:argtype, "GObject.Closure"}
{:paramtype, :param}
{:txo, "none"} */

fun get_accel_path(): String =>
  var cstring_pony: Pointer[U8 val] ref = @gtk_action_get_accel_path[Pointer[U8 val] ref](widget)
var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

fun get_always_show_image(): Bool =>
  @gtk_action_get_always_show_image[Bool](widget)

/* get_gicon unavailable due to return typing issues
{:argctype, "GIcon*"}
{:argname, "rv"}
{:argtype, "Gio.Icon"}
{:paramtype, :param}
{:txo, "none"} */

fun get_icon_name(): String =>
  var cstring_pony: Pointer[U8 val] ref = @gtk_action_get_icon_name[Pointer[U8 val] ref](widget)
var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

fun get_is_important(): Bool =>
  @gtk_action_get_is_important[Bool](widget)

fun get_label(): String =>
  var cstring_pony: Pointer[U8 val] ref = @gtk_action_get_label[Pointer[U8 val] ref](widget)
var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

fun get_name(): String =>
  var cstring_pony: Pointer[U8 val] ref = @gtk_action_get_name[Pointer[U8 val] ref](widget)
var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

/* get_proxies unavailable due to return typing issues
{:argctype, "GSList*"}
{:argname, "rv"}
{:argtype, "GLib.SList"}
{:paramtype, :param}
{:txo, "none"} */

fun get_sensitive(): Bool =>
  @gtk_action_get_sensitive[Bool](widget)

fun get_short_label(): String =>
  var cstring_pony: Pointer[U8 val] ref = @gtk_action_get_short_label[Pointer[U8 val] ref](widget)
var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

fun get_stock_id(): String =>
  var cstring_pony: Pointer[U8 val] ref = @gtk_action_get_stock_id[Pointer[U8 val] ref](widget)
var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

fun get_tooltip(): String =>
  var cstring_pony: Pointer[U8 val] ref = @gtk_action_get_tooltip[Pointer[U8 val] ref](widget)
var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

fun get_visible(): Bool =>
  @gtk_action_get_visible[Bool](widget)

fun get_visible_horizontal(): Bool =>
  @gtk_action_get_visible_horizontal[Bool](widget)

fun get_visible_vertical(): Bool =>
  @gtk_action_get_visible_vertical[Bool](widget)

fun is_sensitive(): Bool =>
  @gtk_action_is_sensitive[Bool](widget)

fun is_visible(): Bool =>
  @gtk_action_is_visible[Bool](widget)

/* set_accel_group unavailable due to typing issues
 {:doh, %{argctype: "GtkAccelGroup*", argname: "accel_group", argtype: "AccelGroup", paramtype: :param, txo: "none"}}
*/

/* set_accel_path unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "accel_path", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

fun set_always_show_image(always_show_pony: Bool): None =>
  @gtk_action_set_always_show_image[None](widget, always_show_pony)

/* set_gicon unavailable due to typing issues
 {:doh, %{argctype: "GIcon*", argname: "icon", argtype: "Gio.Icon", paramtype: :param, txo: "none"}}
*/

/* set_icon_name unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "icon_name", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

fun set_is_important(is_important_pony: Bool): None =>
  @gtk_action_set_is_important[None](widget, is_important_pony)

/* set_label unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "label", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

fun set_sensitive(sensitive_pony: Bool): None =>
  @gtk_action_set_sensitive[None](widget, sensitive_pony)

/* set_short_label unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "short_label", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* set_stock_id unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "stock_id", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* set_tooltip unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "tooltip", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

fun set_visible(visible_pony: Bool): None =>
  @gtk_action_set_visible[None](widget, visible_pony)

fun set_visible_horizontal(visible_horizontal_pony: Bool): None =>
  @gtk_action_set_visible_horizontal[None](widget, visible_horizontal_pony)

fun set_visible_vertical(visible_vertical_pony: Bool): None =>
  @gtk_action_set_visible_vertical[None](widget, visible_vertical_pony)

fun unblock_activate(): None =>
  @gtk_action_unblock_activate[None](widget)

