```````pony-full-source
/*
   needs: ["GObjectREF"]
provides: ["GtkSpinButtonAccessible"]
*/
use "../gobject"
class GtkSpinButtonAccessible is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'






```````