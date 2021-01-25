/*
   needs: ["Bool", "None", "GObjectREF", "String"]
provides: ["GtkToggleToolButton"]
*/
class GtkToggleToolButton is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create() =>
    widget = @gtk_toggle_tool_button_new[GObjectREF]() //

  new new_from_stock(stock_id_pony: String) =>
    widget = @gtk_toggle_tool_button_new_from_stock[GObjectREF](stock_id_pony.cstring()) //


fun get_active(): Bool =>
  @gtk_toggle_tool_button_get_active[Bool](widget)

fun set_active(is_active_pony: Bool): None =>
  @gtk_toggle_tool_button_set_active[None](widget, is_active_pony)

