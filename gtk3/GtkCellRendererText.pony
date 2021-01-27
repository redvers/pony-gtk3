/*
   needs: ["None", "I32", "GObjectREF"]
provides: ["GtkCellRendererText"]
*/
use "../gobject"
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
"""
Sets the height of a renderer to explicitly be determined by the “font” and
“y_pad” property set on it.  Further changes in these properties do not
affect the height, so they must be accompanied by a subsequent call to this
function.  Using this function is unflexible, and should really only be used
if calculating the size of a cell is too slow (ie, a massive number of cells
displayed).  If @number_of_rows is -1, then the fixed height is unset, and
the height is determined by the properties again.
"""
  @gtk_cell_renderer_text_set_fixed_height_from_font[None](widget, number_of_rows_pony)

