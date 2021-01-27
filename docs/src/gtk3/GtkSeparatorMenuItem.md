```````pony-full-source
/*
   needs: ["GObjectREF"]
provides: ["GtkSeparatorMenuItem"]
*/
use "../gobject"
class GtkSeparatorMenuItem is GtkWidget
"""
The #GtkSeparatorMenuItem is a separator used to group
items within a menu. It displays a horizontal line with a shadow to
make it appear sunken into the interface.

# CSS nodes

GtkSeparatorMenuItem has a single CSS node with name separator.
"""
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create() =>
    widget = @gtk_separator_menu_item_new[GObjectREF]() //




```````