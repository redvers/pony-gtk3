/*
   needs: ["None", "Bool", "U32", "GObjectREF"]
provides: ["GtkUIManager"]
*/
use "../gobject"
class GtkUIManager is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create() =>
    widget = @gtk_ui_manager_new[GObjectREF]() //


/* add_ui unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "path", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "action", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkUIManagerItemType", argname: "gtype", argtype: "UIManagerItemType", paramtype: :param, txo: "none"}}
*/

/* add_ui_from_file unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "filename", argtype: "filename", paramtype: :param, txo: "none"}}
*/

/* add_ui_from_resource unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "resource_path", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* add_ui_from_string unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "buffer", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gssize", argname: "length", argtype: "gssize", paramtype: :param, txo: "none"}}
*/

fun ensure_update(): None =>
  @gtk_ui_manager_ensure_update[None](widget)

/* get_accel_group unavailable due to return typing issues
{:argctype, "GtkAccelGroup*"}
{:argname, "rv"}
{:argtype, "AccelGroup"}
{:paramtype, :param}
{:txo, "none"} */

/* get_action unavailable due to return typing issues
{:argctype, "GtkAction*"}
{:argname, "rv"}
{:argtype, "Action"}
{:paramtype, :param}
{:txo, "none"} */

/* get_action_groups unavailable due to return typing issues
{:argctype, "GList*"}
{:argname, "rv"}
{:argtype, "GLib.List"}
{:paramtype, :param}
{:txo, "none"} */

fun get_add_tearoffs(): Bool =>
  @gtk_ui_manager_get_add_tearoffs[Bool](widget)

/* get_toplevels unavailable due to return typing issues
{:argctype, "GSList*"}
{:argname, "rv"}
{:argtype, "GLib.SList"}
{:paramtype, :param}
{:txo, "container"} */

/* get_ui unavailable due to return typing issues
{:argctype, "gchar*"}
{:argname, "rv"}
{:argtype, "utf8"}
{:paramtype, :param}
{:txo, "full"} */

/* get_widget unavailable due to return typing issues
{:argctype, "GtkWidget*"}
{:argname, "rv"}
{:argtype, "Widget"}
{:paramtype, :param}
{:txo, "none"} */

/* insert_action_group unavailable due to typing issues
 {:doh, %{argctype: "GtkActionGroup*", argname: "action_group", argtype: "ActionGroup", paramtype: :param, txo: "none"}}
*/

fun new_merge_id(): U32 =>
  @gtk_ui_manager_new_merge_id[U32](widget)

/* remove_action_group unavailable due to typing issues
 {:doh, %{argctype: "GtkActionGroup*", argname: "action_group", argtype: "ActionGroup", paramtype: :param, txo: "none"}}
*/

fun remove_ui(merge_id_pony: U32): None =>
  @gtk_ui_manager_remove_ui[None](widget, merge_id_pony)

fun set_add_tearoffs(add_tearoffs_pony: Bool): None =>
  @gtk_ui_manager_set_add_tearoffs[None](widget, add_tearoffs_pony)

