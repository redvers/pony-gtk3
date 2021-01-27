```````pony-full-source
/*
   needs: ["GObjectREF"]
provides: ["GtkCellRendererSpinner"]
*/
use "../gobject"
class GtkCellRendererSpinner is GtkWidget
"""
GtkCellRendererSpinner renders a spinning animation in a cell, very
similar to #GtkSpinner. It can often be used as an alternative
to a #GtkCellRendererProgress for displaying indefinite activity,
instead of actual progress.

To start the animation in a cell, set the #GtkCellRendererSpinner:active
property to %TRUE and increment the #GtkCellRendererSpinner:pulse property
at regular intervals. The usual way to set the cell renderer properties
for each cell is to bind them to columns in your tree model using e.g.
gtk_tree_view_column_add_attribute().
"""
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create() =>
    widget = @gtk_cell_renderer_spinner_new[GObjectREF]() //




```````