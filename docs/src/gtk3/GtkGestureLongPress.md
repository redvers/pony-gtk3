```````pony-full-source
/*
   needs: ["GObjectREF", "GtkWidget"]
provides: ["GtkGestureLongPress"]
*/
use "../gobject"
class GtkGestureLongPress is GtkWidget
"""
#GtkGestureLongPress is a #GtkGesture implementation able to recognize
long presses, triggering the #GtkGestureLongPress::pressed after the
timeout is exceeded.

If the touchpoint is lifted before the timeout passes, or if it drifts
too far of the initial press point, the #GtkGestureLongPress::cancelled
signal will be emitted.
"""
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create(widget_pony: GtkWidget) =>
    widget = @gtk_gesture_long_press_new[GObjectREF](widget_pony.gtkwidget()) //




```````