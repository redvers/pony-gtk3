/*
   needs: ["Bool", "GObjectREF"]
provides: ["GtkIconTheme"]
*/
use "../gobject"
class GtkIconTheme is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create() =>
    widget = @gtk_icon_theme_new[GObjectREF]() //


/* add_resource_path unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "path", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* append_search_path unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "path", argtype: "filename", paramtype: :param, txo: "none"}}
*/

/* choose_icon unavailable due to return typing issues
{:argctype, "GtkIconInfo*"}
{:argname, "rv"}
{:argtype, "IconInfo"}
{:paramtype, :param}
{:txo, "full"} */

/* choose_icon_for_scale unavailable due to return typing issues
{:argctype, "GtkIconInfo*"}
{:argname, "rv"}
{:argtype, "IconInfo"}
{:paramtype, :param}
{:txo, "full"} */

/* get_example_icon_name unavailable due to return typing issues
{:argctype, "char*"}
{:argname, "rv"}
{:argtype, "utf8"}
{:paramtype, :param}
{:txo, "full"} */

/* get_icon_sizes unavailable due to return typing issues
{:argctype, ""}
{:argname, "rv"}
{:argtype, ""}
{:paramtype, :param}
{:txo, "full"} */

/* get_search_path unavailable due to typing issues
 {:doh, %{argctype: "", argname: "path", argtype: "", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gint*", argname: "n_elements", argtype: "gint", paramtype: :param, txo: "full"}}
*/

/* has_icon unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "icon_name", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* list_contexts unavailable due to return typing issues
{:argctype, "GList*"}
{:argname, "rv"}
{:argtype, "GLib.List"}
{:paramtype, :param}
{:txo, "full"} */

/* list_icons unavailable due to return typing issues
{:argctype, "GList*"}
{:argname, "rv"}
{:argtype, "GLib.List"}
{:paramtype, :param}
{:txo, "full"} */

/* load_icon unavailable due to return typing issues
{:argctype, "GdkPixbuf*"}
{:argname, "rv"}
{:argtype, "GdkPixbuf.Pixbuf"}
{:paramtype, :param}
{:txo, "full"} */

/* load_icon_for_scale unavailable due to return typing issues
{:argctype, "GdkPixbuf*"}
{:argname, "rv"}
{:argtype, "GdkPixbuf.Pixbuf"}
{:paramtype, :param}
{:txo, "full"} */

/* load_surface unavailable due to return typing issues
{:argctype, "cairo_surface_t*"}
{:argname, "rv"}
{:argtype, "cairo.Surface"}
{:paramtype, :param}
{:txo, "full"} */

/* lookup_by_gicon unavailable due to return typing issues
{:argctype, "GtkIconInfo*"}
{:argname, "rv"}
{:argtype, "IconInfo"}
{:paramtype, :param}
{:txo, "full"} */

/* lookup_by_gicon_for_scale unavailable due to return typing issues
{:argctype, "GtkIconInfo*"}
{:argname, "rv"}
{:argtype, "IconInfo"}
{:paramtype, :param}
{:txo, "full"} */

/* lookup_icon unavailable due to return typing issues
{:argctype, "GtkIconInfo*"}
{:argname, "rv"}
{:argtype, "IconInfo"}
{:paramtype, :param}
{:txo, "full"} */

/* lookup_icon_for_scale unavailable due to return typing issues
{:argctype, "GtkIconInfo*"}
{:argname, "rv"}
{:argtype, "IconInfo"}
{:paramtype, :param}
{:txo, "full"} */

/* prepend_search_path unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "path", argtype: "filename", paramtype: :param, txo: "none"}}
*/

fun rescan_if_needed(): Bool =>
"""
Checks to see if the icon theme has changed; if it has, any
currently cached information is discarded and will be reloaded
next time @icon_theme is accessed.
"""
  @gtk_icon_theme_rescan_if_needed[Bool](widget)

/* set_custom_theme unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "theme_name", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* set_screen unavailable due to typing issues
 {:doh, %{argctype: "GdkScreen*", argname: "screen", argtype: "Gdk.Screen", paramtype: :param, txo: "none"}}
*/

/* set_search_path unavailable due to typing issues
 {:doh, %{argctype: "", argname: "path", argtype: "", paramtype: :param, txo: "none"}}
*/

