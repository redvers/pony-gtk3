/*
   needs: ["GObjectREF"]
provides: ["GtkHSeparator"]
*/
use "../gobject"
class GtkHSeparator is GtkWidget
"""
The #GtkHSeparator widget is a horizontal separator, used to group the
widgets within a window. It displays a horizontal line with a shadow to
make it appear sunken into the interface.

> The #GtkHSeparator widget is not used as a separator within menus.
> To create a separator in a menu create an empty #GtkSeparatorMenuItem
> widget using gtk_separator_menu_item_new() and add it to the menu with
> gtk_menu_shell_append().

GtkHSeparator has been deprecated, use #GtkSeparator instead.
"""
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create() =>
    widget = @gtk_hseparator_new[GObjectREF]() //



