/*
   needs: ["Pointer[U8 val] ref", "String", "I32", "None", "GObjectREF"]
provides: ["GtkNumerableIcon"]
*/
class GtkNumerableIcon is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF




/* get_background_gicon unavailable due to return typing issues
{:argctype, "GIcon*"}
{:argname, "rv"}
{:argtype, "Gio.Icon"}
{:paramtype, :param}
{:txo, "none"} */

fun get_background_icon_name(): String =>
  var cstring_pony: Pointer[U8 val] ref = @gtk_numerable_icon_get_background_icon_name[Pointer[U8 val] ref](widget)
var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

fun get_count(): I32 =>
  @gtk_numerable_icon_get_count[I32](widget)

fun get_label(): String =>
  var cstring_pony: Pointer[U8 val] ref = @gtk_numerable_icon_get_label[Pointer[U8 val] ref](widget)
var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

/* get_style_context unavailable due to return typing issues
{:argctype, "GtkStyleContext*"}
{:argname, "rv"}
{:argtype, "StyleContext"}
{:paramtype, :param}
{:txo, "none"} */

/* set_background_gicon unavailable due to typing issues
 {:doh, %{argctype: "GIcon*", argname: "icon", argtype: "Gio.Icon", paramtype: :param, txo: "none"}}
*/

/* set_background_icon_name unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "icon_name", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

fun set_count(count_pony: I32): None =>
  @gtk_numerable_icon_set_count[None](widget, count_pony)

/* set_label unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "label", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* set_style_context unavailable due to typing issues
 {:doh, %{argctype: "GtkStyleContext*", argname: "style", argtype: "StyleContext", paramtype: :param, txo: "none"}}
*/

