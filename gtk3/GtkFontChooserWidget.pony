/*
   needs: ["GObjectREF"]
provides: ["GtkFontChooserWidget"]
*/
use "../gobject"
class GtkFontChooserWidget is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create() =>
    widget = @gtk_font_chooser_widget_new[GObjectREF]() //



