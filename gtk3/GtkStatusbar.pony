/*
   needs: ["None", "U32", "GObjectREF"]
provides: ["GtkStatusbar"]
*/
use "../gobject"
class GtkStatusbar is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create() =>
    widget = @gtk_statusbar_new[GObjectREF]() //


/* get_context_id unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "context_description", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* get_message_area unavailable due to return typing issues
{:argctype, "GtkWidget*"}
{:argname, "rv"}
{:argtype, "Box"}
{:paramtype, :param}
{:txo, "none"} */

fun pop(context_id_pony: U32): None =>
"""
Removes the first message in the #GtkStatusbar’s stack
with the given context id.

Note that this may not change the displayed message, if
the message at the top of the stack has a different
context id.
"""
  @gtk_statusbar_pop[None](widget, context_id_pony)

/* push unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "text", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

fun remove(context_id_pony: U32, message_id_pony: U32): None =>
"""
Forces the removal of a message from a statusbar’s stack.
The exact @context_id and @message_id must be specified.
"""
  @gtk_statusbar_remove[None](widget, context_id_pony, message_id_pony)

fun remove_all(context_id_pony: U32): None =>
"""
Forces the removal of all messages from a statusbar's
stack with the exact @context_id.
"""
  @gtk_statusbar_remove_all[None](widget, context_id_pony)

