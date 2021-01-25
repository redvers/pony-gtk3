/*
   needs: ["None", "Bool", "GObjectREF"]
provides: ["GtkMenuShell"]
*/
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
  @gtk_menu_shell_cancel[None](widget)

fun deactivate(): None =>
  @gtk_menu_shell_deactivate[None](widget)

fun deselect(): None =>
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
  @gtk_menu_shell_get_take_focus[Bool](widget)

/* insert unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "child", argtype: "Widget", paramtype: :param, txo: "none"}}
*/

/* prepend unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "child", argtype: "Widget", paramtype: :param, txo: "none"}}
*/

fun select_first(search_sensitive_pony: Bool): None =>
  @gtk_menu_shell_select_first[None](widget, search_sensitive_pony)

/* select_item unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "menu_item", argtype: "Widget", paramtype: :param, txo: "none"}}
*/

fun set_take_focus(take_focus_pony: Bool): None =>
  @gtk_menu_shell_set_take_focus[None](widget, take_focus_pony)

