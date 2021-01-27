/*
   needs: ["GObjectREF"]
provides: ["GtkVSeparator"]
*/
use "../gobject"
class GtkVSeparator is GtkWidget
"""
The #GtkVSeparator widget is a vertical separator, used to group the
widgets within a window. It displays a vertical line with a shadow to
make it appear sunken into the interface.

GtkVSeparator has been deprecated, use #GtkSeparator instead.
"""
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create() =>
    widget = @gtk_vseparator_new[GObjectREF]() //



