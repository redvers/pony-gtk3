/*
   needs: ["None", "Pointer[U8 val] ref", "String", "Bool", "GObjectREF"]
provides: ["GtkAppChooserButton"]
*/
class GtkAppChooserButton is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create(content_type_pony: String) =>
    widget = @gtk_app_chooser_button_new[GObjectREF](content_type_pony.cstring()) //


/* append_custom_item unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "label", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GIcon*", argname: "icon", argtype: "Gio.Icon", paramtype: :param, txo: "none"}}
*/

fun append_separator(): None =>
  @gtk_app_chooser_button_append_separator[None](widget)

fun get_heading(): String =>
  var cstring_pony: Pointer[U8 val] ref = @gtk_app_chooser_button_get_heading[Pointer[U8 val] ref](widget)
var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

fun get_show_default_item(): Bool =>
  @gtk_app_chooser_button_get_show_default_item[Bool](widget)

fun get_show_dialog_item(): Bool =>
  @gtk_app_chooser_button_get_show_dialog_item[Bool](widget)

/* set_active_custom_item unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "name", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* set_heading unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "heading", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

fun set_show_default_item(setting_pony: Bool): None =>
  @gtk_app_chooser_button_set_show_default_item[None](widget, setting_pony)

fun set_show_dialog_item(setting_pony: Bool): None =>
  @gtk_app_chooser_button_set_show_dialog_item[None](widget, setting_pony)

