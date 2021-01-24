/*
   needs: ["Pointer[U8 val] ref", "String", "GObjectREF"]
provides: ["GtkFontSelectionDialog"]
*/
class GtkFontSelectionDialog is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF


  new create(title_pony: String) =>
    widget = @gtk_font_selection_dialog_new[GObjectREF](title_pony.cstring()) //


/* get_cancel_button unavailable due to return typing issues
{:argctype, "GtkWidget*"}
{:argname, "rv"}
{:argtype, "Widget"}
{:paramtype, :param}
{:txo, "none"} */

/* get_font_name unavailable due to return typing issues
{:argctype, "gchar*"}
{:argname, "rv"}
{:argtype, "utf8"}
{:paramtype, :param}
{:txo, "full"} */

/* get_font_selection unavailable due to return typing issues
{:argctype, "GtkWidget*"}
{:argname, "rv"}
{:argtype, "Widget"}
{:paramtype, :param}
{:txo, "none"} */

/* get_ok_button unavailable due to return typing issues
{:argctype, "GtkWidget*"}
{:argname, "rv"}
{:argtype, "Widget"}
{:paramtype, :param}
{:txo, "none"} */

fun get_preview_text(): String =>
  var cstring_pony: Pointer[U8 val] ref = @gtk_font_selection_dialog_get_preview_text[Pointer[U8 val] ref](widget)
var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

/* set_font_name unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "fontname", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* set_preview_text unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "text", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

