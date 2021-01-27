/*
   needs: ["Bool", "None", "U32", "GObjectREF", "String", "GApplicationFlags"]
provides: ["GtkApplication"]
*/
use "../gobject"
class GtkApplication is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create(application_id_pony: String, flags_pony: GApplicationFlags) =>
    widget = @gtk_application_new[GObjectREF](application_id_pony.cstring(), flags_pony) //


/* add_accelerator unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "accelerator", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "action_name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GVariant*", argname: "parameter", argtype: "GLib.Variant", paramtype: :param, txo: "none"}}
*/

/* add_window unavailable due to typing issues
 {:doh, %{argctype: "GtkWindow*", argname: "window", argtype: "Window", paramtype: :param, txo: "none"}}
*/

/* get_accels_for_action unavailable due to return typing issues
{:argctype, ""}
{:argname, "rv"}
{:argtype, ""}
{:paramtype, :param}
{:txo, "full"} */

/* get_actions_for_accel unavailable due to return typing issues
{:argctype, ""}
{:argname, "rv"}
{:argtype, ""}
{:paramtype, :param}
{:txo, "full"} */

/* get_active_window unavailable due to return typing issues
{:argctype, "GtkWindow*"}
{:argname, "rv"}
{:argtype, "Window"}
{:paramtype, :param}
{:txo, "none"} */

/* get_app_menu unavailable due to return typing issues
{:argctype, "GMenuModel*"}
{:argname, "rv"}
{:argtype, "Gio.MenuModel"}
{:paramtype, :param}
{:txo, "none"} */

/* get_menu_by_id unavailable due to return typing issues
{:argctype, "GMenu*"}
{:argname, "rv"}
{:argtype, "Gio.Menu"}
{:paramtype, :param}
{:txo, "none"} */

/* get_menubar unavailable due to return typing issues
{:argctype, "GMenuModel*"}
{:argname, "rv"}
{:argtype, "Gio.MenuModel"}
{:paramtype, :param}
{:txo, "none"} */

/* get_window_by_id unavailable due to return typing issues
{:argctype, "GtkWindow*"}
{:argname, "rv"}
{:argtype, "Window"}
{:paramtype, :param}
{:txo, "none"} */

/* get_windows unavailable due to return typing issues
{:argctype, "GList*"}
{:argname, "rv"}
{:argtype, "GLib.List"}
{:paramtype, :param}
{:txo, "none"} */

/* inhibit unavailable due to typing issues
 {:doh, %{argctype: "GtkWindow*", argname: "window", argtype: "Window", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkApplicationInhibitFlags", argname: "flags", argtype: "ApplicationInhibitFlags", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "reason", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* is_inhibited unavailable due to typing issues
 {:doh, %{argctype: "GtkApplicationInhibitFlags", argname: "flags", argtype: "ApplicationInhibitFlags", paramtype: :param, txo: "none"}}
*/

/* list_action_descriptions unavailable due to return typing issues
{:argctype, ""}
{:argname, "rv"}
{:argtype, ""}
{:paramtype, :param}
{:txo, "full"} */

fun prefers_app_menu(): Bool =>
"""
Determines if the desktop environment in which the application is
running would prefer an application menu be shown.

If this function returns %TRUE then the application should call
gtk_application_set_app_menu() with the contents of an application
menu, which will be shown by the desktop environment.  If it returns
%FALSE then you should consider using an alternate approach, such as
a menubar.

The value returned by this function is purely advisory and you are
free to ignore it.  If you call gtk_application_set_app_menu() even
if the desktop environment doesn't support app menus, then a fallback
will be provided.

Applications are similarly free not to set an app menu even if the
desktop environment wants to show one.  In that case, a fallback will
also be created by the desktop environment (GNOME, for example, uses
a menu with only a "Quit" item in it).

The value returned by this function never changes.  Once it returns a
particular value, it is guaranteed to always return the same value.

You may only call this function after the application has been
registered and after the base startup handler has run.  You're most
likely to want to use this from your own startup handler.  It may
also make sense to consult this function while constructing UI (in
activate, open or an action activation handler) in order to determine
if you should show a gear menu or not.

This function will return %FALSE on Mac OS and a default app menu
will be created automatically with the "usual" contents of that menu
typical to most Mac OS applications.  If you call
gtk_application_set_app_menu() anyway, then this menu will be
replaced with your own.
"""
  @gtk_application_prefers_app_menu[Bool](widget)

/* remove_accelerator unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "action_name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GVariant*", argname: "parameter", argtype: "GLib.Variant", paramtype: :param, txo: "none"}}
*/

/* remove_window unavailable due to typing issues
 {:doh, %{argctype: "GtkWindow*", argname: "window", argtype: "Window", paramtype: :param, txo: "none"}}
*/

/* set_accels_for_action unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "detailed_action_name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "", argname: "accels", argtype: "", paramtype: :param, txo: "none"}}
*/

/* set_app_menu unavailable due to typing issues
 {:doh, %{argctype: "GMenuModel*", argname: "app_menu", argtype: "Gio.MenuModel", paramtype: :param, txo: "none"}}
*/

/* set_menubar unavailable due to typing issues
 {:doh, %{argctype: "GMenuModel*", argname: "menubar", argtype: "Gio.MenuModel", paramtype: :param, txo: "none"}}
*/

fun uninhibit(cookie_pony: U32): None =>
"""
Removes an inhibitor that has been established with gtk_application_inhibit().
Inhibitors are also cleared when the application exits.
"""
  @gtk_application_uninhibit[None](widget, cookie_pony)

