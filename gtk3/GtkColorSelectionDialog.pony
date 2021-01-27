/*
   needs: ["GObjectREF", "GtkWidget", "String"]
provides: ["GtkColorSelectionDialog"]
*/
use "../gobject"
class GtkColorSelectionDialog is GtkWidget
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


  new create(title_pony: String) =>
    widget = @gtk_color_selection_dialog_new[GObjectREF](title_pony.cstring()) //


/* Needs conversion code 
  fun get_color_selection(): GtkWidget =>
    @gtk_color_selection_dialog_get_color_selection[GObjectREF](widget)
*/

