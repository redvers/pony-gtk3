/*
   needs: ["GObjectREF"]
provides: ["GtkModelButton"]
*/
class GtkModelButton is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF


  new create() =>
    widget = @gtk_model_button_new[GObjectREF]() //



