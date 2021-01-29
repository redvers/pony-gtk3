```````pony-full-source
/*
   needs: ["GObjectREF", "GtkWidget val", "None"]
provides: ["GtkEventController val"]
*/
use "../gobject"
class val GtkEventController is GtkWidget
"""
#GtkEventController is a base, low-level implementation for event
controllers. Those react to a series of #GdkEvents, and possibly trigger
actions as a consequence of those.
"""
  var widget: GObjectREF val

  fun gtkwidget(): GObjectREF val => widget

  new val create_from_GtkBuilder(gtkbuilder: GtkBuilder, glade_id: String) =>
    widget = @gtk_builder_get_object[GObjectREF](gtkbuilder.gtkwidget(), glade_id.cstring())

  new val create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'

  new val never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF




  fun pony_NOT_IMPLEMENTED_YET_get_propagation_phase(): None =>
    """
    Gets the propagation phase at which @controller handles events.

    {:argctype, "GtkPropagationPhase"}
{:argname, "rv"}
{:argtype, "PropagationPhase"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

/* Needs conversion code 
Returns the #GtkWidget this controller relates to.
  fun get_widget(): GtkWidget val =>
    @gtk_event_controller_get_widget[GObjectREF](widget)
*/

  fun pony_NOT_IMPLEMENTED_YET_handle_event(): None =>
    """
    Feeds an events into @controller, so it can be interpreted
and the controller actions triggered.

    {:doh, %{argctype: "const GdkEvent*", argname: "event", argtype: "Gdk.Event", paramtype: :param, txo: "none"}}
*/
    """

fun reset(): None =>
"""
Resets the @controller to a clean state. Every interaction
the controller did through #GtkEventController::handle-event
will be dropped at this point.
"""
  @gtk_event_controller_reset[None](widget)

  fun pony_NOT_IMPLEMENTED_YET_set_propagation_phase(): None =>
    """
    Sets the propagation phase at which a controller handles events.

If @phase is %GTK_PHASE_NONE, no automatic event handling will be
performed, but other additional gesture maintenance will. In that phase,
the events can be managed by calling gtk_event_controller_handle_event().

    {:doh, %{argctype: "GtkPropagationPhase", argname: "phase", argtype: "PropagationPhase", paramtype: :param, txo: "none"}}
*/
    """


```````