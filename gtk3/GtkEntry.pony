/*
   needs: ["Bool", "I32", "Pointer[U8 val] ref", "String", "None", "GObjectREF", "GtkEntryBuffer"]
provides: ["GtkEntry"]
*/
class GtkEntry is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF


  new create() =>
    widget = @gtk_entry_new[GObjectREF]() //

  new new_with_buffer(buffer_pony: GtkEntryBuffer) =>
    widget = @gtk_entry_new_with_buffer[GObjectREF](buffer_pony.gtkwidget()) //


fun get_activates_default(): Bool =>
  @gtk_entry_get_activates_default[Bool](widget)

/* get_alignment unavailable due to return typing issues
{:argctype, "gfloat"}
{:argname, "rv"}
{:argtype, "gfloat"}
{:paramtype, :param}
{:txo, "none"} */

/* get_attributes unavailable due to return typing issues
{:argctype, "PangoAttrList*"}
{:argname, "rv"}
{:argtype, "Pango.AttrList"}
{:paramtype, :param}
{:txo, "none"} */

/* get_buffer unavailable due to return typing issues
{:argctype, "GtkEntryBuffer*"}
{:argname, "rv"}
{:argtype, "EntryBuffer"}
{:paramtype, :param}
{:txo, "none"} */

/* get_completion unavailable due to return typing issues
{:argctype, "GtkEntryCompletion*"}
{:argname, "rv"}
{:argtype, "EntryCompletion"}
{:paramtype, :param}
{:txo, "none"} */

fun get_current_icon_drag_source(): I32 =>
  @gtk_entry_get_current_icon_drag_source[I32](widget)

/* get_cursor_hadjustment unavailable due to return typing issues
{:argctype, "GtkAdjustment*"}
{:argname, "rv"}
{:argtype, "Adjustment"}
{:paramtype, :param}
{:txo, "none"} */

fun get_has_frame(): Bool =>
  @gtk_entry_get_has_frame[Bool](widget)

/* get_icon_activatable unavailable due to typing issues
 {:doh, %{argctype: "GtkEntryIconPosition", argname: "icon_pos", argtype: "EntryIconPosition", paramtype: :param, txo: "none"}}
*/

/* get_icon_area unavailable due to typing issues
 {:doh, %{argctype: "GtkEntryIconPosition", argname: "icon_pos", argtype: "EntryIconPosition", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkRectangle*", argname: "icon_area", argtype: "Gdk.Rectangle", paramtype: :param, txo: "none"}}
*/

fun get_icon_at_pos(x_pony: I32, y_pony: I32): I32 =>
  @gtk_entry_get_icon_at_pos[I32](widget, x_pony, y_pony)

/* get_icon_gicon unavailable due to return typing issues
{:argctype, "GIcon*"}
{:argname, "rv"}
{:argtype, "Gio.Icon"}
{:paramtype, :param}
{:txo, "none"} */

/* get_icon_name unavailable due to typing issues
 {:doh, %{argctype: "GtkEntryIconPosition", argname: "icon_pos", argtype: "EntryIconPosition", paramtype: :param, txo: "none"}}
*/

/* get_icon_pixbuf unavailable due to return typing issues
{:argctype, "GdkPixbuf*"}
{:argname, "rv"}
{:argtype, "GdkPixbuf.Pixbuf"}
{:paramtype, :param}
{:txo, "none"} */

/* get_icon_sensitive unavailable due to typing issues
 {:doh, %{argctype: "GtkEntryIconPosition", argname: "icon_pos", argtype: "EntryIconPosition", paramtype: :param, txo: "none"}}
*/

/* get_icon_stock unavailable due to typing issues
 {:doh, %{argctype: "GtkEntryIconPosition", argname: "icon_pos", argtype: "EntryIconPosition", paramtype: :param, txo: "none"}}
*/

/* get_icon_storage_type unavailable due to return typing issues
{:argctype, "GtkImageType"}
{:argname, "rv"}
{:argtype, "ImageType"}
{:paramtype, :param}
{:txo, "none"} */

/* get_icon_tooltip_markup unavailable due to return typing issues
{:argctype, "gchar*"}
{:argname, "rv"}
{:argtype, "utf8"}
{:paramtype, :param}
{:txo, "full"} */

/* get_icon_tooltip_text unavailable due to return typing issues
{:argctype, "gchar*"}
{:argname, "rv"}
{:argtype, "utf8"}
{:paramtype, :param}
{:txo, "full"} */

/* get_inner_border unavailable due to return typing issues
{:argctype, "const GtkBorder*"}
{:argname, "rv"}
{:argtype, "Border"}
{:paramtype, :param}
{:txo, "none"} */

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

/* get_invisible_char unavailable due to return typing issues
{:argctype, "gunichar"}
{:argname, "rv"}
{:argtype, "gunichar"}
{:paramtype, :param}
{:txo, "none"} */

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

fun get_max_length(): I32 =>
  @gtk_entry_get_max_length[I32](widget)

fun get_max_width_chars(): I32 =>
  @gtk_entry_get_max_width_chars[I32](widget)

fun get_overwrite_mode(): Bool =>
  @gtk_entry_get_overwrite_mode[Bool](widget)

fun get_placeholder_text(): String =>
  var cstring_pony: Pointer[U8 val] ref = @gtk_entry_get_placeholder_text[Pointer[U8 val] ref](widget)
var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

/* get_progress_fraction unavailable due to return typing issues
{:argctype, "gdouble"}
{:argname, "rv"}
{:argtype, "gdouble"}
{:paramtype, :param}
{:txo, "none"} */

/* get_progress_pulse_step unavailable due to return typing issues
{:argctype, "gdouble"}
{:argname, "rv"}
{:argtype, "gdouble"}
{:paramtype, :param}
{:txo, "none"} */

/* get_tabs unavailable due to return typing issues
{:argctype, "PangoTabArray*"}
{:argname, "rv"}
{:argtype, "Pango.TabArray"}
{:paramtype, :param}
{:txo, "none"} */

fun get_text(): String =>
  var cstring_pony: Pointer[U8 val] ref = @gtk_entry_get_text[Pointer[U8 val] ref](widget)
var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

/* get_text_area unavailable due to typing issues
 {:doh, %{argctype: "GdkRectangle*", argname: "text_area", argtype: "Gdk.Rectangle", paramtype: :param, txo: "none"}}
*/

/* get_text_length unavailable due to return typing issues
{:argctype, "guint16"}
{:argname, "rv"}
{:argtype, "guint16"}
{:paramtype, :param}
{:txo, "none"} */

fun get_visibility(): Bool =>
  @gtk_entry_get_visibility[Bool](widget)

fun get_width_chars(): I32 =>
  @gtk_entry_get_width_chars[I32](widget)

fun grab_focus_without_selecting(): None =>
  @gtk_entry_grab_focus_without_selecting[None](widget)

/* im_context_filter_keypress unavailable due to typing issues
 {:doh, %{argctype: "GdkEventKey*", argname: "event", argtype: "Gdk.EventKey", paramtype: :param, txo: "none"}}
*/

fun layout_index_to_text_index(layout_index_pony: I32): I32 =>
  @gtk_entry_layout_index_to_text_index[I32](widget, layout_index_pony)

fun progress_pulse(): None =>
  @gtk_entry_progress_pulse[None](widget)

fun reset_im_context(): None =>
  @gtk_entry_reset_im_context[None](widget)

fun set_activates_default(setting_pony: Bool): None =>
  @gtk_entry_set_activates_default[None](widget, setting_pony)

/* set_alignment unavailable due to typing issues
 {:doh, %{argctype: "gfloat", argname: "xalign", argtype: "gfloat", paramtype: :param, txo: "none"}}
*/

/* set_attributes unavailable due to typing issues
 {:doh, %{argctype: "PangoAttrList*", argname: "attrs", argtype: "Pango.AttrList", paramtype: :param, txo: "none"}}
*/

/* set_buffer unavailable due to typing issues
 {:doh, %{argctype: "GtkEntryBuffer*", argname: "buffer", argtype: "EntryBuffer", paramtype: :param, txo: "none"}}
*/

/* set_completion unavailable due to typing issues
 {:doh, %{argctype: "GtkEntryCompletion*", argname: "completion", argtype: "EntryCompletion", paramtype: :param, txo: "none"}}
*/

/* set_cursor_hadjustment unavailable due to typing issues
 {:doh, %{argctype: "GtkAdjustment*", argname: "adjustment", argtype: "Adjustment", paramtype: :param, txo: "none"}}
*/

fun set_has_frame(setting_pony: Bool): None =>
  @gtk_entry_set_has_frame[None](widget, setting_pony)

/* set_icon_activatable unavailable due to typing issues
 {:doh, %{argctype: "GtkEntryIconPosition", argname: "icon_pos", argtype: "EntryIconPosition", paramtype: :param, txo: "none"}}
*/

/* set_icon_drag_source unavailable due to typing issues
 {:doh, %{argctype: "GtkEntryIconPosition", argname: "icon_pos", argtype: "EntryIconPosition", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkTargetList*", argname: "target_list", argtype: "TargetList", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkDragAction", argname: "actions", argtype: "Gdk.DragAction", paramtype: :param, txo: "none"}}
*/

/* set_icon_from_gicon unavailable due to typing issues
 {:doh, %{argctype: "GtkEntryIconPosition", argname: "icon_pos", argtype: "EntryIconPosition", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GIcon*", argname: "icon", argtype: "Gio.Icon", paramtype: :param, txo: "none"}}
*/

/* set_icon_from_icon_name unavailable due to typing issues
 {:doh, %{argctype: "GtkEntryIconPosition", argname: "icon_pos", argtype: "EntryIconPosition", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "icon_name", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* set_icon_from_pixbuf unavailable due to typing issues
 {:doh, %{argctype: "GtkEntryIconPosition", argname: "icon_pos", argtype: "EntryIconPosition", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkPixbuf*", argname: "pixbuf", argtype: "GdkPixbuf.Pixbuf", paramtype: :param, txo: "none"}}
*/

/* set_icon_from_stock unavailable due to typing issues
 {:doh, %{argctype: "GtkEntryIconPosition", argname: "icon_pos", argtype: "EntryIconPosition", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "stock_id", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* set_icon_sensitive unavailable due to typing issues
 {:doh, %{argctype: "GtkEntryIconPosition", argname: "icon_pos", argtype: "EntryIconPosition", paramtype: :param, txo: "none"}}
*/

/* set_icon_tooltip_markup unavailable due to typing issues
 {:doh, %{argctype: "GtkEntryIconPosition", argname: "icon_pos", argtype: "EntryIconPosition", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "tooltip", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* set_icon_tooltip_text unavailable due to typing issues
 {:doh, %{argctype: "GtkEntryIconPosition", argname: "icon_pos", argtype: "EntryIconPosition", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "tooltip", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* set_inner_border unavailable due to typing issues
 {:doh, %{argctype: "const GtkBorder*", argname: "border", argtype: "Border", paramtype: :param, txo: "none"}}
*/

/* set_input_hints unavailable due to typing issues
 {:doh, %{argctype: "GtkInputHints", argname: "hints", argtype: "InputHints", paramtype: :param, txo: "none"}}
*/

/* set_input_purpose unavailable due to typing issues
 {:doh, %{argctype: "GtkInputPurpose", argname: "purpose", argtype: "InputPurpose", paramtype: :param, txo: "none"}}
*/

/* set_invisible_char unavailable due to typing issues
 {:doh, %{argctype: "gunichar", argname: "ch", argtype: "gunichar", paramtype: :param, txo: "none"}}
*/

fun set_max_length(max_pony: I32): None =>
  @gtk_entry_set_max_length[None](widget, max_pony)

fun set_max_width_chars(n_chars_pony: I32): None =>
  @gtk_entry_set_max_width_chars[None](widget, n_chars_pony)

fun set_overwrite_mode(overwrite_pony: Bool): None =>
  @gtk_entry_set_overwrite_mode[None](widget, overwrite_pony)

/* set_placeholder_text unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "text", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* set_progress_fraction unavailable due to typing issues
 {:doh, %{argctype: "gdouble", argname: "fraction", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/

/* set_progress_pulse_step unavailable due to typing issues
 {:doh, %{argctype: "gdouble", argname: "fraction", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/

/* set_tabs unavailable due to typing issues
 {:doh, %{argctype: "PangoTabArray*", argname: "tabs", argtype: "Pango.TabArray", paramtype: :param, txo: "none"}}
*/

/* set_text unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "text", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

fun set_visibility(visible_pony: Bool): None =>
  @gtk_entry_set_visibility[None](widget, visible_pony)

fun set_width_chars(n_chars_pony: I32): None =>
  @gtk_entry_set_width_chars[None](widget, n_chars_pony)

fun text_index_to_layout_index(text_index_pony: I32): I32 =>
  @gtk_entry_text_index_to_layout_index[I32](widget, text_index_pony)

fun unset_invisible_char(): None =>
  @gtk_entry_unset_invisible_char[None](widget)

