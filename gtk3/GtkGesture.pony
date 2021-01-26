/*
   needs: ["Bool", "None", "GObjectREF"]
provides: ["GtkGesture"]
*/
use "../gobject"
class GtkGesture is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'




/* get_bounding_box unavailable due to typing issues
 {:doh, %{argctype: "GdkRectangle*", argname: "rect", argtype: "Gdk.Rectangle", paramtype: :param, txo: "none"}}
*/

/* get_bounding_box_center unavailable due to typing issues
 {:doh, %{argctype: "gdouble*", argname: "x", argtype: "gdouble", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gdouble*", argname: "y", argtype: "gdouble", paramtype: :param, txo: "full"}}
*/

/* get_device unavailable due to return typing issues
{:argctype, "GdkDevice*"}
{:argname, "rv"}
{:argtype, "Gdk.Device"}
{:paramtype, :param}
{:txo, "none"} */

/* get_group unavailable due to return typing issues
{:argctype, "GList*"}
{:argname, "rv"}
{:argtype, "GLib.List"}
{:paramtype, :param}
{:txo, "container"} */

/* get_last_event unavailable due to return typing issues
{:argctype, "const GdkEvent*"}
{:argname, "rv"}
{:argtype, "Gdk.Event"}
{:paramtype, :param}
{:txo, "none"} */

/* get_last_updated_sequence unavailable due to return typing issues
{:argctype, "GdkEventSequence*"}
{:argname, "rv"}
{:argtype, "Gdk.EventSequence"}
{:paramtype, :param}
{:txo, "none"} */

/* get_point unavailable due to typing issues
 {:doh, %{argctype: "GdkEventSequence*", argname: "sequence", argtype: "Gdk.EventSequence", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble*", argname: "x", argtype: "gdouble", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gdouble*", argname: "y", argtype: "gdouble", paramtype: :param, txo: "full"}}
*/

/* get_sequence_state unavailable due to return typing issues
{:argctype, "GtkEventSequenceState"}
{:argname, "rv"}
{:argtype, "EventSequenceState"}
{:paramtype, :param}
{:txo, "none"} */

/* get_sequences unavailable due to return typing issues
{:argctype, "GList*"}
{:argname, "rv"}
{:argtype, "GLib.List"}
{:paramtype, :param}
{:txo, "container"} */

/* get_window unavailable due to return typing issues
{:argctype, "GdkWindow*"}
{:argname, "rv"}
{:argtype, "Gdk.Window"}
{:paramtype, :param}
{:txo, "none"} */

/* group unavailable due to typing issues
 {:doh, %{argctype: "GtkGesture*", argname: "gesture", argtype: "Gesture", paramtype: :param, txo: "none"}}
*/

/* handles_sequence unavailable due to typing issues
 {:doh, %{argctype: "GdkEventSequence*", argname: "sequence", argtype: "Gdk.EventSequence", paramtype: :param, txo: "none"}}
*/

fun is_active(): Bool =>
  @gtk_gesture_is_active[Bool](widget)

/* is_grouped_with unavailable due to typing issues
 {:doh, %{argctype: "GtkGesture*", argname: "other", argtype: "Gesture", paramtype: :param, txo: "none"}}
*/

fun is_recognized(): Bool =>
  @gtk_gesture_is_recognized[Bool](widget)

/* set_sequence_state unavailable due to typing issues
 {:doh, %{argctype: "GdkEventSequence*", argname: "sequence", argtype: "Gdk.EventSequence", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkEventSequenceState", argname: "state", argtype: "EventSequenceState", paramtype: :param, txo: "none"}}
*/

/* set_state unavailable due to typing issues
 {:doh, %{argctype: "GtkEventSequenceState", argname: "state", argtype: "EventSequenceState", paramtype: :param, txo: "none"}}
*/

/* set_window unavailable due to typing issues
 {:doh, %{argctype: "GdkWindow*", argname: "window", argtype: "Gdk.Window", paramtype: :param, txo: "none"}}
*/

fun ungroup(): None =>
  @gtk_gesture_ungroup[None](widget)

