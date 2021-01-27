/*
   needs: ["None", "GObjectREF"]
provides: ["GtkSpinner"]
*/
use "../gobject"
class GtkSpinner is GtkWidget
"""
A GtkSpinner widget displays an icon-size spinning animation.
It is often used as an alternative to a #GtkProgressBar for
displaying indefinite activity, instead of actual progress.

To start the animation, use gtk_spinner_start(), to stop it
use gtk_spinner_stop().

# CSS nodes

GtkSpinner has a single CSS node with the name spinner. When the animation is
active, the :checked pseudoclass is added to this node.
"""
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create() =>
    widget = @gtk_spinner_new[GObjectREF]() //


fun start(): None =>
"""
Starts the animation of the spinner.
"""
  @gtk_spinner_start[None](widget)

fun stop(): None =>
"""
Stops the animation of the spinner.
"""
  @gtk_spinner_stop[None](widget)

