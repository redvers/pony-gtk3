/*
   needs: ["Pointer[U8 val] ref", "String", "Bool", "None", "GObjectREF"]
provides: ["GtkAppChooserWidget"]
*/
use "../gobject"
class GtkAppChooserWidget is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create(content_type_pony: String) =>
    widget = @gtk_app_chooser_widget_new[GObjectREF](content_type_pony.cstring()) //


fun get_default_text(): String =>
  var cstring_pony: Pointer[U8 val] ref = @gtk_app_chooser_widget_get_default_text[Pointer[U8 val] ref](widget)
var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

fun get_show_all(): Bool =>
  @gtk_app_chooser_widget_get_show_all[Bool](widget)

fun get_show_default(): Bool =>
  @gtk_app_chooser_widget_get_show_default[Bool](widget)

fun get_show_fallback(): Bool =>
  @gtk_app_chooser_widget_get_show_fallback[Bool](widget)

fun get_show_other(): Bool =>
  @gtk_app_chooser_widget_get_show_other[Bool](widget)

fun get_show_recommended(): Bool =>
  @gtk_app_chooser_widget_get_show_recommended[Bool](widget)

/* set_default_text unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "text", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

fun set_show_all(setting_pony: Bool): None =>
  @gtk_app_chooser_widget_set_show_all[None](widget, setting_pony)

fun set_show_default(setting_pony: Bool): None =>
  @gtk_app_chooser_widget_set_show_default[None](widget, setting_pony)

fun set_show_fallback(setting_pony: Bool): None =>
  @gtk_app_chooser_widget_set_show_fallback[None](widget, setting_pony)

fun set_show_other(setting_pony: Bool): None =>
  @gtk_app_chooser_widget_set_show_other[None](widget, setting_pony)

fun set_show_recommended(setting_pony: Bool): None =>
  @gtk_app_chooser_widget_set_show_recommended[None](widget, setting_pony)

