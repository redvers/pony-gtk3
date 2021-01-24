/*
   needs: ["GObjectREF"]
provides: ["GtkColorChooserWidget"]
*/
class GtkColorChooserWidget is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF


  new create() =>
    widget = @gtk_color_chooser_widget_new[GObjectREF]() //



