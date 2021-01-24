/*
   needs: ["GObjectREF", "GtkWidget"]
provides: ["GtkGestureLongPress"]
*/
class GtkGestureLongPress is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF


  new create(widget_pony: GtkWidget) =>
    widget = @gtk_gesture_long_press_new[GObjectREF](widget_pony.gtkwidget()) //



