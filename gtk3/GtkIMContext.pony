/*
   needs: ["Bool", "I32", "None", "GObjectREF"]
provides: ["GtkIMContext"]
*/
use "../gobject"
class GtkIMContext is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'




fun delete_surrounding(offset_pony: I32, n_chars_pony: I32): Bool =>
  @gtk_im_context_delete_surrounding[Bool](widget, offset_pony, n_chars_pony)

/* filter_keypress unavailable due to typing issues
 {:doh, %{argctype: "GdkEventKey*", argname: "event", argtype: "Gdk.EventKey", paramtype: :param, txo: "none"}}
*/

fun focus_in(): None =>
  @gtk_im_context_focus_in[None](widget)

fun focus_out(): None =>
  @gtk_im_context_focus_out[None](widget)

/* get_preedit_string unavailable due to typing issues
 {:doh, %{argctype: "gchar**", argname: "str", argtype: "utf8", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "PangoAttrList**", argname: "attrs", argtype: "Pango.AttrList", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gint*", argname: "cursor_pos", argtype: "gint", paramtype: :param, txo: "full"}}
*/

/* get_surrounding unavailable due to typing issues
 {:doh, %{argctype: "gchar**", argname: "text", argtype: "utf8", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gint*", argname: "cursor_index", argtype: "gint", paramtype: :param, txo: "full"}}
*/

fun reset(): None =>
  @gtk_im_context_reset[None](widget)

/* set_client_window unavailable due to typing issues
 {:doh, %{argctype: "GdkWindow*", argname: "window", argtype: "Gdk.Window", paramtype: :param, txo: "none"}}
*/

/* set_cursor_location unavailable due to typing issues
 {:doh, %{argctype: "const GdkRectangle*", argname: "area", argtype: "Gdk.Rectangle", paramtype: :param, txo: "none"}}
*/

/* set_surrounding unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "text", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

fun set_use_preedit(use_preedit_pony: Bool): None =>
  @gtk_im_context_set_use_preedit[None](widget, use_preedit_pony)

