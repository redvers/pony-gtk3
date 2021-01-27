/*
   needs: ["I32", "None", "GObjectREF", "String"]
provides: ["GtkRadioAction"]
*/
use "../gobject"
class GtkRadioAction is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create(name_pony: String, label_pony: String, tooltip_pony: String, stock_id_pony: String, value_pony: I32) =>
    widget = @gtk_radio_action_new[GObjectREF](name_pony.cstring(), label_pony.cstring(), tooltip_pony.cstring(), stock_id_pony.cstring(), value_pony) //


fun get_current_value(): I32 =>
"""
Obtains the value property of the currently active member of
the group to which @action belongs.
"""
  @gtk_radio_action_get_current_value[I32](widget)

/* get_group unavailable due to return typing issues
{:argctype, "GSList*"}
{:argname, "rv"}
{:argtype, "GLib.SList"}
{:paramtype, :param}
{:txo, "none"} */

/* join_group unavailable due to typing issues
 {:doh, %{argctype: "GtkRadioAction*", argname: "group_source", argtype: "RadioAction", paramtype: :param, txo: "none"}}
*/

fun set_current_value(current_value_pony: I32): None =>
"""
Sets the currently active group member to the member with value
property @current_value.
"""
  @gtk_radio_action_set_current_value[None](widget, current_value_pony)

/* set_group unavailable due to typing issues
 {:doh, %{argctype: "GSList*", argname: "group", argtype: "GLib.SList", paramtype: :param, txo: "none"}}
*/

