/*
   needs: ["Bool", "None", "GObjectREF", "String"]
provides: ["GtkCheckMenuItem"]
*/
class GtkCheckMenuItem is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create() =>
    widget = @gtk_check_menu_item_new[GObjectREF]() //

  new new_with_label(label_pony: String) =>
    widget = @gtk_check_menu_item_new_with_label[GObjectREF](label_pony.cstring()) //

  new new_with_mnemonic(label_pony: String) =>
    widget = @gtk_check_menu_item_new_with_mnemonic[GObjectREF](label_pony.cstring()) //


fun get_active(): Bool =>
  @gtk_check_menu_item_get_active[Bool](widget)

fun get_draw_as_radio(): Bool =>
  @gtk_check_menu_item_get_draw_as_radio[Bool](widget)

fun get_inconsistent(): Bool =>
  @gtk_check_menu_item_get_inconsistent[Bool](widget)

fun set_active(is_active_pony: Bool): None =>
  @gtk_check_menu_item_set_active[None](widget, is_active_pony)

fun set_draw_as_radio(draw_as_radio_pony: Bool): None =>
  @gtk_check_menu_item_set_draw_as_radio[None](widget, draw_as_radio_pony)

fun set_inconsistent(setting_pony: Bool): None =>
  @gtk_check_menu_item_set_inconsistent[None](widget, setting_pony)

fun toggled(): None =>
  @gtk_check_menu_item_toggled[None](widget)

