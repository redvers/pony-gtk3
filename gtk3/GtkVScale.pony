/*
   needs: ["GObjectREF", "GtkAdjustment", "F64"]
provides: ["GtkVScale"]
*/
use "../gobject"
class GtkVScale is GtkWidget
"""
The #GtkVScale widget is used to allow the user to select a value using
a vertical slider. To create one, use gtk_hscale_new_with_range().

The position to show the current value, and the number of decimal places
shown can be set using the parent #GtkScale class’s functions.

GtkVScale has been deprecated, use #GtkScale instead.
"""
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create(adjustment_pony: GtkAdjustment) =>
    widget = @gtk_vscale_new[GObjectREF](adjustment_pony.gtkwidget()) //

  new new_with_range(min_pony: F64, max_pony: F64, step_pony: F64) =>
    widget = @gtk_vscale_new_with_range[GObjectREF](min_pony, max_pony, step_pony) //



