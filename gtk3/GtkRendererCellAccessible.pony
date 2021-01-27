/*
   needs: ["GObjectREF", "GtkCellRenderer"]
provides: ["GtkRendererCellAccessible"]
*/
use "../gobject"
class GtkRendererCellAccessible is GtkWidget
"""
No documentation provided
"""
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget

  new create_from_GtkBuilder(gtkbuilder: GtkBuilder, glade_id: String) =>
    widget = @gtk_builder_get_object[GObjectREF](gtkbuilder.gtkwidget(), glade_id.cstring())

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'

  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF


  new create(renderer_pony: GtkCellRenderer) =>
    widget = @gtk_renderer_cell_accessible_new[GObjectREF](renderer_pony.gtkwidget()) //



