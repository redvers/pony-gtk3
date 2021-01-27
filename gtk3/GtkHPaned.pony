/*
   needs: ["GObjectREF"]
provides: ["GtkHPaned"]
*/
use "../gobject"
class GtkHPaned is GtkWidget
"""
The HPaned widget is a container widget with two
children arranged horizontally. The division between
the two panes is adjustable by the user by dragging
a handle. See #GtkPaned for details.

GtkHPaned has been deprecated, use #GtkPaned instead.
"""
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create() =>
    widget = @gtk_hpaned_new[GObjectREF]() //



