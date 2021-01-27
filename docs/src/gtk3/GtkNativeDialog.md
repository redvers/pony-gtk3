```````pony-full-source
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
"""
Destroys a dialog.

When a dialog is destroyed, it will break any references it holds
to other objects. If it is visible it will be hidden and any underlying
window system resources will be destroyed.

Note that this does not release any reference to the object (as opposed to
destroying a GtkWindow) because there is no reference from the windowing
system to the #GtkNativeDialog.
"""
  @gtk_native_dialog_destroy[None](widget)

fun get_modal(): Bool =>
"""
Returns whether the dialog is modal. See gtk_native_dialog_set_modal().
"""
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
"""
Determines whether the dialog is visible.
"""
  @gtk_native_dialog_get_visible[Bool](widget)

fun hide(): None =>
"""
Hides the dialog if it is visilbe, aborting any interaction. Once this
is called the  #GtkNativeDialog::response signal will not be emitted
until after the next call to gtk_native_dialog_show().

If the dialog is not visible this does nothing.
"""
  @gtk_native_dialog_hide[None](widget)

fun run(): I32 =>
"""
Blocks in a recursive main loop until @self emits the
#GtkNativeDialog::response signal. It then returns the response ID
from the ::response signal emission.

Before entering the recursive main loop, gtk_native_dialog_run()
calls gtk_native_dialog_show() on the dialog for you.

After gtk_native_dialog_run() returns, then dialog will be hidden.

Typical usage of this function might be:
|[<!-- language="C" -->
  gint result = gtk_native_dialog_run (GTK_NATIVE_DIALOG (dialog));
  switch (result)
    {
      case GTK_RESPONSE_ACCEPT:
         do_application_specific_something ();
         break;
      default:
         do_nothing_since_dialog_was_cancelled ();
         break;
    }
  g_object_unref (dialog);
]|

Note that even though the recursive main loop gives the effect of a
modal dialog (it prevents the user from interacting with other
windows in the same window group while the dialog is run), callbacks
such as timeouts, IO channel watches, DND drops, etc, will
be triggered during a gtk_nautilus_dialog_run() call.
"""
  @gtk_native_dialog_run[I32](widget)

fun set_modal(modal_pony: Bool): None =>
"""
Sets a dialog modal or non-modal. Modal dialogs prevent interaction
with other windows in the same application. To keep modal dialogs
on top of main application windows, use
gtk_native_dialog_set_transient_for() to make the dialog transient for the
parent; most [window managers][gtk-X11-arch]
will then disallow lowering the dialog below the parent.
"""
  @gtk_native_dialog_set_modal[None](widget, modal_pony)

/* set_title unavailable due to typing issues
 {:doh, %{argctype: "const char*", argname: "title", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* set_transient_for unavailable due to typing issues
 {:doh, %{argctype: "GtkWindow*", argname: "parent", argtype: "Window", paramtype: :param, txo: "none"}}
*/

fun show(): None =>
"""
Shows the dialog on the display, allowing the user to interact with
it. When the user accepts the state of the dialog the dialog will
be automatically hidden and the #GtkNativeDialog::response signal
will be emitted.

Multiple calls while the dialog is visible will be ignored.
"""
  @gtk_native_dialog_show[None](widget)


```````