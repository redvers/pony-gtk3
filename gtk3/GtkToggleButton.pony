/*
   needs: ["Bool", "None", "GObjectREF", "String"]
provides: ["GtkToggleButton"]
*/
class GtkToggleButton is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF


  new create() =>
    widget = @gtk_toggle_button_new[GObjectREF]() //

  new new_with_label(label_pony: String) =>
    widget = @gtk_toggle_button_new_with_label[GObjectREF](label_pony.cstring()) //

  new new_with_mnemonic(label_pony: String) =>
    widget = @gtk_toggle_button_new_with_mnemonic[GObjectREF](label_pony.cstring()) //


fun get_active(): Bool =>
  @gtk_toggle_button_get_active[Bool](widget)

fun get_inconsistent(): Bool =>
  @gtk_toggle_button_get_inconsistent[Bool](widget)

fun get_mode(): Bool =>
  @gtk_toggle_button_get_mode[Bool](widget)

fun set_active(is_active_pony: Bool): None =>
  @gtk_toggle_button_set_active[None](widget, is_active_pony)

fun set_inconsistent(setting_pony: Bool): None =>
  @gtk_toggle_button_set_inconsistent[None](widget, setting_pony)

fun set_mode(draw_indicator_pony: Bool): None =>
  @gtk_toggle_button_set_mode[None](widget, draw_indicator_pony)

fun toggled(): None =>
  @gtk_toggle_button_toggled[None](widget)

