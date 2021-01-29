/*
   needs: ["Bool", "None", "GObjectREF"]
provides: ["GtkGesture val"]
*/
use "../gobject"
class val GtkGesture is GtkWidget
"""
#GtkGesture is the base object for gesture recognition, although this
object is quite generalized to serve as a base for multi-touch gestures,
it is suitable to implement single-touch and pointer-based gestures (using
the special %NULL #GdkEventSequence value for these).

The number of touches that a #GtkGesture need to be recognized is controlled
by the #GtkGesture:n-points property, if a gesture is keeping track of less
or more than that number of sequences, it won't check wether the gesture
is recognized.

As soon as the gesture has the expected number of touches, the gesture will
run the #GtkGesture::check signal regularly on input events until the gesture
is recognized, the criteria to consider a gesture as "recognized" is left to
#GtkGesture subclasses.

A recognized gesture will then emit the following signals:
- #GtkGesture::begin when the gesture is recognized.
- A number of #GtkGesture::update, whenever an input event is processed.
- #GtkGesture::end when the gesture is no longer recognized.

## Event propagation

In order to receive events, a gesture needs to either set a propagation phase
through gtk_event_controller_set_propagation_phase(), or feed those manually
through gtk_event_controller_handle_event().

In the capture phase, events are propagated from the toplevel down to the
target widget, and gestures that are attached to containers above the widget
get a chance to interact with the event before it reaches the target.

After the capture phase, GTK+ emits the traditional #GtkWidget::button-press-event,
#GtkWidget::button-release-event, #GtkWidget::touch-event, etc signals. Gestures
with the %GTK_PHASE_TARGET phase are fed events from the default #GtkWidget::event
handlers.

In the bubble phase, events are propagated up from the target widget to the
toplevel, and gestures that are attached to containers above the widget get
a chance to interact with events that have not been handled yet.

## States of a sequence # {#touch-sequence-states}

Whenever input interaction happens, a single event may trigger a cascade of
#GtkGestures, both across the parents of the widget receiving the event and
in parallel within an individual widget. It is a responsibility of the
widgets using those gestures to set the state of touch sequences accordingly
in order to enable cooperation of gestures around the #GdkEventSequences
triggering those.

Within a widget, gestures can be grouped through gtk_gesture_group(),
grouped gestures synchronize the state of sequences, so calling
gtk_gesture_set_sequence_state() on one will effectively propagate
the state throughout the group.

By default, all sequences start out in the #GTK_EVENT_SEQUENCE_NONE state,
sequences in this state trigger the gesture event handler, but event
propagation will continue unstopped by gestures.

If a sequence enters into the #GTK_EVENT_SEQUENCE_DENIED state, the gesture
group will effectively ignore the sequence, letting events go unstopped
through the gesture, but the "slot" will still remain occupied while
the touch is active.

If a sequence enters in the #GTK_EVENT_SEQUENCE_CLAIMED state, the gesture
group will grab all interaction on the sequence, by:
- Setting the same sequence to #GTK_EVENT_SEQUENCE_DENIED on every other gesture
  group within the widget, and every gesture on parent widgets in the propagation
  chain.
- calling #GtkGesture::cancel on every gesture in widgets underneath in the
  propagation chain.
- Stopping event propagation after the gesture group handles the event.

Note: if a sequence is set early to #GTK_EVENT_SEQUENCE_CLAIMED on
#GDK_TOUCH_BEGIN/#GDK_BUTTON_PRESS (so those events are captured before
reaching the event widget, this implies #GTK_PHASE_CAPTURE), one similar
event will emulated if the sequence changes to #GTK_EVENT_SEQUENCE_DENIED.
This way event coherence is preserved before event propagation is unstopped
again.

Sequence states can't be changed freely, see gtk_gesture_set_sequence_state()
to know about the possible lifetimes of a #GdkEventSequence.

## Touchpad gestures

On the platforms that support it, #GtkGesture will handle transparently
touchpad gesture events. The only precautions users of #GtkGesture should do
to enable this support are:
- Enabling %GDK_TOUCHPAD_GESTURE_MASK on their #GdkWindows
- If the gesture has %GTK_PHASE_NONE, ensuring events of type
  %GDK_TOUCHPAD_SWIPE and %GDK_TOUCHPAD_PINCH are handled by the #GtkGesture
"""
  var widget: GObjectREF val

  fun gtkwidget(): GObjectREF val => widget

  new val create_from_GtkBuilder(gtkbuilder: GtkBuilder, glade_id: String) =>
    widget = @gtk_builder_get_object[GObjectREF](gtkbuilder.gtkwidget(), glade_id.cstring())

  new val create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'

  new val never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF




/* get_bounding_box unavailable due to typing issues
If there are touch sequences being currently handled by @gesture,
this function returns %TRUE and fills in @rect with the bounding
box containing all active touches. Otherwise, %FALSE will be
returned.

Note: This function will yield unexpected results on touchpad
gestures. Since there is no correlation between physical and
pixel distances, these will look as if constrained in an
infinitely small area, @rect width and height will thus be 0
regardless of the number of touchpoints.
{:doh, %{argctype: "GdkRectangle*", argname: "rect", argtype: "Gdk.Rectangle", paramtype: :param, txo: "none"}}
*/

/* get_bounding_box_center unavailable due to typing issues
If there are touch sequences being currently handled by @gesture,
this function returns %TRUE and fills in @x and @y with the center
of the bounding box containing all active touches. Otherwise, %FALSE
will be returned.
{:doh, %{argctype: "gdouble*", argname: "x", argtype: "gdouble", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gdouble*", argname: "y", argtype: "gdouble", paramtype: :param, txo: "full"}}
*/

/* get_device unavailable due to return typing issues
Returns the master #GdkDevice that is currently operating
on @gesture, or %NULL if the gesture is not being interacted.
{:argctype, "GdkDevice*"}
{:argname, "rv"}
{:argtype, "Gdk.Device"}
{:paramtype, :param}
{:txo, "none"} */

/* get_group unavailable due to return typing issues
Returns all gestures in the group of @gesture
{:argctype, "GList*"}
{:argname, "rv"}
{:argtype, "GLib.List"}
{:paramtype, :param}
{:txo, "container"} */

/* get_last_event unavailable due to return typing issues
Returns the last event that was processed for @sequence.

Note that the returned pointer is only valid as long as the @sequence
is still interpreted by the @gesture. If in doubt, you should make
a copy of the event.
{:argctype, "const GdkEvent*"}
{:argname, "rv"}
{:argtype, "Gdk.Event"}
{:paramtype, :param}
{:txo, "none"} */

/* get_last_updated_sequence unavailable due to return typing issues
Returns the #GdkEventSequence that was last updated on @gesture.
{:argctype, "GdkEventSequence*"}
{:argname, "rv"}
{:argtype, "Gdk.EventSequence"}
{:paramtype, :param}
{:txo, "none"} */

/* get_point unavailable due to typing issues
If @sequence is currently being interpreted by @gesture, this
function returns %TRUE and fills in @x and @y with the last coordinates
stored for that event sequence. The coordinates are always relative to the
widget allocation.
{:doh, %{argctype: "GdkEventSequence*", argname: "sequence", argtype: "Gdk.EventSequence", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble*", argname: "x", argtype: "gdouble", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gdouble*", argname: "y", argtype: "gdouble", paramtype: :param, txo: "full"}}
*/

/* get_sequence_state unavailable due to return typing issues
Returns the @sequence state, as seen by @gesture.
{:argctype, "GtkEventSequenceState"}
{:argname, "rv"}
{:argtype, "EventSequenceState"}
{:paramtype, :param}
{:txo, "none"} */

/* get_sequences unavailable due to return typing issues
Returns the list of #GdkEventSequences currently being interpreted
by @gesture.
{:argctype, "GList*"}
{:argname, "rv"}
{:argtype, "GLib.List"}
{:paramtype, :param}
{:txo, "container"} */

/* get_window unavailable due to return typing issues
Returns the user-defined window that receives the events
handled by @gesture. See gtk_gesture_set_window() for more
information.
{:argctype, "GdkWindow*"}
{:argname, "rv"}
{:argtype, "Gdk.Window"}
{:paramtype, :param}
{:txo, "none"} */

/* group unavailable due to typing issues
Adds @gesture to the same group than @group_gesture. Gestures
are by default isolated in their own groups.

When gestures are grouped, the state of #GdkEventSequences
is kept in sync for all of those, so calling gtk_gesture_set_sequence_state(),
on one will transfer the same value to the others.

Groups also perform an "implicit grabbing" of sequences, if a
#GdkEventSequence state is set to #GTK_EVENT_SEQUENCE_CLAIMED on one group,
every other gesture group attached to the same #GtkWidget will switch the
state for that sequence to #GTK_EVENT_SEQUENCE_DENIED.
{:doh, %{argctype: "GtkGesture*", argname: "gesture", argtype: "Gesture", paramtype: :param, txo: "none"}}
*/

/* handles_sequence unavailable due to typing issues
Returns %TRUE if @gesture is currently handling events corresponding to
@sequence.
{:doh, %{argctype: "GdkEventSequence*", argname: "sequence", argtype: "Gdk.EventSequence", paramtype: :param, txo: "none"}}
*/

fun is_active(): Bool =>
"""
Returns %TRUE if the gesture is currently active.
A gesture is active meanwhile there are touch sequences
interacting with it.
"""
  @gtk_gesture_is_active[Bool](widget)

/* is_grouped_with unavailable due to typing issues
Returns %TRUE if both gestures pertain to the same group.
{:doh, %{argctype: "GtkGesture*", argname: "other", argtype: "Gesture", paramtype: :param, txo: "none"}}
*/

fun is_recognized(): Bool =>
"""
Returns %TRUE if the gesture is currently recognized.
A gesture is recognized if there are as many interacting
touch sequences as required by @gesture, and #GtkGesture::check
returned %TRUE for the sequences being currently interpreted.
"""
  @gtk_gesture_is_recognized[Bool](widget)

/* set_sequence_state unavailable due to typing issues
Sets the state of @sequence in @gesture. Sequences start
in state #GTK_EVENT_SEQUENCE_NONE, and whenever they change
state, they can never go back to that state. Likewise,
sequences in state #GTK_EVENT_SEQUENCE_DENIED cannot turn
back to a not denied state. With these rules, the lifetime
of an event sequence is constrained to the next four:

* None
* None → Denied
* None → Claimed
* None → Claimed → Denied

Note: Due to event handling ordering, it may be unsafe to
set the state on another gesture within a #GtkGesture::begin
signal handler, as the callback might be executed before
the other gesture knows about the sequence. A safe way to
perform this could be:

|[
static void
first_gesture_begin_cb (GtkGesture       *first_gesture,
                        GdkEventSequence *sequence,
                        gpointer          user_data)
{
  gtk_gesture_set_sequence_state (first_gesture, sequence, GTK_EVENT_SEQUENCE_CLAIMED);
  gtk_gesture_set_sequence_state (second_gesture, sequence, GTK_EVENT_SEQUENCE_DENIED);
}

static void
second_gesture_begin_cb (GtkGesture       *second_gesture,
                         GdkEventSequence *sequence,
                         gpointer          user_data)
{
  if (gtk_gesture_get_sequence_state (first_gesture, sequence) == GTK_EVENT_SEQUENCE_CLAIMED)
    gtk_gesture_set_sequence_state (second_gesture, sequence, GTK_EVENT_SEQUENCE_DENIED);
}
]|

If both gestures are in the same group, just set the state on
the gesture emitting the event, the sequence will be already
be initialized to the group's global state when the second
gesture processes the event.
{:doh, %{argctype: "GdkEventSequence*", argname: "sequence", argtype: "Gdk.EventSequence", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkEventSequenceState", argname: "state", argtype: "EventSequenceState", paramtype: :param, txo: "none"}}
*/

/* set_state unavailable due to typing issues
Sets the state of all sequences that @gesture is currently
interacting with. See gtk_gesture_set_sequence_state()
for more details on sequence states.
{:doh, %{argctype: "GtkEventSequenceState", argname: "state", argtype: "EventSequenceState", paramtype: :param, txo: "none"}}
*/

/* set_window unavailable due to typing issues
Sets a specific window to receive events about, so @gesture
will effectively handle only events targeting @window, or
a child of it. @window must pertain to gtk_event_controller_get_widget().
{:doh, %{argctype: "GdkWindow*", argname: "window", argtype: "Gdk.Window", paramtype: :param, txo: "none"}}
*/

fun ungroup(): None =>
"""
Separates @gesture into an isolated group.
"""
  @gtk_gesture_ungroup[None](widget)

