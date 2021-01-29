/*
   needs: ["GObjectREF", "GtkWidget val"]
provides: ["GtkGestureZoom val"]
*/
use "../gobject"
class val GtkGestureZoom is GtkWidget
"""
#GtkGestureZoom is a #GtkGesture implementation able to recognize
pinch/zoom gestures, whenever the distance between both tracked
sequences changes, the #GtkGestureZoom::scale-changed signal is
emitted to report the scale factor.
"""
  var widget: GObjectREF val

  fun gtkwidget(): GObjectREF val => widget

  new val create_from_GtkBuilder(gtkbuilder: GtkBuilder, glade_id: String) =>
    widget = @gtk_builder_get_object[GObjectREF](gtkbuilder.gtkwidget(), glade_id.cstring())

  new val create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'

  new val never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF


  new val create(widget_pony: GtkWidget val) =>
    widget = @gtk_gesture_zoom_new[GObjectREF](widget_pony.gtkwidget()) //


/* get_scale_delta unavailable due to return typing issues
If @gesture is active, this function returns the zooming difference
since the gesture was recognized (hence the starting point is
considered 1:1). If @gesture is not active, 1 is returned.
{:argctype, "gdouble"}
{:argname, "rv"}
{:argtype, "gdouble"}
{:paramtype, :param}
{:txo, "none"} */

