```````pony-full-source
/*
   needs: ["GObjectREF", "GtkWidget"]
provides: ["GtkGestureStylus"]
*/
use "../gobject"
class GtkGestureStylus is GtkWidget
"""
#GtkGestureStylus is a #GtkGesture implementation specific to stylus
input. The provided signals just provide the basic information
"""
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create(widget_pony: GtkWidget) =>
    widget = @gtk_gesture_stylus_new[GObjectREF](widget_pony.gtkwidget()) //


/* get_axes unavailable due to typing issues
 {:doh, %{argctype: "", argname: "axes", argtype: "", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "", argname: "values", argtype: "", paramtype: :param, txo: "full"}}
*/

/* get_axis unavailable due to typing issues
 {:doh, %{argctype: "GdkAxisUse", argname: "axis", argtype: "Gdk.AxisUse", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble*", argname: "value", argtype: "gdouble", paramtype: :param, txo: "full"}}
*/

/* get_device_tool unavailable due to return typing issues
{:argctype, "GdkDeviceTool*"}
{:argname, "rv"}
{:argtype, "Gdk.DeviceTool"}
{:paramtype, :param}
{:txo, "none"} */


```````