/*
   needs: ["Bool", "None", "U32", "GObjectREF", "String", "GApplicationFlags"]
provides: ["GtkApplication"]
*/
class GtkApplication is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF


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
  @gtk_application_uninhibit[None](widget, cookie_pony)

