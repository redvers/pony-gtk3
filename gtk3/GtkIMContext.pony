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
"""
Asks the widget that the input context is attached to to delete
characters around the cursor position by emitting the
GtkIMContext::delete_surrounding signal. Note that @offset and @n_chars
are in characters not in bytes which differs from the usage other
places in #GtkIMContext.

In order to use this function, you should first call
gtk_im_context_get_surrounding() to get the current context, and
call this function immediately afterwards to make sure that you
know what you are deleting. You should also account for the fact
that even if the signal was handled, the input context might not
have deleted all the characters that were requested to be deleted.

This function is used by an input method that wants to make
subsitutions in the existing text in response to new input. It is
not useful for applications.
"""
  @gtk_im_context_delete_surrounding[Bool](widget, offset_pony, n_chars_pony)

/* filter_keypress unavailable due to typing issues
 {:doh, %{argctype: "GdkEventKey*", argname: "event", argtype: "Gdk.EventKey", paramtype: :param, txo: "none"}}
*/

fun focus_in(): None =>
"""
Notify the input method that the widget to which this
input context corresponds has gained focus. The input method
may, for example, change the displayed feedback to reflect
this change.
"""
  @gtk_im_context_focus_in[None](widget)

fun focus_out(): None =>
"""
Notify the input method that the widget to which this
input context corresponds has lost focus. The input method
may, for example, change the displayed feedback or reset the contexts
state to reflect this change.
"""
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
"""
Notify the input method that a change such as a change in cursor
position has been made. This will typically cause the input
method to clear the preedit state.
"""
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
"""
Sets whether the IM context should use the preedit string
to display feedback. If @use_preedit is FALSE (default
is TRUE), then the IM context may use some other method to display
feedback, such as displaying it in a child of the root window.
"""
  @gtk_im_context_set_use_preedit[None](widget, use_preedit_pony)

