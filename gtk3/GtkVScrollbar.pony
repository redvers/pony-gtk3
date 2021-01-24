/*
   needs: ["GObjectREF", "GtkAdjustment"]
provides: ["GtkVScrollbar"]
*/
class GtkVScrollbar is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF


  new create(adjustment_pony: GtkAdjustment) =>
    widget = @gtk_vscrollbar_new[GObjectREF](adjustment_pony.gtkwidget()) //



