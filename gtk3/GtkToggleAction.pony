/*
   needs: ["Bool", "None", "GObjectREF", "String"]
provides: ["GtkToggleAction"]
*/
use "../gobject"
class GtkToggleAction is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create(name_pony: String, label_pony: String, tooltip_pony: String, stock_id_pony: String) =>
    widget = @gtk_toggle_action_new[GObjectREF](name_pony.cstring(), label_pony.cstring(), tooltip_pony.cstring(), stock_id_pony.cstring()) //


fun get_active(): Bool =>
"""
Returns the checked state of the toggle action.
"""
  @gtk_toggle_action_get_active[Bool](widget)

fun get_draw_as_radio(): Bool =>
"""
Returns whether the action should have proxies like a radio action.
"""
  @gtk_toggle_action_get_draw_as_radio[Bool](widget)

fun set_active(is_active_pony: Bool): None =>
"""
Sets the checked state on the toggle action.
"""
  @gtk_toggle_action_set_active[None](widget, is_active_pony)

fun set_draw_as_radio(draw_as_radio_pony: Bool): None =>
"""
Sets whether the action should have proxies like a radio action.
"""
  @gtk_toggle_action_set_draw_as_radio[None](widget, draw_as_radio_pony)

fun toggled(): None =>
"""
Emits the “toggled” signal on the toggle action.
"""
  @gtk_toggle_action_toggled[None](widget)

