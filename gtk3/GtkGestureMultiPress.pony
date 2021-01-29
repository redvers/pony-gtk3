/*
   needs: ["GObjectREF", "GtkWidget val"]
provides: ["GtkGestureMultiPress val"]
*/
use "../gobject"
class val GtkGestureMultiPress is GtkWidget
"""
#GtkGestureMultiPress is a #GtkGesture implementation able to recognize
multiple clicks on a nearby zone, which can be listened for through the
#GtkGestureMultiPress::pressed signal. Whenever time or distance between
clicks exceed the GTK+ defaults, #GtkGestureMultiPress::stopped is emitted,
and the click counter is reset.

Callers may also restrict the area that is considered valid for a >1
touch/button press through gtk_gesture_multi_press_set_area(), so any
click happening outside that area is considered to be a first click of
its own.
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
    widget = @gtk_gesture_multi_press_new[GObjectREF](widget_pony.gtkwidget()) //


  fun pony_NOT_IMPLEMENTED_YET_get_area(): None =>
    """
    If an area was set through gtk_gesture_multi_press_set_area(),
this function will return %TRUE and fill in @rect with the
press area. See gtk_gesture_multi_press_set_area() for more
details on what the press area represents.

    {:doh, %{argctype: "GdkRectangle*", argname: "rect", argtype: "Gdk.Rectangle", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_set_area(): None =>
    """
    If @rect is non-%NULL, the press area will be checked to be
confined within the rectangle, otherwise the button count
will be reset so the press is seen as being the first one.
If @rect is %NULL, the area will be reset to an unrestricted
state.

Note: The rectangle is only used to determine whether any
non-first click falls within the expected area. This is not
akin to an input shape.

    {:doh, %{argctype: "const GdkRectangle*", argname: "rect", argtype: "Gdk.Rectangle", paramtype: :param, txo: "none"}}
*/
    """

