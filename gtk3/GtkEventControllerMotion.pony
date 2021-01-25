/*
   needs: ["GObjectREF", "GtkWidget"]
provides: ["GtkEventControllerMotion"]
*/
class GtkEventControllerMotion is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create(widget_pony: GtkWidget) =>
    widget = @gtk_event_controller_motion_new[GObjectREF](widget_pony.gtkwidget()) //



