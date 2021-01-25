/*
   needs: ["GObjectREF", "GtkWidget"]
provides: ["GtkGestureMultiPress"]
*/
class GtkGestureMultiPress is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create(widget_pony: GtkWidget) =>
    widget = @gtk_gesture_multi_press_new[GObjectREF](widget_pony.gtkwidget()) //


/* get_area unavailable due to typing issues
 {:doh, %{argctype: "GdkRectangle*", argname: "rect", argtype: "Gdk.Rectangle", paramtype: :param, txo: "none"}}
*/

/* set_area unavailable due to typing issues
 {:doh, %{argctype: "const GdkRectangle*", argname: "rect", argtype: "Gdk.Rectangle", paramtype: :param, txo: "none"}}
*/

