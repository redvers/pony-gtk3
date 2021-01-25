/*
   needs: ["None", "I32", "GObjectREF"]
provides: ["GtkCellRendererText"]
*/
class GtkCellRendererText is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create() =>
    widget = @gtk_cell_renderer_text_new[GObjectREF]() //


fun set_fixed_height_from_font(number_of_rows_pony: I32): None =>
  @gtk_cell_renderer_text_set_fixed_height_from_font[None](widget, number_of_rows_pony)

