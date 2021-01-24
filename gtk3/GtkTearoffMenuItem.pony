/*
   needs: ["GObjectREF"]
provides: ["GtkTearoffMenuItem"]
*/
class GtkTearoffMenuItem is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF


  new create() =>
    widget = @gtk_tearoff_menu_item_new[GObjectREF]() //



