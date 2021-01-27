```````pony-full-source
/*
   needs: ["None", "Pointer[U8 val] ref", "String", "Bool", "GObjectREF"]
provides: ["GtkAction"]
*/
use "../gobject"
class GtkAction is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create(name_pony: String, label_pony: String, tooltip_pony: String, stock_id_pony: String) =>
    widget = @gtk_action_new[GObjectREF](name_pony.cstring(), label_pony.cstring(), tooltip_pony.cstring(), stock_id_pony.cstring()) //


fun activate(): None =>
"""
Emits the “activate” signal on the specified action, if it isn't
insensitive. This gets called by the proxy widgets when they get
activated.

It can also be used to manually activate an action.
"""
  @gtk_action_activate[None](widget)

fun block_activate(): None =>
"""
Disable activation signals from the action

This is needed when updating the state of your proxy
#GtkActivatable widget could result in calling gtk_action_activate(),
this is a convenience function to avoid recursing in those
cases (updating toggle state for instance).
"""
  @gtk_action_block_activate[None](widget)

fun connect_accelerator(): None =>
"""
Installs the accelerator for @action if @action has an
accel path and group. See gtk_action_set_accel_path() and
gtk_action_set_accel_group()

Since multiple proxies may independently trigger the installation
of the accelerator, the @action counts the number of times this
function has been called and doesn’t remove the accelerator until
gtk_action_disconnect_accelerator() has been called as many times.
"""
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
"""
Undoes the effect of one call to gtk_action_connect_accelerator().
"""
  @gtk_action_disconnect_accelerator[None](widget)

/* get_accel_closure unavailable due to return typing issues
{:argctype, "GClosure*"}
{:argname, "rv"}
{:argtype, "GObject.Closure"}
{:paramtype, :param}
{:txo, "none"} */

fun get_accel_path(): String =>
"""
Returns the accel path for this action.
"""
  var cstring_pony: Pointer[U8 val] ref = @gtk_action_get_accel_path[Pointer[U8 val] ref](widget)
var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

fun get_always_show_image(): Bool =>
"""
Returns whether @action's menu item proxies will always
show their image, if available.
"""
  @gtk_action_get_always_show_image[Bool](widget)

/* get_gicon unavailable due to return typing issues
{:argctype, "GIcon*"}
{:argname, "rv"}
{:argtype, "Gio.Icon"}
{:paramtype, :param}
{:txo, "none"} */

fun get_icon_name(): String =>
"""
Gets the icon name of @action.
"""
  var cstring_pony: Pointer[U8 val] ref = @gtk_action_get_icon_name[Pointer[U8 val] ref](widget)
var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

fun get_is_important(): Bool =>
"""
Checks whether @action is important or not
"""
  @gtk_action_get_is_important[Bool](widget)

fun get_label(): String =>
"""
Gets the label text of @action.
"""
  var cstring_pony: Pointer[U8 val] ref = @gtk_action_get_label[Pointer[U8 val] ref](widget)
var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

fun get_name(): String =>
"""
Returns the name of the action.
"""
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
"""
Returns whether the action itself is sensitive. Note that this doesn’t
necessarily mean effective sensitivity. See gtk_action_is_sensitive()
for that.
"""
  @gtk_action_get_sensitive[Bool](widget)

fun get_short_label(): String =>
"""
Gets the short label text of @action.
"""
  var cstring_pony: Pointer[U8 val] ref = @gtk_action_get_short_label[Pointer[U8 val] ref](widget)
var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

fun get_stock_id(): String =>
"""
Gets the stock id of @action.
"""
  var cstring_pony: Pointer[U8 val] ref = @gtk_action_get_stock_id[Pointer[U8 val] ref](widget)
var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

fun get_tooltip(): String =>
"""
Gets the tooltip text of @action.
"""
  var cstring_pony: Pointer[U8 val] ref = @gtk_action_get_tooltip[Pointer[U8 val] ref](widget)
var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

fun get_visible(): Bool =>
"""
Returns whether the action itself is visible. Note that this doesn’t
necessarily mean effective visibility. See gtk_action_is_sensitive()
for that.
"""
  @gtk_action_get_visible[Bool](widget)

fun get_visible_horizontal(): Bool =>
"""
Checks whether @action is visible when horizontal
"""
  @gtk_action_get_visible_horizontal[Bool](widget)

fun get_visible_vertical(): Bool =>
"""
Checks whether @action is visible when horizontal
"""
  @gtk_action_get_visible_vertical[Bool](widget)

fun is_sensitive(): Bool =>
"""
Returns whether the action is effectively sensitive.
"""
  @gtk_action_is_sensitive[Bool](widget)

fun is_visible(): Bool =>
"""
Returns whether the action is effectively visible.
"""
  @gtk_action_is_visible[Bool](widget)

/* set_accel_group unavailable due to typing issues
 {:doh, %{argctype: "GtkAccelGroup*", argname: "accel_group", argtype: "AccelGroup", paramtype: :param, txo: "none"}}
*/

/* set_accel_path unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "accel_path", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

fun set_always_show_image(always_show_pony: Bool): None =>
"""
Sets whether @action's menu item proxies will ignore the
#GtkSettings:gtk-menu-images setting and always show their image, if available.

Use this if the menu item would be useless or hard to use
without their image.
"""
  @gtk_action_set_always_show_image[None](widget, always_show_pony)

/* set_gicon unavailable due to typing issues
 {:doh, %{argctype: "GIcon*", argname: "icon", argtype: "Gio.Icon", paramtype: :param, txo: "none"}}
*/

/* set_icon_name unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "icon_name", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

fun set_is_important(is_important_pony: Bool): None =>
"""
Sets whether the action is important, this attribute is used
primarily by toolbar items to decide whether to show a label
or not.
"""
  @gtk_action_set_is_important[None](widget, is_important_pony)

/* set_label unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "label", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

fun set_sensitive(sensitive_pony: Bool): None =>
"""
Sets the :sensitive property of the action to @sensitive. Note that
this doesn’t necessarily mean effective sensitivity. See
gtk_action_is_sensitive()
for that.
"""
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
"""
Sets the :visible property of the action to @visible. Note that
this doesn’t necessarily mean effective visibility. See
gtk_action_is_visible()
for that.
"""
  @gtk_action_set_visible[None](widget, visible_pony)

fun set_visible_horizontal(visible_horizontal_pony: Bool): None =>
"""
Sets whether @action is visible when horizontal
"""
  @gtk_action_set_visible_horizontal[None](widget, visible_horizontal_pony)

fun set_visible_vertical(visible_vertical_pony: Bool): None =>
"""
Sets whether @action is visible when vertical
"""
  @gtk_action_set_visible_vertical[None](widget, visible_vertical_pony)

fun unblock_activate(): None =>
"""
Reenable activation signals from the action
"""
  @gtk_action_unblock_activate[None](widget)


```````