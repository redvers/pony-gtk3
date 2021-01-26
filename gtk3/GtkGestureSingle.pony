/*
   needs: ["U32", "Bool", "None", "GObjectREF"]
provides: ["GtkGestureSingle"]
*/
use "../gobject"
class GtkGestureSingle is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'




fun get_button(): U32 =>
  @gtk_gesture_single_get_button[U32](widget)

fun get_current_button(): U32 =>
  @gtk_gesture_single_get_current_button[U32](widget)

/* get_current_sequence unavailable due to return typing issues
{:argctype, "GdkEventSequence*"}
{:argname, "rv"}
{:argtype, "Gdk.EventSequence"}
{:paramtype, :param}
{:txo, "full"} */

fun get_exclusive(): Bool =>
  @gtk_gesture_single_get_exclusive[Bool](widget)

fun get_touch_only(): Bool =>
  @gtk_gesture_single_get_touch_only[Bool](widget)

fun set_button(button_pony: U32): None =>
  @gtk_gesture_single_set_button[None](widget, button_pony)

fun set_exclusive(exclusive_pony: Bool): None =>
  @gtk_gesture_single_set_exclusive[None](widget, exclusive_pony)

fun set_touch_only(touch_only_pony: Bool): None =>
  @gtk_gesture_single_set_touch_only[None](widget, touch_only_pony)

