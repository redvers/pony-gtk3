```````pony-full-source
/*
   needs: ["GObjectREF", "GtkWidget val"]
provides: ["GtkGestureStylus val"]
*/
use "../gobject"
class val GtkGestureStylus is GtkWidget
"""
#GtkGestureStylus is a #GtkGesture implementation specific to stylus
input. The provided signals just provide the basic information
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
    widget = @gtk_gesture_stylus_new[GObjectREF](widget_pony.gtkwidget()) //


  fun pony_NOT_IMPLEMENTED_YET_get_axes(): None =>
    """
    Returns the current values for the requested @axes. This function
must be called from either the #GtkGestureStylus:down,
#GtkGestureStylus:motion, #GtkGestureStylus:up or #GtkGestureStylus:proximity
signals.

    {:doh, %{argctype: "", argname: "axes", argtype: "", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "", argname: "values", argtype: "", paramtype: :param, txo: "full"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_axis(): None =>
    """
    Returns the current value for the requested @axis. This function
must be called from either the #GtkGestureStylus:down,
#GtkGestureStylus:motion, #GtkGestureStylus:up or #GtkGestureStylus:proximity
signals.

    {:doh, %{argctype: "GdkAxisUse", argname: "axis", argtype: "Gdk.AxisUse", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble*", argname: "value", argtype: "gdouble", paramtype: :param, txo: "full"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_device_tool(): None =>
    """
    Returns the #GdkDeviceTool currently driving input through this gesture.
This function must be called from either the #GtkGestureStylus::down,
#GtkGestureStylus::motion, #GtkGestureStylus::up or #GtkGestureStylus::proximity
signal handlers.

    {:argctype, "GdkDeviceTool*"}
{:argname, "rv"}
{:argtype, "Gdk.DeviceTool"}
{:paramtype, :param}
{:txo, "none"}
*/
    """


```````