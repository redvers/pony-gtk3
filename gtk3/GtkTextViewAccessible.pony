/*
   needs: ["GObjectREF"]
provides: ["GtkTextViewAccessible"]
*/
class GtkTextViewAccessible is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF





