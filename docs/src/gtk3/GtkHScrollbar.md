```````pony-full-source
/*
   needs: ["GObjectREF", "GtkAdjustment"]
provides: ["GtkHScrollbar"]
*/
use "../gobject"
class GtkHScrollbar is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create(adjustment_pony: GtkAdjustment) =>
    widget = @gtk_hscrollbar_new[GObjectREF](adjustment_pony.gtkwidget()) //




```````