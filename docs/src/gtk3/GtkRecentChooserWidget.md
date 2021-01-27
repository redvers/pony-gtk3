```````pony-full-source
/*
   needs: ["GObjectREF", "GtkRecentManager"]
provides: ["GtkRecentChooserWidget"]
*/
use "../gobject"
class GtkRecentChooserWidget is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create() =>
    widget = @gtk_recent_chooser_widget_new[GObjectREF]() //

  new new_for_manager(manager_pony: GtkRecentManager) =>
    widget = @gtk_recent_chooser_widget_new_for_manager[GObjectREF](manager_pony.gtkwidget()) //




```````