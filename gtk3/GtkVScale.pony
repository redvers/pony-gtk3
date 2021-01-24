/*
   needs: ["GObjectREF", "GtkAdjustment", "F64"]
provides: ["GtkVScale"]
*/
class GtkVScale is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF


  new create(adjustment_pony: GtkAdjustment) =>
    widget = @gtk_vscale_new[GObjectREF](adjustment_pony.gtkwidget()) //

  new new_with_range(min_pony: F64, max_pony: F64, step_pony: F64) =>
    widget = @gtk_vscale_new_with_range[GObjectREF](min_pony, max_pony, step_pony) //



