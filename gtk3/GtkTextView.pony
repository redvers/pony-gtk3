/*
   needs: ["Bool", "I32", "None", "GObjectREF", "GtkTextBuffer"]
provides: ["GtkTextView"]
*/
class GtkTextView is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create() =>
    widget = @gtk_text_view_new[GObjectREF]() //

  new new_with_buffer(buffer_pony: GtkTextBuffer) =>
    widget = @gtk_text_view_new_with_buffer[GObjectREF](buffer_pony.gtkwidget()) //


/* add_child_at_anchor unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "child", argtype: "Widget", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkTextChildAnchor*", argname: "anchor", argtype: "TextChildAnchor", paramtype: :param, txo: "none"}}
*/

/* add_child_in_window unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "child", argtype: "Widget", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkTextWindowType", argname: "which_window", argtype: "TextWindowType", paramtype: :param, txo: "none"}}
*/

/* backward_display_line unavailable due to typing issues
 {:doh, %{argctype: "GtkTextIter*", argname: "iter", argtype: "TextIter", paramtype: :param, txo: "none"}}
*/

/* backward_display_line_start unavailable due to typing issues
 {:doh, %{argctype: "GtkTextIter*", argname: "iter", argtype: "TextIter", paramtype: :param, txo: "none"}}
*/

/* buffer_to_window_coords unavailable due to typing issues
 {:doh, %{argctype: "GtkTextWindowType", argname: "win", argtype: "TextWindowType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gint*", argname: "window_x", argtype: "gint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gint*", argname: "window_y", argtype: "gint", paramtype: :param, txo: "full"}}
*/

/* forward_display_line unavailable due to typing issues
 {:doh, %{argctype: "GtkTextIter*", argname: "iter", argtype: "TextIter", paramtype: :param, txo: "none"}}
*/

/* forward_display_line_end unavailable due to typing issues
 {:doh, %{argctype: "GtkTextIter*", argname: "iter", argtype: "TextIter", paramtype: :param, txo: "none"}}
*/

fun get_accepts_tab(): Bool =>
  @gtk_text_view_get_accepts_tab[Bool](widget)

/* get_border_window_size unavailable due to typing issues
 {:doh, %{argctype: "GtkTextWindowType", argname: "gtype", argtype: "TextWindowType", paramtype: :param, txo: "none"}}
*/

fun get_bottom_margin(): I32 =>
  @gtk_text_view_get_bottom_margin[I32](widget)

/* get_buffer unavailable due to return typing issues
{:argctype, "GtkTextBuffer*"}
{:argname, "rv"}
{:argtype, "TextBuffer"}
{:paramtype, :param}
{:txo, "none"} */

/* get_cursor_locations unavailable due to typing issues
 {:doh, %{argctype: "const GtkTextIter*", argname: "iter", argtype: "TextIter", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkRectangle*", argname: "strong", argtype: "Gdk.Rectangle", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkRectangle*", argname: "weak", argtype: "Gdk.Rectangle", paramtype: :param, txo: "none"}}
*/

fun get_cursor_visible(): Bool =>
  @gtk_text_view_get_cursor_visible[Bool](widget)

/* get_default_attributes unavailable due to return typing issues
{:argctype, "GtkTextAttributes*"}
{:argname, "rv"}
{:argtype, "TextAttributes"}
{:paramtype, :param}
{:txo, "full"} */

fun get_editable(): Bool =>
  @gtk_text_view_get_editable[Bool](widget)

/* get_hadjustment unavailable due to return typing issues
{:argctype, "GtkAdjustment*"}
{:argname, "rv"}
{:argtype, "Adjustment"}
{:paramtype, :param}
{:txo, "none"} */

fun get_indent(): I32 =>
  @gtk_text_view_get_indent[I32](widget)

/* get_input_hints unavailable due to return typing issues
{:argctype, "GtkInputHints"}
{:argname, "rv"}
{:argtype, "InputHints"}
{:paramtype, :param}
{:txo, "none"} */

/* get_input_purpose unavailable due to return typing issues
{:argctype, "GtkInputPurpose"}
{:argname, "rv"}
{:argtype, "InputPurpose"}
{:paramtype, :param}
{:txo, "none"} */

/* get_iter_at_location unavailable due to typing issues
 {:doh, %{argctype: "GtkTextIter*", argname: "iter", argtype: "TextIter", paramtype: :param, txo: "none"}}
*/

/* get_iter_at_position unavailable due to typing issues
 {:doh, %{argctype: "GtkTextIter*", argname: "iter", argtype: "TextIter", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gint*", argname: "trailing", argtype: "gint", paramtype: :param, txo: "full"}}
*/

/* get_iter_location unavailable due to typing issues
 {:doh, %{argctype: "const GtkTextIter*", argname: "iter", argtype: "TextIter", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkRectangle*", argname: "location", argtype: "Gdk.Rectangle", paramtype: :param, txo: "none"}}
*/

/* get_justification unavailable due to return typing issues
{:argctype, "GtkJustification"}
{:argname, "rv"}
{:argtype, "Justification"}
{:paramtype, :param}
{:txo, "none"} */

fun get_left_margin(): I32 =>
  @gtk_text_view_get_left_margin[I32](widget)

/* get_line_at_y unavailable due to typing issues
 {:doh, %{argctype: "GtkTextIter*", argname: "target_iter", argtype: "TextIter", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gint*", argname: "line_top", argtype: "gint", paramtype: :param, txo: "full"}}
*/

/* get_line_yrange unavailable due to typing issues
 {:doh, %{argctype: "const GtkTextIter*", argname: "iter", argtype: "TextIter", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gint*", argname: "y", argtype: "gint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gint*", argname: "height", argtype: "gint", paramtype: :param, txo: "full"}}
*/

fun get_monospace(): Bool =>
  @gtk_text_view_get_monospace[Bool](widget)

fun get_overwrite(): Bool =>
  @gtk_text_view_get_overwrite[Bool](widget)

fun get_pixels_above_lines(): I32 =>
  @gtk_text_view_get_pixels_above_lines[I32](widget)

fun get_pixels_below_lines(): I32 =>
  @gtk_text_view_get_pixels_below_lines[I32](widget)

fun get_pixels_inside_wrap(): I32 =>
  @gtk_text_view_get_pixels_inside_wrap[I32](widget)

fun get_right_margin(): I32 =>
  @gtk_text_view_get_right_margin[I32](widget)

/* get_tabs unavailable due to return typing issues
{:argctype, "PangoTabArray*"}
{:argname, "rv"}
{:argtype, "Pango.TabArray"}
{:paramtype, :param}
{:txo, "full"} */

fun get_top_margin(): I32 =>
  @gtk_text_view_get_top_margin[I32](widget)

/* get_vadjustment unavailable due to return typing issues
{:argctype, "GtkAdjustment*"}
{:argname, "rv"}
{:argtype, "Adjustment"}
{:paramtype, :param}
{:txo, "none"} */

/* get_visible_rect unavailable due to typing issues
 {:doh, %{argctype: "GdkRectangle*", argname: "visible_rect", argtype: "Gdk.Rectangle", paramtype: :param, txo: "none"}}
*/

/* get_window unavailable due to return typing issues
{:argctype, "GdkWindow*"}
{:argname, "rv"}
{:argtype, "Gdk.Window"}
{:paramtype, :param}
{:txo, "none"} */

/* get_window_type unavailable due to return typing issues
{:argctype, "GtkTextWindowType"}
{:argname, "rv"}
{:argtype, "TextWindowType"}
{:paramtype, :param}
{:txo, "none"} */

/* get_wrap_mode unavailable due to return typing issues
{:argctype, "GtkWrapMode"}
{:argname, "rv"}
{:argtype, "WrapMode"}
{:paramtype, :param}
{:txo, "none"} */

/* im_context_filter_keypress unavailable due to typing issues
 {:doh, %{argctype: "GdkEventKey*", argname: "event", argtype: "Gdk.EventKey", paramtype: :param, txo: "none"}}
*/

/* move_child unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "child", argtype: "Widget", paramtype: :param, txo: "none"}}
*/

/* move_mark_onscreen unavailable due to typing issues
 {:doh, %{argctype: "GtkTextMark*", argname: "mark", argtype: "TextMark", paramtype: :param, txo: "none"}}
*/

/* move_visually unavailable due to typing issues
 {:doh, %{argctype: "GtkTextIter*", argname: "iter", argtype: "TextIter", paramtype: :param, txo: "none"}}
*/

fun place_cursor_onscreen(): Bool =>
  @gtk_text_view_place_cursor_onscreen[Bool](widget)

fun reset_cursor_blink(): None =>
  @gtk_text_view_reset_cursor_blink[None](widget)

fun reset_im_context(): None =>
  @gtk_text_view_reset_im_context[None](widget)

/* scroll_mark_onscreen unavailable due to typing issues
 {:doh, %{argctype: "GtkTextMark*", argname: "mark", argtype: "TextMark", paramtype: :param, txo: "none"}}
*/

/* scroll_to_iter unavailable due to typing issues
 {:doh, %{argctype: "GtkTextIter*", argname: "iter", argtype: "TextIter", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "within_margin", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "xalign", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "yalign", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/

/* scroll_to_mark unavailable due to typing issues
 {:doh, %{argctype: "GtkTextMark*", argname: "mark", argtype: "TextMark", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "within_margin", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "xalign", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "yalign", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/

fun set_accepts_tab(accepts_tab_pony: Bool): None =>
  @gtk_text_view_set_accepts_tab[None](widget, accepts_tab_pony)

/* set_border_window_size unavailable due to typing issues
 {:doh, %{argctype: "GtkTextWindowType", argname: "gtype", argtype: "TextWindowType", paramtype: :param, txo: "none"}}
*/

fun set_bottom_margin(bottom_margin_pony: I32): None =>
  @gtk_text_view_set_bottom_margin[None](widget, bottom_margin_pony)

/* set_buffer unavailable due to typing issues
 {:doh, %{argctype: "GtkTextBuffer*", argname: "buffer", argtype: "TextBuffer", paramtype: :param, txo: "none"}}
*/

fun set_cursor_visible(setting_pony: Bool): None =>
  @gtk_text_view_set_cursor_visible[None](widget, setting_pony)

fun set_editable(setting_pony: Bool): None =>
  @gtk_text_view_set_editable[None](widget, setting_pony)

fun set_indent(indent_pony: I32): None =>
  @gtk_text_view_set_indent[None](widget, indent_pony)

/* set_input_hints unavailable due to typing issues
 {:doh, %{argctype: "GtkInputHints", argname: "hints", argtype: "InputHints", paramtype: :param, txo: "none"}}
*/

/* set_input_purpose unavailable due to typing issues
 {:doh, %{argctype: "GtkInputPurpose", argname: "purpose", argtype: "InputPurpose", paramtype: :param, txo: "none"}}
*/

/* set_justification unavailable due to typing issues
 {:doh, %{argctype: "GtkJustification", argname: "justification", argtype: "Justification", paramtype: :param, txo: "none"}}
*/

fun set_left_margin(left_margin_pony: I32): None =>
  @gtk_text_view_set_left_margin[None](widget, left_margin_pony)

fun set_monospace(monospace_pony: Bool): None =>
  @gtk_text_view_set_monospace[None](widget, monospace_pony)

fun set_overwrite(overwrite_pony: Bool): None =>
  @gtk_text_view_set_overwrite[None](widget, overwrite_pony)

fun set_pixels_above_lines(pixels_above_lines_pony: I32): None =>
  @gtk_text_view_set_pixels_above_lines[None](widget, pixels_above_lines_pony)

fun set_pixels_below_lines(pixels_below_lines_pony: I32): None =>
  @gtk_text_view_set_pixels_below_lines[None](widget, pixels_below_lines_pony)

fun set_pixels_inside_wrap(pixels_inside_wrap_pony: I32): None =>
  @gtk_text_view_set_pixels_inside_wrap[None](widget, pixels_inside_wrap_pony)

fun set_right_margin(right_margin_pony: I32): None =>
  @gtk_text_view_set_right_margin[None](widget, right_margin_pony)

/* set_tabs unavailable due to typing issues
 {:doh, %{argctype: "PangoTabArray*", argname: "tabs", argtype: "Pango.TabArray", paramtype: :param, txo: "none"}}
*/

fun set_top_margin(top_margin_pony: I32): None =>
  @gtk_text_view_set_top_margin[None](widget, top_margin_pony)

/* set_wrap_mode unavailable due to typing issues
 {:doh, %{argctype: "GtkWrapMode", argname: "wrap_mode", argtype: "WrapMode", paramtype: :param, txo: "none"}}
*/

/* starts_display_line unavailable due to typing issues
 {:doh, %{argctype: "const GtkTextIter*", argname: "iter", argtype: "TextIter", paramtype: :param, txo: "none"}}
*/

/* window_to_buffer_coords unavailable due to typing issues
 {:doh, %{argctype: "GtkTextWindowType", argname: "win", argtype: "TextWindowType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gint*", argname: "buffer_x", argtype: "gint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gint*", argname: "buffer_y", argtype: "gint", paramtype: :param, txo: "full"}}
*/

