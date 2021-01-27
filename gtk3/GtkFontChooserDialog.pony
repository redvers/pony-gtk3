/*
   needs: ["GObjectREF", "String", "GtkWindow"]
provides: ["GtkFontChooserDialog"]
*/
use "../gobject"
class GtkFontChooserDialog is GtkWidget
"""
The #GtkFontChooserDialog widget is a dialog for selecting a font.
It implements the #GtkFontChooser interface.

# GtkFontChooserDialog as GtkBuildable

The GtkFontChooserDialog implementation of the #GtkBuildable
interface exposes the buttons with the names “select_button”
and “cancel_button”.
"""
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create(title_pony: String, parent_pony: GtkWindow) =>
    widget = @gtk_font_chooser_dialog_new[GObjectREF](title_pony.cstring(), parent_pony.gtkwidget()) //



