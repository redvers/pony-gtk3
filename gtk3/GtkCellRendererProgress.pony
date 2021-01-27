/*
   needs: ["GObjectREF"]
provides: ["GtkCellRendererProgress"]
*/
use "../gobject"
class GtkCellRendererProgress is GtkWidget
"""
#GtkCellRendererProgress renders a numeric value as a progress par in a cell.
Additionally, it can display a text on top of the progress bar.

The #GtkCellRendererProgress cell renderer was added in GTK+ 2.6.
"""
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create() =>
    widget = @gtk_cell_renderer_progress_new[GObjectREF]() //



