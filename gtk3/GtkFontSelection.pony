/*
   needs: ["GObjectREF", "GtkWidget val", "Pointer[U8 val] ref", "String", "I32"]
provides: ["GtkFontSelection val"]
*/
use "../gobject"
class val GtkFontSelection is GtkWidget
"""
No documentation provided
"""
  var widget: GObjectREF val

  fun gtkwidget(): GObjectREF val => widget

  new val create_from_GtkBuilder(gtkbuilder: GtkBuilder, glade_id: String) =>
    widget = @gtk_builder_get_object[GObjectREF](gtkbuilder.gtkwidget(), glade_id.cstring())

  new val create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'

  new val never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF


  new val create() =>
    widget = @gtk_font_selection_new[GObjectREF]() //


/* get_face unavailable due to return typing issues
Gets the #PangoFontFace representing the selected font group
details (i.e. family, slant, weight, width, etc).
{:argctype, "PangoFontFace*"}
{:argname, "rv"}
{:argtype, "Pango.FontFace"}
{:paramtype, :param}
{:txo, "none"} */

/* Needs conversion code 
This returns the #GtkTreeView which lists all styles available for
the selected font. For example, “Regular”, “Bold”, etc.
  fun get_face_list(): GtkWidget val =>
    @gtk_font_selection_get_face_list[GObjectREF](widget)
*/

/* get_family unavailable due to return typing issues
Gets the #PangoFontFamily representing the selected font family.
{:argctype, "PangoFontFamily*"}
{:argname, "rv"}
{:argtype, "Pango.FontFamily"}
{:paramtype, :param}
{:txo, "none"} */

/* Needs conversion code 
This returns the #GtkTreeView that lists font families, for
example, “Sans”, “Serif”, etc.
  fun get_family_list(): GtkWidget val =>
    @gtk_font_selection_get_family_list[GObjectREF](widget)
*/

/* get_font_name unavailable due to return typing issues
Gets the currently-selected font name.

Note that this can be a different string than what you set with
gtk_font_selection_set_font_name(), as the font selection widget may
normalize font names and thus return a string with a different structure.
For example, “Helvetica Italic Bold 12” could be normalized to
“Helvetica Bold Italic 12”. Use pango_font_description_equal()
if you want to compare two font descriptions.
{:argctype, "gchar*"}
{:argname, "rv"}
{:argtype, "utf8"}
{:paramtype, :param}
{:txo, "full"} */

/* Needs conversion code 
This returns the #GtkEntry used to display the font as a preview.
  fun get_preview_entry(): GtkWidget val =>
    @gtk_font_selection_get_preview_entry[GObjectREF](widget)
*/

fun get_preview_text(): String =>
"""
Gets the text displayed in the preview area.
"""
  var cstring_pony: Pointer[U8 val] ref = @gtk_font_selection_get_preview_text[Pointer[U8 val] ref](widget)
  var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

fun get_size(): I32 =>
"""
The selected font size.
"""
  @gtk_font_selection_get_size[I32](widget)

/* Needs conversion code 
This returns the #GtkEntry used to allow the user to edit the font
number manually instead of selecting it from the list of font sizes.
  fun get_size_entry(): GtkWidget val =>
    @gtk_font_selection_get_size_entry[GObjectREF](widget)
*/

/* Needs conversion code 
This returns the #GtkTreeView used to list font sizes.
  fun get_size_list(): GtkWidget val =>
    @gtk_font_selection_get_size_list[GObjectREF](widget)
*/

/* set_font_name unavailable due to typing issues
Sets the currently-selected font.

Note that the @fontsel needs to know the screen in which it will appear
for this to work; this can be guaranteed by simply making sure that the
@fontsel is inserted in a toplevel window before you call this function.
{:doh, %{argctype: "const gchar*", argname: "fontname", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* set_preview_text unavailable due to typing issues
Sets the text displayed in the preview area.
The @text is used to show how the selected font looks.
{:doh, %{argctype: "const gchar*", argname: "text", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

