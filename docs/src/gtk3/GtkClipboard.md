```````pony-full-source
/*
   needs: ["None", "Bool", "GObjectREF"]
provides: ["GtkClipboard"]
*/
use "../gobject"
class GtkClipboard is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'




fun clear(): None =>
  @gtk_clipboard_clear[None](widget)

/* get_display unavailable due to return typing issues
{:argctype, "GdkDisplay*"}
{:argname, "rv"}
{:argtype, "Gdk.Display"}
{:paramtype, :param}
{:txo, "none"} */

/* get_owner unavailable due to return typing issues
{:argctype, "GObject*"}
{:argname, "rv"}
{:argtype, "GObject.Object"}
{:paramtype, :param}
{:txo, "none"} */

/* get_selection unavailable due to return typing issues
{:argctype, "GdkAtom"}
{:argname, "rv"}
{:argtype, "Gdk.Atom"}
{:paramtype, :param}
{:txo, "notpresent"} */

/* request_contents unavailable due to typing issues
 {:doh, %{argctype: "GdkAtom", argname: "target", argtype: "Gdk.Atom", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkClipboardReceivedFunc", argname: "callback", argtype: "ClipboardReceivedFunc", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "user_data", argtype: "gpointer", paramtype: :param, txo: "none"}}
*/

/* request_image unavailable due to typing issues
 {:doh, %{argctype: "GtkClipboardImageReceivedFunc", argname: "callback", argtype: "ClipboardImageReceivedFunc", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "user_data", argtype: "gpointer", paramtype: :param, txo: "none"}}
*/

/* request_rich_text unavailable due to typing issues
 {:doh, %{argctype: "GtkTextBuffer*", argname: "buffer", argtype: "TextBuffer", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkClipboardRichTextReceivedFunc", argname: "callback", argtype: "ClipboardRichTextReceivedFunc", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "user_data", argtype: "gpointer", paramtype: :param, txo: "none"}}
*/

/* request_targets unavailable due to typing issues
 {:doh, %{argctype: "GtkClipboardTargetsReceivedFunc", argname: "callback", argtype: "ClipboardTargetsReceivedFunc", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "user_data", argtype: "gpointer", paramtype: :param, txo: "none"}}
*/

/* request_text unavailable due to typing issues
 {:doh, %{argctype: "GtkClipboardTextReceivedFunc", argname: "callback", argtype: "ClipboardTextReceivedFunc", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "user_data", argtype: "gpointer", paramtype: :param, txo: "none"}}
*/

/* request_uris unavailable due to typing issues
 {:doh, %{argctype: "GtkClipboardURIReceivedFunc", argname: "callback", argtype: "ClipboardURIReceivedFunc", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "user_data", argtype: "gpointer", paramtype: :param, txo: "none"}}
*/

/* set_can_store unavailable due to typing issues
 {:doh, %{argctype: "", argname: "targets", argtype: "", paramtype: :param, txo: "none"}}
*/

/* set_image unavailable due to typing issues
 {:doh, %{argctype: "GdkPixbuf*", argname: "pixbuf", argtype: "GdkPixbuf.Pixbuf", paramtype: :param, txo: "none"}}
*/

/* set_text unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "text", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* set_with_data unavailable due to typing issues
 {:doh, %{argctype: "", argname: "targets", argtype: "", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkClipboardGetFunc", argname: "get_func", argtype: "ClipboardGetFunc", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkClipboardClearFunc", argname: "clear_func", argtype: "ClipboardClearFunc", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "user_data", argtype: "gpointer", paramtype: :param, txo: "none"}}
*/

/* set_with_owner unavailable due to typing issues
 {:doh, %{argctype: "", argname: "targets", argtype: "", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkClipboardGetFunc", argname: "get_func", argtype: "ClipboardGetFunc", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkClipboardClearFunc", argname: "clear_func", argtype: "ClipboardClearFunc", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GObject*", argname: "owner", argtype: "GObject.Object", paramtype: :param, txo: "none"}}
*/

fun store(): None =>
  @gtk_clipboard_store[None](widget)

/* wait_for_contents unavailable due to return typing issues
{:argctype, "GtkSelectionData*"}
{:argname, "rv"}
{:argtype, "SelectionData"}
{:paramtype, :param}
{:txo, "full"} */

/* wait_for_image unavailable due to return typing issues
{:argctype, "GdkPixbuf*"}
{:argname, "rv"}
{:argtype, "GdkPixbuf.Pixbuf"}
{:paramtype, :param}
{:txo, "full"} */

/* wait_for_rich_text unavailable due to return typing issues
{:argctype, ""}
{:argname, "rv"}
{:argtype, ""}
{:paramtype, :param}
{:txo, "full"} */

/* wait_for_targets unavailable due to typing issues
 {:doh, %{argctype: "", argname: "targets", argtype: "", paramtype: :param, txo: "container"}}
{:doh, %{argctype: "gint*", argname: "n_targets", argtype: "gint", paramtype: :param, txo: "full"}}
*/

/* wait_for_text unavailable due to return typing issues
{:argctype, "gchar*"}
{:argname, "rv"}
{:argtype, "utf8"}
{:paramtype, :param}
{:txo, "full"} */

/* wait_for_uris unavailable due to return typing issues
{:argctype, ""}
{:argname, "rv"}
{:argtype, ""}
{:paramtype, :param}
{:txo, "full"} */

fun wait_is_image_available(): Bool =>
  @gtk_clipboard_wait_is_image_available[Bool](widget)

/* wait_is_rich_text_available unavailable due to typing issues
 {:doh, %{argctype: "GtkTextBuffer*", argname: "buffer", argtype: "TextBuffer", paramtype: :param, txo: "none"}}
*/

/* wait_is_target_available unavailable due to typing issues
 {:doh, %{argctype: "GdkAtom", argname: "target", argtype: "Gdk.Atom", paramtype: :param, txo: "none"}}
*/

fun wait_is_text_available(): Bool =>
  @gtk_clipboard_wait_is_text_available[Bool](widget)

fun wait_is_uris_available(): Bool =>
  @gtk_clipboard_wait_is_uris_available[Bool](widget)


```````