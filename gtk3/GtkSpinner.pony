/*
   needs: ["None", "GObjectREF"]
provides: ["GtkSpinner"]
*/
use "../gobject"
class GtkSpinner is GtkWidget
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

