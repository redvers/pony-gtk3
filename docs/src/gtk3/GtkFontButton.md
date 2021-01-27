```````pony-full-source
/*
   needs: ["Pointer[U8 val] ref", "String", "Bool", "None", "GObjectREF"]
provides: ["GtkFontButton"]
*/
use "../gobject"
class GtkFontButton is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create() =>
    widget = @gtk_font_button_new[GObjectREF]() //

  new new_with_font(fontname_pony: String) =>
    widget = @gtk_font_button_new_with_font[GObjectREF](fontname_pony.cstring()) //


fun get_font_name(): String =>
  var cstring_pony: Pointer[U8 val] ref = @gtk_font_button_get_font_name[Pointer[U8 val] ref](widget)
var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

fun get_show_size(): Bool =>
  @gtk_font_button_get_show_size[Bool](widget)

fun get_show_style(): Bool =>
  @gtk_font_button_get_show_style[Bool](widget)

fun get_title(): String =>
  var cstring_pony: Pointer[U8 val] ref = @gtk_font_button_get_title[Pointer[U8 val] ref](widget)
var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

fun get_use_font(): Bool =>
  @gtk_font_button_get_use_font[Bool](widget)

fun get_use_size(): Bool =>
  @gtk_font_button_get_use_size[Bool](widget)

/* set_font_name unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "fontname", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

fun set_show_size(show_size_pony: Bool): None =>
  @gtk_font_button_set_show_size[None](widget, show_size_pony)

fun set_show_style(show_style_pony: Bool): None =>
  @gtk_font_button_set_show_style[None](widget, show_style_pony)

/* set_title unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "title", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

fun set_use_font(use_font_pony: Bool): None =>
  @gtk_font_button_set_use_font[None](widget, use_font_pony)

fun set_use_size(use_size_pony: Bool): None =>
  @gtk_font_button_set_use_size[None](widget, use_size_pony)


```````