/*
   needs: ["Pointer[U8 val] ref", "String", "I32", "GObjectREF"]
provides: ["GtkFontSelection"]
*/
class GtkFontSelection is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create() =>
    widget = @gtk_font_selection_new[GObjectREF]() //


/* get_face unavailable due to return typing issues
{:argctype, "PangoFontFace*"}
{:argname, "rv"}
{:argtype, "Pango.FontFace"}
{:paramtype, :param}
{:txo, "none"} */

/* get_face_list unavailable due to return typing issues
{:argctype, "GtkWidget*"}
{:argname, "rv"}
{:argtype, "Widget"}
{:paramtype, :param}
{:txo, "none"} */

/* get_family unavailable due to return typing issues
{:argctype, "PangoFontFamily*"}
{:argname, "rv"}
{:argtype, "Pango.FontFamily"}
{:paramtype, :param}
{:txo, "none"} */

/* get_family_list unavailable due to return typing issues
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

/* get_preview_entry unavailable due to return typing issues
{:argctype, "GtkWidget*"}
{:argname, "rv"}
{:argtype, "Widget"}
{:paramtype, :param}
{:txo, "none"} */

fun get_preview_text(): String =>
  var cstring_pony: Pointer[U8 val] ref = @gtk_font_selection_get_preview_text[Pointer[U8 val] ref](widget)
var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

fun get_size(): I32 =>
  @gtk_font_selection_get_size[I32](widget)

/* get_size_entry unavailable due to return typing issues
{:argctype, "GtkWidget*"}
{:argname, "rv"}
{:argtype, "Widget"}
{:paramtype, :param}
{:txo, "none"} */

/* get_size_list unavailable due to return typing issues
{:argctype, "GtkWidget*"}
{:argname, "rv"}
{:argtype, "Widget"}
{:paramtype, :param}
{:txo, "none"} */

/* set_font_name unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "fontname", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* set_preview_text unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "text", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

