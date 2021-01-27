```````pony-full-source
/*
   needs: ["GObjectREF", "GtkWidget"]
provides: ["GtkGestureSwipe"]
*/
use "../gobject"
class GtkGestureSwipe is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create(widget_pony: GtkWidget) =>
    widget = @gtk_gesture_swipe_new[GObjectREF](widget_pony.gtkwidget()) //


/* get_velocity unavailable due to typing issues
 {:doh, %{argctype: "gdouble*", argname: "velocity_x", argtype: "gdouble", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gdouble*", argname: "velocity_y", argtype: "gdouble", paramtype: :param, txo: "full"}}
*/


```````