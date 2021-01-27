/*
   needs: ["None", "I32", "Pointer[U8 val] ref", "String", "GObjectREF"]
provides: ["GtkRecentFilter"]
*/
use "../gobject"
class GtkRecentFilter is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create() =>
    widget = @gtk_recent_filter_new[GObjectREF]() //


fun add_age(days_pony: I32): None =>
"""
Adds a rule that allows resources based on their age - that is, the number
of days elapsed since they were last modified.
"""
  @gtk_recent_filter_add_age[None](widget, days_pony)

/* add_application unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "application", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* add_custom unavailable due to typing issues
 {:doh, %{argctype: "GtkRecentFilterFlags", argname: "needed", argtype: "RecentFilterFlags", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkRecentFilterFunc", argname: "func", argtype: "RecentFilterFunc", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "data", argtype: "gpointer", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GDestroyNotify", argname: "data_destroy", argtype: "GLib.DestroyNotify", paramtype: :param, txo: "none"}}
*/

/* add_group unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "group", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* add_mime_type unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "mime_type", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* add_pattern unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "pattern", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

fun add_pixbuf_formats(): None =>
"""
Adds a rule allowing image files in the formats supported
by GdkPixbuf.
"""
  @gtk_recent_filter_add_pixbuf_formats[None](widget)

/* filter unavailable due to typing issues
 {:doh, %{argctype: "const GtkRecentFilterInfo*", argname: "filter_info", argtype: "RecentFilterInfo", paramtype: :param, txo: "none"}}
*/

fun get_name(): String =>
"""
Gets the human-readable name for the filter.
See gtk_recent_filter_set_name().
"""
  var cstring_pony: Pointer[U8 val] ref = @gtk_recent_filter_get_name[Pointer[U8 val] ref](widget)
  var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

/* get_needed unavailable due to return typing issues
{:argctype, "GtkRecentFilterFlags"}
{:argname, "rv"}
{:argtype, "RecentFilterFlags"}
{:paramtype, :param}
{:txo, "none"} */

/* set_name unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "name", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

