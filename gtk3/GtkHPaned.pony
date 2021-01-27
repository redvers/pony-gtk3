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

  new create_from_GtkBuilder(gtkbuilder: GtkBuilder, glade_id: String) =>
    widget = @gtk_builder_get_object[GObjectREF](gtkbuilder.gtkwidget(), glade_id.cstring())

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'

  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF


  new create() =>
    widget = @gtk_hpaned_new[GObjectREF]() //



