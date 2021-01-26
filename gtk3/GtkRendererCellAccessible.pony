/*
   needs: ["GObjectREF", "GtkCellRenderer"]
provides: ["GtkRendererCellAccessible"]
*/
use "../gobject"
class GtkRendererCellAccessible is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create(renderer_pony: GtkCellRenderer) =>
    widget = @gtk_renderer_cell_accessible_new[GObjectREF](renderer_pony.gtkwidget()) //



