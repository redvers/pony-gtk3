/*
   needs: ["GObjectREF", "String", "GtkWindow"]
provides: ["GtkColorChooserDialog"]
*/
use "../gobject"
class GtkColorChooserDialog is GtkWidget
"""
The #GtkColorChooserDialog widget is a dialog for choosing
a color. It implements the #GtkColorChooser interface.
"""
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget

  new create_from_GtkBuilder(gtkbuilder: GtkBuilder, glade_id: String) =>
    widget = @gtk_builder_get_object[GObjectREF](gtkbuilder.gtkwidget(), glade_id.cstring())

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'

  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF


  new create(title_pony: String, parent_pony: GtkWindow) =>
    widget = @gtk_color_chooser_dialog_new[GObjectREF](title_pony.cstring(), parent_pony.gtkwidget()) //



