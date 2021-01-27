```````pony-full-source
/*
   needs: ["Bool", "None", "GObjectREF", "GtkRecentManager"]
provides: ["GtkRecentChooserMenu"]
*/
use "../gobject"
class GtkRecentChooserMenu is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create() =>
    widget = @gtk_recent_chooser_menu_new[GObjectREF]() //

  new new_for_manager(manager_pony: GtkRecentManager) =>
    widget = @gtk_recent_chooser_menu_new_for_manager[GObjectREF](manager_pony.gtkwidget()) //


fun get_show_numbers(): Bool =>
"""
Returns the value set by gtk_recent_chooser_menu_set_show_numbers().
"""
  @gtk_recent_chooser_menu_get_show_numbers[Bool](widget)

fun set_show_numbers(show_numbers_pony: Bool): None =>
"""
Sets whether a number should be added to the items of @menu.  The
numbers are shown to provide a unique character for a mnemonic to
be used inside ten menu item’s label.  Only the first the items
get a number to avoid clashes.
"""
  @gtk_recent_chooser_menu_set_show_numbers[None](widget, show_numbers_pony)


```````