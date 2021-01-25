/*
   needs: ["Pointer[U8 val] ref", "String", "Bool", "None", "GObjectREF"]
provides: ["GtkActionGroup"]
*/
class GtkActionGroup is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create(name_pony: String) =>
    widget = @gtk_action_group_new[GObjectREF](name_pony.cstring()) //


/* add_action unavailable due to typing issues
 {:doh, %{argctype: "GtkAction*", argname: "action", argtype: "Action", paramtype: :param, txo: "none"}}
*/

/* add_action_with_accel unavailable due to typing issues
 {:doh, %{argctype: "GtkAction*", argname: "action", argtype: "Action", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "accelerator", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* add_actions unavailable due to typing issues
 {:doh, %{argctype: "", argname: "entries", argtype: "", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "user_data", argtype: "gpointer", paramtype: :param, txo: "none"}}
*/

/* add_actions_full unavailable due to typing issues
 {:doh, %{argctype: "", argname: "entries", argtype: "", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "user_data", argtype: "gpointer", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GDestroyNotify", argname: "destroy", argtype: "GLib.DestroyNotify", paramtype: :param, txo: "none"}}
*/

/* add_radio_actions unavailable due to typing issues
 {:doh, %{argctype: "", argname: "entries", argtype: "", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GCallback", argname: "on_change", argtype: "GObject.Callback", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "user_data", argtype: "gpointer", paramtype: :param, txo: "none"}}
*/

/* add_radio_actions_full unavailable due to typing issues
 {:doh, %{argctype: "", argname: "entries", argtype: "", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GCallback", argname: "on_change", argtype: "GObject.Callback", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "user_data", argtype: "gpointer", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GDestroyNotify", argname: "destroy", argtype: "GLib.DestroyNotify", paramtype: :param, txo: "none"}}
*/

/* add_toggle_actions unavailable due to typing issues
 {:doh, %{argctype: "", argname: "entries", argtype: "", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "user_data", argtype: "gpointer", paramtype: :param, txo: "none"}}
*/

/* add_toggle_actions_full unavailable due to typing issues
 {:doh, %{argctype: "", argname: "entries", argtype: "", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "user_data", argtype: "gpointer", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GDestroyNotify", argname: "destroy", argtype: "GLib.DestroyNotify", paramtype: :param, txo: "none"}}
*/

/* get_accel_group unavailable due to return typing issues
{:argctype, "GtkAccelGroup*"}
{:argname, "rv"}
{:argtype, "AccelGroup"}
{:paramtype, :param}
{:txo, "none"} */

/* get_action unavailable due to return typing issues
{:argctype, "GtkAction*"}
{:argname, "rv"}
{:argtype, "Action"}
{:paramtype, :param}
{:txo, "none"} */

fun get_name(): String =>
  var cstring_pony: Pointer[U8 val] ref = @gtk_action_group_get_name[Pointer[U8 val] ref](widget)
var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

fun get_sensitive(): Bool =>
  @gtk_action_group_get_sensitive[Bool](widget)

fun get_visible(): Bool =>
  @gtk_action_group_get_visible[Bool](widget)

/* list_actions unavailable due to return typing issues
{:argctype, "GList*"}
{:argname, "rv"}
{:argtype, "GLib.List"}
{:paramtype, :param}
{:txo, "container"} */

/* remove_action unavailable due to typing issues
 {:doh, %{argctype: "GtkAction*", argname: "action", argtype: "Action", paramtype: :param, txo: "none"}}
*/

/* set_accel_group unavailable due to typing issues
 {:doh, %{argctype: "GtkAccelGroup*", argname: "accel_group", argtype: "AccelGroup", paramtype: :param, txo: "none"}}
*/

fun set_sensitive(sensitive_pony: Bool): None =>
  @gtk_action_group_set_sensitive[None](widget, sensitive_pony)

/* set_translate_func unavailable due to typing issues
 {:doh, %{argctype: "GtkTranslateFunc", argname: "func", argtype: "TranslateFunc", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "data", argtype: "gpointer", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GDestroyNotify", argname: "notify", argtype: "GLib.DestroyNotify", paramtype: :param, txo: "none"}}
*/

/* set_translation_domain unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "domain", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

fun set_visible(visible_pony: Bool): None =>
  @gtk_action_group_set_visible[None](widget, visible_pony)

/* translate_string unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "string", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

