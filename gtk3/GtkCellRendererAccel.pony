/*
   needs: ["GObjectREF"]
provides: ["GtkCellRendererAccel"]
*/
use "../gobject"
class GtkCellRendererAccel is GtkWidget
"""
#GtkCellRendererAccel displays a keyboard accelerator (i.e. a key
combination like `Control + a`). If the cell renderer is editable,
the accelerator can be changed by simply typing the new combination.

The #GtkCellRendererAccel cell renderer was added in GTK+ 2.10.
"""
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create() =>
    widget = @gtk_cell_renderer_accel_new[GObjectREF]() //



