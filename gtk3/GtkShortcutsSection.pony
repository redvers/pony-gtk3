/*
   needs: ["GObjectREF"]
provides: ["GtkShortcutsSection"]
*/
class GtkShortcutsSection is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF





