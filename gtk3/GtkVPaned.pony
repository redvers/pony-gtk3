/*
   needs: ["GObjectREF"]
provides: ["GtkVPaned"]
*/
use "../gobject"
class GtkVPaned is GtkWidget
"""
The VPaned widget is a container widget with two
children arranged vertically. The division between
the two panes is adjustable by the user by dragging
a handle. See #GtkPaned for details.

GtkVPaned has been deprecated, use #GtkPaned instead.
"""
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create() =>
    widget = @gtk_vpaned_new[GObjectREF]() //



