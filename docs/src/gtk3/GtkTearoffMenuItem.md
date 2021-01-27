```````pony-full-source
/*
   needs: ["GObjectREF"]
provides: ["GtkTearoffMenuItem"]
*/
use "../gobject"
class GtkTearoffMenuItem is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create() =>
    widget = @gtk_tearoff_menu_item_new[GObjectREF]() //




```````