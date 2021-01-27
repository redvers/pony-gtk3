/*
   needs: ["Bool", "GtkWidget", "U32", "GObjectREF"]
provides: ["GtkEventControllerKey"]
*/
use "../gobject"
class GtkEventControllerKey is GtkWidget
"""
#GtkEventControllerKey is an event controller meant for situations
where you need access to key events.

This object was added in 3.24.
"""
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget

  new create_from_GtkBuilder(gtkbuilder: GtkBuilder, glade_id: String) =>
    widget = @gtk_builder_get_object[GObjectREF](gtkbuilder.gtkwidget(), glade_id.cstring())

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'

  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF


  new create(widget_pony: GtkWidget) =>
    widget = @gtk_event_controller_key_new[GObjectREF](widget_pony.gtkwidget()) //


fun forward(widget_pony: GtkWidget): Bool =>
"""
No provided documentation
"""
  @gtk_event_controller_key_forward[Bool](widget, widget_pony.gtkwidget())

fun get_group(): U32 =>
"""
No provided documentation
"""
  @gtk_event_controller_key_get_group[U32](widget)

/* get_im_context unavailable due to return typing issues
{:argctype, "GtkIMContext*"}
{:argname, "rv"}
{:argtype, "IMContext"}
{:paramtype, :param}
{:txo, "none"} */

/* set_im_context unavailable due to typing issues
 {:doh, %{argctype: "GtkIMContext*", argname: "im_context", argtype: "IMContext", paramtype: :param, txo: "none"}}
*/

