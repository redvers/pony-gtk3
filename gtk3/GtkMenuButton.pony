/*
   needs: ["GObjectREF", "GtkWidget val", "Bool", "None"]
provides: ["GtkMenuButton val"]
*/
use "../gobject"
class val GtkMenuButton is GtkWidget
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
  var widget: GObjectREF val

  fun gtkwidget(): GObjectREF val => widget

  new val create_from_GtkBuilder(gtkbuilder: GtkBuilder, glade_id: String) =>
    widget = @gtk_builder_get_object[GObjectREF](gtkbuilder.gtkwidget(), glade_id.cstring())

  new val create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'

  new val never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF


  new val create() =>
    widget = @gtk_menu_button_new[GObjectREF]() //


/* Needs conversion code 
Returns the parent #GtkWidget to use to line up with menu.
  fun get_align_widget(): GtkWidget val =>
    @gtk_menu_button_get_align_widget[GObjectREF](widget)
*/

/* get_direction unavailable due to return typing issues
Returns the direction the popup will be pointing at when popped up.
{:argctype, "GtkArrowType"}
{:argname, "rv"}
{:argtype, "ArrowType"}
{:paramtype, :param}
{:txo, "none"} */

/* get_menu_model unavailable due to return typing issues
Returns the #GMenuModel used to generate the popup.
{:argctype, "GMenuModel*"}
{:argname, "rv"}
{:argtype, "Gio.MenuModel"}
{:paramtype, :param}
{:txo, "none"} */

/* get_popover unavailable due to return typing issues
Returns the #GtkPopover that pops out of the button.
If the button is not using a #GtkPopover, this function
returns %NULL.
{:argctype, "GtkPopover*"}
{:argname, "rv"}
{:argtype, "Popover"}
{:paramtype, :param}
{:txo, "none"} */

/* get_popup unavailable due to return typing issues
Returns the #GtkMenu that pops out of the button.
If the button does not use a #GtkMenu, this function
returns %NULL.
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

fun set_align_widget(align_widget_pony: GtkWidget val): None =>
"""
Sets the #GtkWidget to use to line the menu with when popped up.
Note that the @align_widget must contain the #GtkMenuButton itself.

Setting it to %NULL means that the menu will be aligned with the
button itself.

Note that this property is only used with menus currently,
and not for popovers.
"""
  @gtk_menu_button_set_align_widget[None](widget, align_widget_pony.gtkwidget())

/* set_direction unavailable due to typing issues
Sets the direction in which the popup will be popped up, as
well as changing the arrow’s direction. The child will not
be changed to an arrow if it was customized.

If the does not fit in the available space in the given direction,
GTK+ will its best to keep it inside the screen and fully visible.

If you pass %GTK_ARROW_NONE for a @direction, the popup will behave
as if you passed %GTK_ARROW_DOWN (although you won’t see any arrows).
{:doh, %{argctype: "GtkArrowType", argname: "direction", argtype: "ArrowType", paramtype: :param, txo: "none"}}
*/

/* set_menu_model unavailable due to typing issues
Sets the #GMenuModel from which the popup will be constructed,
or %NULL to dissociate any existing menu model and disable the button.

Depending on the value of #GtkMenuButton:use-popover, either a
#GtkMenu will be created with gtk_menu_new_from_model(), or a
#GtkPopover with gtk_popover_new_from_model(). In either case,
actions will be connected as documented for these functions.

If #GtkMenuButton:popup or #GtkMenuButton:popover are already set, those
widgets are dissociated from the @menu_button, and those properties are set
to %NULL.
{:doh, %{argctype: "GMenuModel*", argname: "menu_model", argtype: "Gio.MenuModel", paramtype: :param, txo: "none"}}
*/

fun set_popover(popover_pony: GtkWidget val): None =>
"""
Sets the #GtkPopover that will be popped up when the @menu_button is clicked,
or %NULL to dissociate any existing popover and disable the button.

If #GtkMenuButton:menu-model or #GtkMenuButton:popup are set, those objects
are dissociated from the @menu_button, and those properties are set to %NULL.
"""
  @gtk_menu_button_set_popover[None](widget, popover_pony.gtkwidget())

fun set_popup(menu_pony: GtkWidget val): None =>
"""
Sets the #GtkMenu that will be popped up when the @menu_button is clicked, or
%NULL to dissociate any existing menu and disable the button.

If #GtkMenuButton:menu-model or #GtkMenuButton:popover are set, those objects
are dissociated from the @menu_button, and those properties are set to %NULL.
"""
  @gtk_menu_button_set_popup[None](widget, menu_pony.gtkwidget())

fun set_use_popover(use_popover_pony: Bool): None =>
"""
Sets whether to construct a #GtkPopover instead of #GtkMenu
when gtk_menu_button_set_menu_model() is called. Note that
this property is only consulted when a new menu model is set.
"""
  @gtk_menu_button_set_use_popover[None](widget, use_popover_pony)

