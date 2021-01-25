/*
   needs: ["I32", "GObjectREF"]
provides: ["GtkRecentManager"]
*/
class GtkRecentManager is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create() =>
    widget = @gtk_recent_manager_new[GObjectREF]() //


/* add_full unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "uri", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const GtkRecentData*", argname: "recent_data", argtype: "RecentData", paramtype: :param, txo: "none"}}
*/

/* add_item unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "uri", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* get_items unavailable due to return typing issues
{:argctype, "GList*"}
{:argname, "rv"}
{:argtype, "GLib.List"}
{:paramtype, :param}
{:txo, "full"} */

/* has_item unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "uri", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* lookup_item unavailable due to return typing issues
{:argctype, "GtkRecentInfo*"}
{:argname, "rv"}
{:argtype, "RecentInfo"}
{:paramtype, :param}
{:txo, "full"} */

/* move_item unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "uri", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "new_uri", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

fun purge_items(): I32 =>
  @gtk_recent_manager_purge_items[I32](widget)

/* remove_item unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "uri", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

