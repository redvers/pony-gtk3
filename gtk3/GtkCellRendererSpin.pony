/*
   needs: ["GObjectREF"]
provides: ["GtkCellRendererSpin"]
*/
class GtkCellRendererSpin is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF


  new create() =>
    widget = @gtk_cell_renderer_spin_new[GObjectREF]() //



