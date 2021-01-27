```````pony-full-source
/*
   needs: ["GObjectREF", "String", "GtkWindow"]
provides: ["GtkColorChooserDialog"]
*/
use "../gobject"
class GtkColorChooserDialog is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create(title_pony: String, parent_pony: GtkWindow) =>
    widget = @gtk_color_chooser_dialog_new[GObjectREF](title_pony.cstring(), parent_pony.gtkwidget()) //




```````