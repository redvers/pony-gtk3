/*
   needs: ["None", "GtkWidget val", "Bool", "GObjectREF", "I32"]
provides: ["GtkMenuShell val"]
*/
use "../gobject"
class val GtkMenuShell is GtkWidget
"""
A #GtkMenuShell is the abstract base class used to derive the
#GtkMenu and #GtkMenuBar subclasses.

A #GtkMenuShell is a container of #GtkMenuItem objects arranged
in a list which can be navigated, selected, and activated by the
user to perform application functions. A #GtkMenuItem can have a
submenu associated with it, allowing for nested hierarchical menus.

# Terminology

A menu item can be “selected”, this means that it is displayed
in the prelight state, and if it has a submenu, that submenu
will be popped up.

A menu is “active” when it is visible onscreen and the user
is selecting from it. A menubar is not active until the user
clicks on one of its menuitems. When a menu is active,
passing the mouse over a submenu will pop it up.

There is also is a concept of the current menu and a current
menu item. The current menu item is the selected menu item
that is furthest down in the hierarchy. (Every active menu shell
does not necessarily contain a selected menu item, but if
it does, then the parent menu shell must also contain
a selected menu item.) The current menu is the menu that
contains the current menu item. It will always have a GTK
grab and receive all key presses.
"""
  var widget: GObjectREF val

  fun gtkwidget(): GObjectREF val => widget

  new val create_from_GtkBuilder(gtkbuilder: GtkBuilder, glade_id: String) =>
    widget = @gtk_builder_get_object[GObjectREF](gtkbuilder.gtkwidget(), glade_id.cstring())

  new val create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'

  new val never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF




fun activate_item(menu_item_pony: GtkWidget val, force_deactivate_pony: Bool): None =>
"""
Activates the menu item within the menu shell.
"""
  @gtk_menu_shell_activate_item[None](widget, menu_item_pony.gtkwidget(), force_deactivate_pony)

  fun pony_NOT_IMPLEMENTED_YET_append(): None =>
    """
    Adds a new #GtkMenuItem to the end of the menu shell's
item list.

    {:doh, %{argctype: "GtkWidget*", argname: "child", argtype: "MenuItem", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_bind_model(): None =>
    """
    Establishes a binding between a #GtkMenuShell and a #GMenuModel.

The contents of @shell are removed and then refilled with menu items
according to @model.  When @model changes, @shell is updated.
Calling this function twice on @shell with different @model will
cause the first binding to be replaced with a binding to the new
model. If @model is %NULL then any previous binding is undone and
all children are removed.

@with_separators determines if toplevel items (eg: sections) have
separators inserted between them.  This is typically desired for
menus but doesn’t make sense for menubars.

If @action_namespace is non-%NULL then the effect is as if all
actions mentioned in the @model have their names prefixed with the
namespace, plus a dot.  For example, if the action “quit” is
mentioned and @action_namespace is “app” then the effective action
name is “app.quit”.

This function uses #GtkActionable to define the action name and
target values on the created menu items.  If you want to use an
action group other than “app” and “win”, or if you want to use a
#GtkMenuShell outside of a #GtkApplicationWindow, then you will need
to attach your own action group to the widget hierarchy using
gtk_widget_insert_action_group().  As an example, if you created a
group with a “quit” action and inserted it with the name “mygroup”
then you would use the action name “mygroup.quit” in your
#GMenuModel.

For most cases you are probably better off using
gtk_menu_new_from_model() or gtk_menu_bar_new_from_model() or just
directly passing the #GMenuModel to gtk_application_set_app_menu() or
gtk_application_set_menubar().

    {:doh, %{argctype: "GMenuModel*", argname: "model", argtype: "Gio.MenuModel", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "action_namespace", argtype: "utf8", paramtype: :param, txo: "none"}}
*/
    """

fun cancel(): None =>
"""
Cancels the selection within the menu shell.
"""
  @gtk_menu_shell_cancel[None](widget)

fun deactivate(): None =>
"""
Deactivates the menu shell.

Typically this results in the menu shell being erased
from the screen.
"""
  @gtk_menu_shell_deactivate[None](widget)

fun deselect(): None =>
"""
Deselects the currently selected item from the menu shell,
if any.
"""
  @gtk_menu_shell_deselect[None](widget)

/* Needs conversion code 
Gets the parent menu shell.

The parent menu shell of a submenu is the #GtkMenu or #GtkMenuBar
from which it was opened up.
  fun get_parent_shell(): GtkWidget val =>
    @gtk_menu_shell_get_parent_shell[GObjectREF](widget)
*/

/* Needs conversion code 
Gets the currently selected item.
  fun get_selected_item(): GtkWidget val =>
    @gtk_menu_shell_get_selected_item[GObjectREF](widget)
*/

fun get_take_focus(): Bool =>
"""
Returns %TRUE if the menu shell will take the keyboard focus on popup.
"""
  @gtk_menu_shell_get_take_focus[Bool](widget)

fun insert(child_pony: GtkWidget val, position_pony: I32): None =>
"""
Adds a new #GtkMenuItem to the menu shell’s item list
at the position indicated by @position.
"""
  @gtk_menu_shell_insert[None](widget, child_pony.gtkwidget(), position_pony)

fun prepend(child_pony: GtkWidget val): None =>
"""
Adds a new #GtkMenuItem to the beginning of the menu shell's
item list.
"""
  @gtk_menu_shell_prepend[None](widget, child_pony.gtkwidget())

fun select_first(search_sensitive_pony: Bool): None =>
"""
Select the first visible or selectable child of the menu shell;
don’t select tearoff items unless the only item is a tearoff
item.
"""
  @gtk_menu_shell_select_first[None](widget, search_sensitive_pony)

fun select_item(menu_item_pony: GtkWidget val): None =>
"""
Selects the menu item from the menu shell.
"""
  @gtk_menu_shell_select_item[None](widget, menu_item_pony.gtkwidget())

fun set_take_focus(take_focus_pony: Bool): None =>
"""
If @take_focus is %TRUE (the default) the menu shell will take
the keyboard focus so that it will receive all keyboard events
which is needed to enable keyboard navigation in menus.

Setting @take_focus to %FALSE is useful only for special applications
like virtual keyboard implementations which should not take keyboard
focus.

The @take_focus state of a menu or menu bar is automatically
propagated to submenus whenever a submenu is popped up, so you
don’t have to worry about recursively setting it for your entire
menu hierarchy. Only when programmatically picking a submenu and
popping it up manually, the @take_focus property of the submenu
needs to be set explicitly.

Note that setting it to %FALSE has side-effects:

If the focus is in some other app, it keeps the focus and keynav in
the menu doesn’t work. Consequently, keynav on the menu will only
work if the focus is on some toplevel owned by the onscreen keyboard.

To avoid confusing the user, menus with @take_focus set to %FALSE
should not display mnemonics or accelerators, since it cannot be
guaranteed that they will work.

See also gdk_keyboard_grab()
"""
  @gtk_menu_shell_set_take_focus[None](widget, take_focus_pony)

