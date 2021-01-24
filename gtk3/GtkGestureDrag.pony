/*
   needs: ["GObjectREF", "GtkWidget"]
provides: ["GtkGestureDrag"]
*/
class GtkGestureDrag is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF


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

