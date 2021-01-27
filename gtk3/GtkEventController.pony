/*
   needs: ["None", "GObjectREF"]
provides: ["GtkEventController"]
*/
use "../gobject"
class GtkEventController is GtkWidget
"""
#GtkEventController is a base, low-level implementation for event
controllers. Those react to a series of #GdkEvents, and possibly trigger
actions as a consequence of those.
"""
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'




/* get_propagation_phase unavailable due to return typing issues
{:argctype, "GtkPropagationPhase"}
{:argname, "rv"}
{:argtype, "PropagationPhase"}
{:paramtype, :param}
{:txo, "none"} */

/* get_widget unavailable due to return typing issues
{:argctype, "GtkWidget*"}
{:argname, "rv"}
{:argtype, "Widget"}
{:paramtype, :param}
{:txo, "none"} */

/* handle_event unavailable due to typing issues
 {:doh, %{argctype: "const GdkEvent*", argname: "event", argtype: "Gdk.Event", paramtype: :param, txo: "none"}}
*/

fun reset(): None =>
"""
Resets the @controller to a clean state. Every interaction
the controller did through #GtkEventController::handle-event
will be dropped at this point.
"""
  @gtk_event_controller_reset[None](widget)

/* set_propagation_phase unavailable due to typing issues
 {:doh, %{argctype: "GtkPropagationPhase", argname: "phase", argtype: "PropagationPhase", paramtype: :param, txo: "none"}}
*/

