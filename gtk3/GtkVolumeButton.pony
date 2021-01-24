/*
   needs: ["GObjectREF"]
provides: ["GtkVolumeButton"]
*/
class GtkVolumeButton is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF


  new create() =>
    widget = @gtk_volume_button_new[GObjectREF]() //



