/*
   needs: ["GObjectREF", "GtkWidget"]
provides: ["GtkGestureRotate"]
*/
use "../gobject"
class GtkGestureRotate is GtkWidget
"""
#GtkGestureRotate is a #GtkGesture implementation able to recognize
2-finger rotations, whenever the angle between both handled sequences
changes, the #GtkGestureRotate::angle-changed signal is emitted.
"""
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create(widget_pony: GtkWidget) =>
    widget = @gtk_gesture_rotate_new[GObjectREF](widget_pony.gtkwidget()) //


/* get_angle_delta unavailable due to return typing issues
{:argctype, "gdouble"}
{:argname, "rv"}
{:argtype, "gdouble"}
{:paramtype, :param}
{:txo, "none"} */

