```````pony-full-source
/*
   needs: ["Bool", "None", "GObjectREF"]
provides: ["GtkMenuButton"]
*/
use "../gobject"
class GtkMenuButton is GtkWidget
"""
The #GtkMenuButton widget is used to display a popup when clicked on.
This popup can be provided either as a #GtkMenu, a #GtkPopover or an
abstract #GMenuModel.

The #GtkMenuButton widget can hold any valid child widget. That is, it
can hold almost any other standard #GtkWidget. The most commonly used
child is #GtkImage. If no widget is explicitely added to the #GtkMenuButton,
a #GtkImage is automatically created, using an arrow image oriented
according to #GtkMenuButton:direction or the generic “open-menu-symbolic”
icon if the direction is not set.

The positioning of the popup is determined by the #GtkMenuButton:direction
property of the menu button.

For menus, the #GtkWidget:halign and #GtkWidget:valign properties of the
menu are also taken into account. For example, when the direction is
%GTK_ARROW_DOWN and the horizontal alignment is %GTK_ALIGN_START, the
menu will be positioned below the button, with the starting edge
(depending on the text direction) of the menu aligned with the starting
edge of the button. If there is not enough space below the button, the
menu is popped up above the button instead. If the alignment would move
part of the menu offscreen, it is “pushed in”.

## Direction = Down

- halign = start

    ![](down-start.png)

- halign = center

    ![](down-center.png)

- halign = end

    ![](down-end.png)

## Direction = Up

- halign = start

    ![](up-start.png)

- halign = center

    ![](up-center.png)

- halign = end

    ![](up-end.png)

## Direction = Left

- valign = start

    ![](left-start.png)

- valign = center

    ![](left-center.png)

- valign = end

    ![](left-end.png)

## Direction = Right

- valign = start

    ![](right-start.png)

- valign = center

    ![](right-center.png)

- valign = end

    ![](right-end.png)

# CSS nodes

GtkMenuButton has a single CSS node with name button. To differentiate
it from a plain #GtkButton, it gets the .popup style class.
"""
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


```````