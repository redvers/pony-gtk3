/*
   needs: ["None", "Bool", "I32", "GObjectREF"]
provides: ["GtkNativeDialog"]
*/
use "../gobject"
class GtkNativeDialog is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'




fun destroy(): None =>
  @gtk_native_dialog_destroy[None](widget)

fun get_modal(): Bool =>
  @gtk_native_dialog_get_modal[Bool](widget)

/* get_title unavailable due to return typing issues
{:argctype, "const char*"}
{:argname, "rv"}
{:argtype, "utf8"}
{:paramtype, :param}
{:txo, "none"} */

/* get_transient_for unavailable due to return typing issues
{:argctype, "GtkWindow*"}
{:argname, "rv"}
{:argtype, "Window"}
{:paramtype, :param}
{:txo, "none"} */

fun get_visible(): Bool =>
  @gtk_native_dialog_get_visible[Bool](widget)

fun hide(): None =>
  @gtk_native_dialog_hide[None](widget)

fun run(): I32 =>
  @gtk_native_dialog_run[I32](widget)

fun set_modal(modal_pony: Bool): None =>
  @gtk_native_dialog_set_modal[None](widget, modal_pony)

/* set_title unavailable due to typing issues
 {:doh, %{argctype: "const char*", argname: "title", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* set_transient_for unavailable due to typing issues
 {:doh, %{argctype: "GtkWindow*", argname: "parent", argtype: "Window", paramtype: :param, txo: "none"}}
*/

fun show(): None =>
  @gtk_native_dialog_show[None](widget)

