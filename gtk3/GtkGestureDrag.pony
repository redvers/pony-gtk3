/*
   needs: ["GObjectREF", "GtkWidget"]
provides: ["GtkGestureDrag"]
*/
use "../gobject"
class GtkGestureDrag is GtkWidget
"""
#GtkGestureDrag is a #GtkGesture implementation that recognizes drag
operations. The drag operation itself can be tracked throught the
#GtkGestureDrag::drag-begin, #GtkGestureDrag::drag-update and
#GtkGestureDrag::drag-end signals, or the relevant coordinates be
extracted through gtk_gesture_drag_get_offset() and
gtk_gesture_drag_get_start_point().
"""
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create(widget_pony: GtkWidget) =>
    widget = @gtk_gesture_drag_new[GObjectREF](widget_pony.gtkwidget()) //


/* get_offset unavailable due to typing issues
 {:doh, %{argctype: "gdouble*", argname: "x", argtype: "gdouble", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gdouble*", argname: "y", argtype: "gdouble", paramtype: :param, txo: "full"}}
*/

/* get_start_point unavailable due to typing issues
 {:doh, %{argctype: "gdouble*", argname: "x", argtype: "gdouble", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gdouble*", argname: "y", argtype: "gdouble", paramtype: :param, txo: "full"}}
*/

