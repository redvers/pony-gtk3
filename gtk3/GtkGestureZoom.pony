/*
   needs: ["GObjectREF", "GtkWidget"]
provides: ["GtkGestureZoom"]
*/
use "../gobject"
class GtkGestureZoom is GtkWidget
"""
#GtkGestureZoom is a #GtkGesture implementation able to recognize
pinch/zoom gestures, whenever the distance between both tracked
sequences changes, the #GtkGestureZoom::scale-changed signal is
emitted to report the scale factor.
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
    widget = @gtk_gesture_zoom_new[GObjectREF](widget_pony.gtkwidget()) //


/* get_scale_delta unavailable due to return typing issues
{:argctype, "gdouble"}
{:argname, "rv"}
{:argtype, "gdouble"}
{:paramtype, :param}
{:txo, "none"} */

