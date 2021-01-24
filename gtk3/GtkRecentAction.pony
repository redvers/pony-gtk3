/*
   needs: ["Bool", "None", "GObjectREF", "String", "GtkRecentManager"]
provides: ["GtkRecentAction"]
*/
class GtkRecentAction is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF


  new create(name_pony: String, label_pony: String, tooltip_pony: String, stock_id_pony: String) =>
    widget = @gtk_recent_action_new[GObjectREF](name_pony.cstring(), label_pony.cstring(), tooltip_pony.cstring(), stock_id_pony.cstring()) //

  new new_for_manager(name_pony: String, label_pony: String, tooltip_pony: String, stock_id_pony: String, manager_pony: GtkRecentManager) =>
    widget = @gtk_recent_action_new_for_manager[GObjectREF](name_pony.cstring(), label_pony.cstring(), tooltip_pony.cstring(), stock_id_pony.cstring(), manager_pony.gtkwidget()) //


fun get_show_numbers(): Bool =>
  @gtk_recent_action_get_show_numbers[Bool](widget)

fun set_show_numbers(show_numbers_pony: Bool): None =>
  @gtk_recent_action_set_show_numbers[None](widget, show_numbers_pony)

