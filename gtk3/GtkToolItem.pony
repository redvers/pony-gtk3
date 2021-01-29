/*
   needs: ["Bool", "None", "GObjectREF", "GtkWidget val"]
provides: ["GtkToolItem val"]
*/
use "../gobject"
class val GtkToolItem is GtkWidget
"""
#GtkToolItems are widgets that can appear on a toolbar. To
create a toolbar item that contain something else than a button, use
gtk_tool_item_new(). Use gtk_container_add() to add a child
widget to the tool item.

For toolbar items that contain buttons, see the #GtkToolButton,
#GtkToggleToolButton and #GtkRadioToolButton classes.

See the #GtkToolbar class for a description of the toolbar widget, and
#GtkToolShell for a description of the tool shell interface.
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
    widget = @gtk_tool_item_new[GObjectREF]() //


  fun pony_NOT_IMPLEMENTED_YET_get_ellipsize_mode(): None =>
    """
    Returns the ellipsize mode used for @tool_item. Custom subclasses of
#GtkToolItem should call this function to find out how text should
be ellipsized.

    {:argctype, "PangoEllipsizeMode"}
{:argname, "rv"}
{:argtype, "Pango.EllipsizeMode"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

fun get_expand(): Bool =>
"""
Returns whether @tool_item is allocated extra space.
See gtk_tool_item_set_expand().
"""
  @gtk_tool_item_get_expand[Bool](widget)

fun get_homogeneous(): Bool =>
"""
Returns whether @tool_item is the same size as other homogeneous
items. See gtk_tool_item_set_homogeneous().
"""
  @gtk_tool_item_get_homogeneous[Bool](widget)

  fun pony_NOT_IMPLEMENTED_YET_get_icon_size(): None =>
    """
    Returns the icon size used for @tool_item. Custom subclasses of
#GtkToolItem should call this function to find out what size icons
they should use.

    {:argctype, "GtkIconSize"}
{:argname, "rv"}
{:argtype, "gint"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

fun get_is_important(): Bool =>
"""
Returns whether @tool_item is considered important. See
gtk_tool_item_set_is_important()
"""
  @gtk_tool_item_get_is_important[Bool](widget)

  fun pony_NOT_IMPLEMENTED_YET_get_orientation(): None =>
    """
    Returns the orientation used for @tool_item. Custom subclasses of
#GtkToolItem should call this function to find out what size icons
they should use.

    {:argctype, "GtkOrientation"}
{:argname, "rv"}
{:argtype, "Orientation"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_proxy_menu_item(): None =>
    """
    If @menu_item_id matches the string passed to
gtk_tool_item_set_proxy_menu_item() return the corresponding #GtkMenuItem.

Custom subclasses of #GtkToolItem should use this function to
update their menu item when the #GtkToolItem changes. That the
@menu_item_ids must match ensures that a #GtkToolItem
will not inadvertently change a menu item that they did not create.

    {:doh, %{argctype: "const gchar*", argname: "menu_item_id", argtype: "utf8", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_relief_style(): None =>
    """
    Returns the relief style of @tool_item. See gtk_button_set_relief().
Custom subclasses of #GtkToolItem should call this function in the handler
of the #GtkToolItem::toolbar_reconfigured signal to find out the
relief style of buttons.

    {:argctype, "GtkReliefStyle"}
{:argname, "rv"}
{:argtype, "ReliefStyle"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_text_alignment(): None =>
    """
    Returns the text alignment used for @tool_item. Custom subclasses of
#GtkToolItem should call this function to find out how text should
be aligned.

    {:argctype, "gfloat"}
{:argname, "rv"}
{:argtype, "gfloat"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_text_orientation(): None =>
    """
    Returns the text orientation used for @tool_item. Custom subclasses of
#GtkToolItem should call this function to find out how text should
be orientated.

    {:argctype, "GtkOrientation"}
{:argname, "rv"}
{:argtype, "Orientation"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_text_size_group(): None =>
    """
    Returns the size group used for labels in @tool_item.
Custom subclasses of #GtkToolItem should call this function
and use the size group for labels.

    {:argctype, "GtkSizeGroup*"}
{:argname, "rv"}
{:argtype, "SizeGroup"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_toolbar_style(): None =>
    """
    Returns the toolbar style used for @tool_item. Custom subclasses of
#GtkToolItem should call this function in the handler of the
GtkToolItem::toolbar_reconfigured signal to find out in what style
the toolbar is displayed and change themselves accordingly

Possibilities are:
- %GTK_TOOLBAR_BOTH, meaning the tool item should show
  both an icon and a label, stacked vertically
- %GTK_TOOLBAR_ICONS, meaning the toolbar shows only icons
- %GTK_TOOLBAR_TEXT, meaning the tool item should only show text
- %GTK_TOOLBAR_BOTH_HORIZ, meaning the tool item should show
  both an icon and a label, arranged horizontally

    {:argctype, "GtkToolbarStyle"}
{:argname, "rv"}
{:argtype, "ToolbarStyle"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

fun get_use_drag_window(): Bool =>
"""
Returns whether @tool_item has a drag window. See
gtk_tool_item_set_use_drag_window().
"""
  @gtk_tool_item_get_use_drag_window[Bool](widget)

fun get_visible_horizontal(): Bool =>
"""
Returns whether the @tool_item is visible on toolbars that are
docked horizontally.
"""
  @gtk_tool_item_get_visible_horizontal[Bool](widget)

fun get_visible_vertical(): Bool =>
"""
Returns whether @tool_item is visible when the toolbar is docked vertically.
See gtk_tool_item_set_visible_vertical().
"""
  @gtk_tool_item_get_visible_vertical[Bool](widget)

fun rebuild_menu(): None =>
"""
Calling this function signals to the toolbar that the
overflow menu item for @tool_item has changed. If the
overflow menu is visible when this function it called,
the menu will be rebuilt.

The function must be called when the tool item changes what it
will do in response to the #GtkToolItem::create-menu-proxy signal.
"""
  @gtk_tool_item_rebuild_menu[None](widget)

/* Needs conversion code 
Returns the #GtkMenuItem that was last set by
gtk_tool_item_set_proxy_menu_item(), ie. the #GtkMenuItem
that is going to appear in the overflow menu.
  fun retrieve_proxy_menu_item(): GtkWidget val =>
    @gtk_tool_item_retrieve_proxy_menu_item[GObjectREF](widget)
*/

fun set_expand(expand_pony: Bool): None =>
"""
Sets whether @tool_item is allocated extra space when there
is more room on the toolbar then needed for the items. The
effect is that the item gets bigger when the toolbar gets bigger
and smaller when the toolbar gets smaller.
"""
  @gtk_tool_item_set_expand[None](widget, expand_pony)

fun set_homogeneous(homogeneous_pony: Bool): None =>
"""
Sets whether @tool_item is to be allocated the same size as other
homogeneous items. The effect is that all homogeneous items will have
the same width as the widest of the items.
"""
  @gtk_tool_item_set_homogeneous[None](widget, homogeneous_pony)

fun set_is_important(is_important_pony: Bool): None =>
"""
Sets whether @tool_item should be considered important. The #GtkToolButton
class uses this property to determine whether to show or hide its label
when the toolbar style is %GTK_TOOLBAR_BOTH_HORIZ. The result is that
only tool buttons with the “is_important” property set have labels, an
effect known as “priority text”
"""
  @gtk_tool_item_set_is_important[None](widget, is_important_pony)

  fun pony_NOT_IMPLEMENTED_YET_set_proxy_menu_item(): None =>
    """
    Sets the #GtkMenuItem used in the toolbar overflow menu. The
@menu_item_id is used to identify the caller of this function and
should also be used with gtk_tool_item_get_proxy_menu_item().

See also #GtkToolItem::create-menu-proxy.

    {:doh, %{argctype: "const gchar*", argname: "menu_item_id", argtype: "utf8", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_set_tooltip_markup(): None =>
    """
    Sets the markup text to be displayed as tooltip on the item.
See gtk_widget_set_tooltip_markup().

    {:doh, %{argctype: "const gchar*", argname: "markup", argtype: "utf8", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_set_tooltip_text(): None =>
    """
    Sets the text to be displayed as tooltip on the item.
See gtk_widget_set_tooltip_text().

    {:doh, %{argctype: "const gchar*", argname: "text", argtype: "utf8", paramtype: :param, txo: "none"}}
*/
    """

fun set_use_drag_window(use_drag_window_pony: Bool): None =>
"""
Sets whether @tool_item has a drag window. When %TRUE the
toolitem can be used as a drag source through gtk_drag_source_set().
When @tool_item has a drag window it will intercept all events,
even those that would otherwise be sent to a child of @tool_item.
"""
  @gtk_tool_item_set_use_drag_window[None](widget, use_drag_window_pony)

fun set_visible_horizontal(visible_horizontal_pony: Bool): None =>
"""
Sets whether @tool_item is visible when the toolbar is docked horizontally.
"""
  @gtk_tool_item_set_visible_horizontal[None](widget, visible_horizontal_pony)

fun set_visible_vertical(visible_vertical_pony: Bool): None =>
"""
Sets whether @tool_item is visible when the toolbar is docked
vertically. Some tool items, such as text entries, are too wide to be
useful on a vertically docked toolbar. If @visible_vertical is %FALSE
@tool_item will not appear on toolbars that are docked vertically.
"""
  @gtk_tool_item_set_visible_vertical[None](widget, visible_vertical_pony)

fun toolbar_reconfigured(): None =>
"""
Emits the signal #GtkToolItem::toolbar_reconfigured on @tool_item.
#GtkToolbar and other #GtkToolShell implementations use this function
to notify children, when some aspect of their configuration changes.
"""
  @gtk_tool_item_toolbar_reconfigured[None](widget)

