/*
   needs: ["Bool", "None", "GObjectREF"]
provides: ["GtkSwitch"]
*/
class GtkSwitch is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF


  new create() =>
    widget = @gtk_switch_new[GObjectREF]() //


fun get_active(): Bool =>
  @gtk_switch_get_active[Bool](widget)

fun get_state(): Bool =>
  @gtk_switch_get_state[Bool](widget)

fun set_active(is_active_pony: Bool): None =>
  @gtk_switch_set_active[None](widget, is_active_pony)

fun set_state(state_pony: Bool): None =>
  @gtk_switch_set_state[None](widget, state_pony)

