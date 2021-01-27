/*
   needs: ["Pointer[U8 val] ref", "String", "Bool", "I32", "U32", "None", "GObjectREF"]
provides: ["GtkLabel"]
*/
use "../gobject"
class GtkLabel is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create(str_pony: String) =>
    widget = @gtk_label_new[GObjectREF](str_pony.cstring()) //

  new new_with_mnemonic(str_pony: String) =>
    widget = @gtk_label_new_with_mnemonic[GObjectREF](str_pony.cstring()) //


/* get_angle unavailable due to return typing issues
{:argctype, "gdouble"}
{:argname, "rv"}
{:argtype, "gdouble"}
{:paramtype, :param}
{:txo, "none"} */

/* get_attributes unavailable due to return typing issues
{:argctype, "PangoAttrList*"}
{:argname, "rv"}
{:argtype, "Pango.AttrList"}
{:paramtype, :param}
{:txo, "none"} */

fun get_current_uri(): String =>
"""
Returns the URI for the currently active link in the label.
The active link is the one under the mouse pointer or, in a
selectable label, the link in which the text cursor is currently
positioned.

This function is intended for use in a #GtkLabel::activate-link handler
or for use in a #GtkWidget::query-tooltip handler.
"""
  var cstring_pony: Pointer[U8 val] ref = @gtk_label_get_current_uri[Pointer[U8 val] ref](widget)
  var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

/* get_ellipsize unavailable due to return typing issues
{:argctype, "PangoEllipsizeMode"}
{:argname, "rv"}
{:argtype, "Pango.EllipsizeMode"}
{:paramtype, :param}
{:txo, "none"} */

/* get_justify unavailable due to return typing issues
{:argctype, "GtkJustification"}
{:argname, "rv"}
{:argtype, "Justification"}
{:paramtype, :param}
{:txo, "none"} */

fun get_label(): String =>
"""
Fetches the text from a label widget including any embedded
underlines indicating mnemonics and Pango markup. (See
gtk_label_get_text()).
"""
  var cstring_pony: Pointer[U8 val] ref = @gtk_label_get_label[Pointer[U8 val] ref](widget)
  var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

/* get_layout unavailable due to return typing issues
{:argctype, "PangoLayout*"}
{:argname, "rv"}
{:argtype, "Pango.Layout"}
{:paramtype, :param}
{:txo, "none"} */

/* get_layout_offsets unavailable due to typing issues
 {:doh, %{argctype: "gint*", argname: "x", argtype: "gint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gint*", argname: "y", argtype: "gint", paramtype: :param, txo: "full"}}
*/

fun get_line_wrap(): Bool =>
"""
Returns whether lines in the label are automatically wrapped.
See gtk_label_set_line_wrap().
"""
  @gtk_label_get_line_wrap[Bool](widget)

/* get_line_wrap_mode unavailable due to return typing issues
{:argctype, "PangoWrapMode"}
{:argname, "rv"}
{:argtype, "Pango.WrapMode"}
{:paramtype, :param}
{:txo, "none"} */

fun get_lines(): I32 =>
"""
Gets the number of lines to which an ellipsized, wrapping
label should be limited. See gtk_label_set_lines().
"""
  @gtk_label_get_lines[I32](widget)

fun get_max_width_chars(): I32 =>
"""
Retrieves the desired maximum width of @label, in characters. See
gtk_label_set_width_chars().
"""
  @gtk_label_get_max_width_chars[I32](widget)

fun get_mnemonic_keyval(): U32 =>
"""
If the label has been set so that it has an mnemonic key this function
returns the keyval used for the mnemonic accelerator. If there is no
mnemonic set up it returns #GDK_KEY_VoidSymbol.
"""
  @gtk_label_get_mnemonic_keyval[U32](widget)

/* get_mnemonic_widget unavailable due to return typing issues
{:argctype, "GtkWidget*"}
{:argname, "rv"}
{:argtype, "Widget"}
{:paramtype, :param}
{:txo, "none"} */

fun get_selectable(): Bool =>
"""
Gets the value set by gtk_label_set_selectable().
"""
  @gtk_label_get_selectable[Bool](widget)

/* get_selection_bounds unavailable due to typing issues
 {:doh, %{argctype: "gint*", argname: "start", argtype: "gint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gint*", argname: "gend", argtype: "gint", paramtype: :param, txo: "full"}}
*/

fun get_single_line_mode(): Bool =>
"""
Returns whether the label is in single line mode.
"""
  @gtk_label_get_single_line_mode[Bool](widget)

fun get_text(): String =>
"""
Fetches the text from a label widget, as displayed on the
screen. This does not include any embedded underlines
indicating mnemonics or Pango markup. (See gtk_label_get_label())
"""
  var cstring_pony: Pointer[U8 val] ref = @gtk_label_get_text[Pointer[U8 val] ref](widget)
  var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

fun get_track_visited_links(): Bool =>
"""
Returns whether the label is currently keeping track
of clicked links.
"""
  @gtk_label_get_track_visited_links[Bool](widget)

fun get_use_markup(): Bool =>
"""
Returns whether the label’s text is interpreted as marked up with
the [Pango text markup language][PangoMarkupFormat].
See gtk_label_set_use_markup ().
"""
  @gtk_label_get_use_markup[Bool](widget)

fun get_use_underline(): Bool =>
"""
Returns whether an embedded underline in the label indicates a
mnemonic. See gtk_label_set_use_underline().
"""
  @gtk_label_get_use_underline[Bool](widget)

fun get_width_chars(): I32 =>
"""
Retrieves the desired width of @label, in characters. See
gtk_label_set_width_chars().
"""
  @gtk_label_get_width_chars[I32](widget)

/* get_xalign unavailable due to return typing issues
{:argctype, "gfloat"}
{:argname, "rv"}
{:argtype, "gfloat"}
{:paramtype, :param}
{:txo, "none"} */

/* get_yalign unavailable due to return typing issues
{:argctype, "gfloat"}
{:argname, "rv"}
{:argtype, "gfloat"}
{:paramtype, :param}
{:txo, "none"} */

fun select_region(start_offset_pony: I32, end_offset_pony: I32): None =>
"""
Selects a range of characters in the label, if the label is selectable.
See gtk_label_set_selectable(). If the label is not selectable,
this function has no effect. If @start_offset or
@end_offset are -1, then the end of the label will be substituted.
"""
  @gtk_label_select_region[None](widget, start_offset_pony, end_offset_pony)

/* set_angle unavailable due to typing issues
 {:doh, %{argctype: "gdouble", argname: "angle", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/

/* set_attributes unavailable due to typing issues
 {:doh, %{argctype: "PangoAttrList*", argname: "attrs", argtype: "Pango.AttrList", paramtype: :param, txo: "none"}}
*/

/* set_ellipsize unavailable due to typing issues
 {:doh, %{argctype: "PangoEllipsizeMode", argname: "mode", argtype: "Pango.EllipsizeMode", paramtype: :param, txo: "none"}}
*/

/* set_justify unavailable due to typing issues
 {:doh, %{argctype: "GtkJustification", argname: "jtype", argtype: "Justification", paramtype: :param, txo: "none"}}
*/

/* set_label unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "str", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

fun set_line_wrap(wrap_pony: Bool): None =>
"""
Toggles line wrapping within the #GtkLabel widget. %TRUE makes it break
lines if text exceeds the widget’s size. %FALSE lets the text get cut off
by the edge of the widget if it exceeds the widget size.

Note that setting line wrapping to %TRUE does not make the label
wrap at its parent container’s width, because GTK+ widgets
conceptually can’t make their requisition depend on the parent
container’s size. For a label that wraps at a specific position,
set the label’s width using gtk_widget_set_size_request().
"""
  @gtk_label_set_line_wrap[None](widget, wrap_pony)

/* set_line_wrap_mode unavailable due to typing issues
 {:doh, %{argctype: "PangoWrapMode", argname: "wrap_mode", argtype: "Pango.WrapMode", paramtype: :param, txo: "none"}}
*/

fun set_lines(lines_pony: I32): None =>
"""
Sets the number of lines to which an ellipsized, wrapping label
should be limited. This has no effect if the label is not wrapping
or ellipsized. Set this to -1 if you don’t want to limit the
number of lines.
"""
  @gtk_label_set_lines[None](widget, lines_pony)

/* set_markup unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "str", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* set_markup_with_mnemonic unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "str", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

fun set_max_width_chars(n_chars_pony: I32): None =>
"""
Sets the desired maximum width in characters of @label to @n_chars.
"""
  @gtk_label_set_max_width_chars[None](widget, n_chars_pony)

/* set_mnemonic_widget unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "widget", argtype: "Widget", paramtype: :param, txo: "none"}}
*/

/* set_pattern unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "pattern", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

fun set_selectable(setting_pony: Bool): None =>
"""
Selectable labels allow the user to select text from the label, for
copy-and-paste.
"""
  @gtk_label_set_selectable[None](widget, setting_pony)

fun set_single_line_mode(single_line_mode_pony: Bool): None =>
"""
Sets whether the label is in single line mode.
"""
  @gtk_label_set_single_line_mode[None](widget, single_line_mode_pony)

/* set_text unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "str", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* set_text_with_mnemonic unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "str", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

fun set_track_visited_links(track_links_pony: Bool): None =>
"""
Sets whether the label should keep track of clicked
links (and use a different color for them).
"""
  @gtk_label_set_track_visited_links[None](widget, track_links_pony)

fun set_use_markup(setting_pony: Bool): None =>
"""
Sets whether the text of the label contains markup in
[Pango’s text markup language][PangoMarkupFormat].
See gtk_label_set_markup().
"""
  @gtk_label_set_use_markup[None](widget, setting_pony)

fun set_use_underline(setting_pony: Bool): None =>
"""
If true, an underline in the text indicates the next character should be
used for the mnemonic accelerator key.
"""
  @gtk_label_set_use_underline[None](widget, setting_pony)

fun set_width_chars(n_chars_pony: I32): None =>
"""
Sets the desired width in characters of @label to @n_chars.
"""
  @gtk_label_set_width_chars[None](widget, n_chars_pony)

/* set_xalign unavailable due to typing issues
 {:doh, %{argctype: "gfloat", argname: "xalign", argtype: "gfloat", paramtype: :param, txo: "none"}}
*/

/* set_yalign unavailable due to typing issues
 {:doh, %{argctype: "gfloat", argname: "yalign", argtype: "gfloat", paramtype: :param, txo: "none"}}
*/

