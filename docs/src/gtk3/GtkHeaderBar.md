```````pony-full-source
/*
   needs: ["Pointer[U8 val] ref", "String", "Bool", "None", "GObjectREF"]
provides: ["GtkHeaderBar"]
*/
use "../gobject"
class GtkHeaderBar is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create() =>
    widget = @gtk_header_bar_new[GObjectREF]() //


/* get_custom_title unavailable due to return typing issues
{:argctype, "GtkWidget*"}
{:argname, "rv"}
{:argtype, "Widget"}
{:paramtype, :param}
{:txo, "none"} */

fun get_decoration_layout(): String =>
  var cstring_pony: Pointer[U8 val] ref = @gtk_header_bar_get_decoration_layout[Pointer[U8 val] ref](widget)
var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

fun get_has_subtitle(): Bool =>
  @gtk_header_bar_get_has_subtitle[Bool](widget)

fun get_show_close_button(): Bool =>
  @gtk_header_bar_get_show_close_button[Bool](widget)

fun get_subtitle(): String =>
  var cstring_pony: Pointer[U8 val] ref = @gtk_header_bar_get_subtitle[Pointer[U8 val] ref](widget)
var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

fun get_title(): String =>
  var cstring_pony: Pointer[U8 val] ref = @gtk_header_bar_get_title[Pointer[U8 val] ref](widget)
var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

/* pack_end unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "child", argtype: "Widget", paramtype: :param, txo: "none"}}
*/

/* pack_start unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "child", argtype: "Widget", paramtype: :param, txo: "none"}}
*/

/* set_custom_title unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "title_widget", argtype: "Widget", paramtype: :param, txo: "none"}}
*/

/* set_decoration_layout unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "layout", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

fun set_has_subtitle(setting_pony: Bool): None =>
  @gtk_header_bar_set_has_subtitle[None](widget, setting_pony)

fun set_show_close_button(setting_pony: Bool): None =>
  @gtk_header_bar_set_show_close_button[None](widget, setting_pony)

/* set_subtitle unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "subtitle", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* set_title unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "title", argtype: "utf8", paramtype: :param, txo: "none"}}
*/


```````