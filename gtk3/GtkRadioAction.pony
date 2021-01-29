/*
   needs: ["I32", "None", "GObjectREF", "String"]
provides: ["GtkRadioAction val"]
*/
use "../gobject"
class val GtkRadioAction is GtkWidget
"""
A #GtkRadioAction is similar to #GtkRadioMenuItem. A number of radio
actions can be linked together so that only one may be active at any
one time.
"""
  var widget: GObjectREF val

  fun gtkwidget(): GObjectREF val => widget

  new val create_from_GtkBuilder(gtkbuilder: GtkBuilder, glade_id: String) =>
    widget = @gtk_builder_get_object[GObjectREF](gtkbuilder.gtkwidget(), glade_id.cstring())

  new val create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'

  new val never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF


  new val create(name_pony: String, label_pony: String, tooltip_pony: String, stock_id_pony: String, value_pony: I32) =>
    widget = @gtk_radio_action_new[GObjectREF](name_pony.cstring(), label_pony.cstring(), tooltip_pony.cstring(), stock_id_pony.cstring(), value_pony) //


fun get_current_value(): I32 =>
"""
Obtains the value property of the currently active member of
the group to which @action belongs.
"""
  @gtk_radio_action_get_current_value[I32](widget)

/* get_group unavailable due to return typing issues
Returns the list representing the radio group for this object.
Note that the returned list is only valid until the next change
to the group.

A common way to set up a group of radio group is the following:
|[<!-- language="C" -->
  GSList *group = NULL;
  GtkRadioAction *action;
 
  while ( ...more actions to add... /)
    {
       action = gtk_radio_action_new (...);
       
       gtk_radio_action_set_group (action, group);
       group = gtk_radio_action_get_group (action);
    }
]|
{:argctype, "GSList*"}
{:argname, "rv"}
{:argtype, "GLib.SList"}
{:paramtype, :param}
{:txo, "none"} */

/* join_group unavailable due to typing issues
Joins a radio action object to the group of another radio action object.

Use this in language bindings instead of the gtk_radio_action_get_group()
and gtk_radio_action_set_group() methods

A common way to set up a group of radio actions is the following:
|[<!-- language="C" -->
  GtkRadioAction *action;
  GtkRadioAction *last_action;
 
  while ( ...more actions to add... /)
    {
       action = gtk_radio_action_new (...);
       
       gtk_radio_action_join_group (action, last_action);
       last_action = action;
    }
]|
{:doh, %{argctype: "GtkRadioAction*", argname: "group_source", argtype: "RadioAction", paramtype: :param, txo: "none"}}
*/

fun set_current_value(current_value_pony: I32): None =>
"""
Sets the currently active group member to the member with value
property @current_value.
"""
  @gtk_radio_action_set_current_value[None](widget, current_value_pony)

/* set_group unavailable due to typing issues
Sets the radio group for the radio action object.
{:doh, %{argctype: "GSList*", argname: "group", argtype: "GLib.SList", paramtype: :param, txo: "none"}}
*/

