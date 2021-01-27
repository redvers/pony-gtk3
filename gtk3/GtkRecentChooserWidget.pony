/*
   needs: ["GObjectREF", "GtkRecentManager"]
provides: ["GtkRecentChooserWidget"]
*/
use "../gobject"
class GtkRecentChooserWidget is GtkWidget
"""
#GtkRecentChooserWidget is a widget suitable for selecting recently used
files.  It is the main building block of a #GtkRecentChooserDialog.  Most
applications will only need to use the latter; you can use
#GtkRecentChooserWidget as part of a larger window if you have special needs.

Note that #GtkRecentChooserWidget does not have any methods of its own.
Instead, you should use the functions that work on a #GtkRecentChooser.

Recently used files are supported since GTK+ 2.10.
"""
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



