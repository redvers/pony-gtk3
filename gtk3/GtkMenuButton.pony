/*
   needs: ["Bool", "None", "GObjectREF"]
provides: ["GtkMenuButton"]
*/
use "../gobject"
class GtkMenuButton is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create() =>
    widget = @gtk_menu_button_new[GObjectREF]() //


/* get_align_widget unavailable due to return typing issues
{:argctype, "GtkWidget*"}
{:argname, "rv"}
{:argtype, "Widget"}
{:paramtype, :param}
{:txo, "none"} */

/* get_direction unavailable due to return typing issues
{:argctype, "GtkArrowType"}
{:argname, "rv"}
{:argtype, "ArrowType"}
{:paramtype, :param}
{:txo, "none"} */

/* get_menu_model unavailable due to return typing issues
{:argctype, "GMenuModel*"}
{:argname, "rv"}
{:argtype, "Gio.MenuModel"}
{:paramtype, :param}
{:txo, "none"} */

/* get_popover unavailable due to return typing issues
{:argctype, "GtkPopover*"}
{:argname, "rv"}
{:argtype, "Popover"}
{:paramtype, :param}
{:txo, "none"} */

/* get_popup unavailable due to return typing issues
{:argctype, "GtkMenu*"}
{:argname, "rv"}
{:argtype, "Menu"}
{:paramtype, :param}
{:txo, "none"} */

fun get_use_popover(): Bool =>
"""
Returns whether a #GtkPopover or a #GtkMenu will be constructed
from the menu model.
"""
  @gtk_menu_button_get_use_popover[Bool](widget)

/* set_align_widget unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "align_widget", argtype: "Widget", paramtype: :param, txo: "none"}}
*/

/* set_direction unavailable due to typing issues
 {:doh, %{argctype: "GtkArrowType", argname: "direction", argtype: "ArrowType", paramtype: :param, txo: "none"}}
*/

/* set_menu_model unavailable due to typing issues
 {:doh, %{argctype: "GMenuModel*", argname: "menu_model", argtype: "Gio.MenuModel", paramtype: :param, txo: "none"}}
*/

/* set_popover unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "popover", argtype: "Widget", paramtype: :param, txo: "none"}}
*/

/* set_popup unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "menu", argtype: "Widget", paramtype: :param, txo: "none"}}
*/

fun set_use_popover(use_popover_pony: Bool): None =>
"""
Sets whether to construct a #GtkPopover instead of #GtkMenu
when gtk_menu_button_set_menu_model() is called. Note that
this property is only consulted when a new menu model is set.
"""
  @gtk_menu_button_set_use_popover[None](widget, use_popover_pony)

