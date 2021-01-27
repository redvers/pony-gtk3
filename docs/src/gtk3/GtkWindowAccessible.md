```````pony-full-source
/*
   needs: ["GObjectREF"]
provides: ["GtkWindowAccessible"]
*/
use "../gobject"
class GtkWindowAccessible is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'






```````