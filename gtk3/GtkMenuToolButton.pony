/*
   needs: ["GObjectREF", "GtkWidget val", "None", "String"]
provides: ["GtkMenuToolButton val"]
*/
use "../gobject"
class val GtkMenuToolButton is GtkWidget
"""
A #GtkMenuToolButton is a #GtkToolItem that contains a button and
a small additional button with an arrow. When clicked, the arrow
button pops up a dropdown menu.

Use gtk_menu_tool_button_new() to create a new
#GtkMenuToolButton.

# GtkMenuToolButton as GtkBuildable

The GtkMenuToolButton implementation of the GtkBuildable interface
supports adding a menu by specifying “menu” as the “type” attribute
of a <child> element.

An example for a UI definition fragment with menus:
|[
<object class="GtkMenuToolButton">
  <child type="menu">
    <object class="GtkMenu"/>
  </child>
</object>
]|
"""
  var widget: GObjectREF val

  fun gtkwidget(): GObjectREF val => widget

  new val create_from_GtkBuilder(gtkbuilder: GtkBuilder, glade_id: String) =>
    widget = @gtk_builder_get_object[GObjectREF](gtkbuilder.gtkwidget(), glade_id.cstring())

  new val create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'

  new val never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF


  new val create(icon_widget_pony: GtkWidget val, label_pony: String) =>
    widget = @gtk_menu_tool_button_new[GObjectREF](icon_widget_pony.gtkwidget(), label_pony.cstring()) //

  new val new_from_stock(stock_id_pony: String) =>
    widget = @gtk_menu_tool_button_new_from_stock[GObjectREF](stock_id_pony.cstring()) //


/* Needs conversion code 
Gets the #GtkMenu associated with #GtkMenuToolButton.
  fun get_menu(): GtkWidget val =>
    @gtk_menu_tool_button_get_menu[GObjectREF](widget)
*/

  fun pony_NOT_IMPLEMENTED_YET_set_arrow_tooltip_markup(): None =>
    """
    Sets the tooltip markup text to be used as tooltip for the arrow button
which pops up the menu.  See gtk_tool_item_set_tooltip_text() for setting
a tooltip on the whole #GtkMenuToolButton.

    {:doh, %{argctype: "const gchar*", argname: "markup", argtype: "utf8", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_set_arrow_tooltip_text(): None =>
    """
    Sets the tooltip text to be used as tooltip for the arrow button which
pops up the menu.  See gtk_tool_item_set_tooltip_text() for setting a tooltip
on the whole #GtkMenuToolButton.

    {:doh, %{argctype: "const gchar*", argname: "text", argtype: "utf8", paramtype: :param, txo: "none"}}
*/
    """

fun set_menu(menu_pony: GtkWidget val): None =>
"""
Sets the #GtkMenu that is popped up when the user clicks on the arrow.
If @menu is NULL, the arrow button becomes insensitive.
"""
  @gtk_menu_tool_button_set_menu[None](widget, menu_pony.gtkwidget())

