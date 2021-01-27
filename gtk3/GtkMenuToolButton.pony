/*
   needs: ["GObjectREF", "GtkWidget", "None", "String"]
provides: ["GtkMenuToolButton"]
*/
use "../gobject"
class GtkMenuToolButton is GtkWidget
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
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create(icon_widget_pony: GtkWidget, label_pony: String) =>
    widget = @gtk_menu_tool_button_new[GObjectREF](icon_widget_pony.gtkwidget(), label_pony.cstring()) //

  new new_from_stock(stock_id_pony: String) =>
    widget = @gtk_menu_tool_button_new_from_stock[GObjectREF](stock_id_pony.cstring()) //


/* Needs conversion code 
  fun get_menu(): GtkWidget =>
    @gtk_menu_tool_button_get_menu[GObjectREF](widget)
*/

/* set_arrow_tooltip_markup unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "markup", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* set_arrow_tooltip_text unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "text", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

fun set_menu(menu_pony: GtkWidget): None =>
"""
Sets the #GtkMenu that is popped up when the user clicks on the arrow.
If @menu is NULL, the arrow button becomes insensitive.
"""
  @gtk_menu_tool_button_set_menu[None](widget, menu_pony.gtkwidget())

