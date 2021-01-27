/*
   needs: ["GObjectREF", "GtkAdjustment"]
provides: ["GtkHScrollbar"]
*/
use "../gobject"
class GtkHScrollbar is GtkWidget
"""
The #GtkHScrollbar widget is a widget arranged horizontally creating a
scrollbar. See #GtkScrollbar for details on
scrollbars. #GtkAdjustment pointers may be added to handle the
adjustment of the scrollbar or it may be left %NULL in which case one
will be created for you. See #GtkScrollbar for a description of what the
fields in an adjustment represent for a scrollbar.

GtkHScrollbar has been deprecated, use #GtkScrollbar instead.
"""
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create(adjustment_pony: GtkAdjustment) =>
    widget = @gtk_hscrollbar_new[GObjectREF](adjustment_pony.gtkwidget()) //



