/*
   needs: ["GObjectREF"]
provides: ["GtkShortcutsShortcut"]
*/
use "../gobject"
class GtkShortcutsShortcut is GtkWidget
"""
A GtkShortcutsShortcut represents a single keyboard shortcut or gesture
with a short text. This widget is only meant to be used with #GtkShortcutsWindow.
"""
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget

  new create_from_GtkBuilder(gtkbuilder: GtkBuilder, glade_id: String) =>
    widget = @gtk_builder_get_object[GObjectREF](gtkbuilder.gtkwidget(), glade_id.cstring())

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'

  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF





