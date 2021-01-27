/*
   needs: ["GObjectREF", "GtkWidget"]
provides: ["GtkEventControllerMotion"]
*/
use "../gobject"
class GtkEventControllerMotion is GtkWidget
"""
#GtkEventControllerMotion is an event controller meant for situations
where you need to track the position of the pointer.

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
    widget = @gtk_event_controller_motion_new[GObjectREF](widget_pony.gtkwidget()) //



