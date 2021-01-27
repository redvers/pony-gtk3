/*
   needs: ["None", "Bool", "GObjectREF"]
provides: ["GtkMenuShell"]
*/
use "../gobject"
class GtkMenuShell is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'




/* activate_item unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "menu_item", argtype: "Widget", paramtype: :param, txo: "none"}}
*/

/* append unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "child", argtype: "MenuItem", paramtype: :param, txo: "none"}}
*/

/* bind_model unavailable due to typing issues
 {:doh, %{argctype: "GMenuModel*", argname: "model", argtype: "Gio.MenuModel", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "action_namespace", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

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

/* get_parent_shell unavailable due to return typing issues
{:argctype, "GtkWidget*"}
{:argname, "rv"}
{:argtype, "Widget"}
{:paramtype, :param}
{:txo, "none"} */

/* get_selected_item unavailable due to return typing issues
{:argctype, "GtkWidget*"}
{:argname, "rv"}
{:argtype, "Widget"}
{:paramtype, :param}
{:txo, "none"} */

fun get_take_focus(): Bool =>
"""
Returns %TRUE if the menu shell will take the keyboard focus on popup.
"""
  @gtk_menu_shell_get_take_focus[Bool](widget)

/* insert unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "child", argtype: "Widget", paramtype: :param, txo: "none"}}
*/

/* prepend unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "child", argtype: "Widget", paramtype: :param, txo: "none"}}
*/

fun select_first(search_sensitive_pony: Bool): None =>
"""
Select the first visible or selectable child of the menu shell;
don’t select tearoff items unless the only item is a tearoff
item.
"""
  @gtk_menu_shell_select_first[None](widget, search_sensitive_pony)

/* select_item unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "menu_item", argtype: "Widget", paramtype: :param, txo: "none"}}
*/

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

