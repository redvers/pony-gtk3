/*
   needs: ["Bool", "GObjectREF"]
provides: ["GtkIconTheme val"]
*/
use "../gobject"
class val GtkIconTheme is GtkWidget
"""
#GtkIconTheme provides a facility for looking up icons by name
and size. The main reason for using a name rather than simply
providing a filename is to allow different icons to be used
depending on what “icon theme” is selected
by the user. The operation of icon themes on Linux and Unix
follows the [Icon Theme Specification](http://www.freedesktop.org/Standards/icon-theme-spec)
There is a fallback icon theme, named `hicolor`, where applications
should install their icons, but additional icon themes can be installed
as operating system vendors and users choose.

Named icons are similar to the deprecated [Stock Items][gtkstock],
and the distinction between the two may be a bit confusing.
A few things to keep in mind:

- Stock images usually are used in conjunction with
  [Stock Items][gtkstock], such as %GTK_STOCK_OK or
  %GTK_STOCK_OPEN. Named icons are easier to set up and therefore
  are more useful for new icons that an application wants to
  add, such as application icons or window icons.

- Stock images can only be loaded at the symbolic sizes defined
  by the #GtkIconSize enumeration, or by custom sizes defined
  by gtk_icon_size_register(), while named icons are more flexible
  and any pixel size can be specified.

- Because stock images are closely tied to stock items, and thus
  to actions in the user interface, stock images may come in
  multiple variants for different widget states or writing
  directions.

A good rule of thumb is that if there is a stock image for what
you want to use, use it, otherwise use a named icon. It turns
out that internally stock images are generally defined in
terms of one or more named icons. (An example of the
more than one case is icons that depend on writing direction;
%GTK_STOCK_GO_FORWARD uses the two themed icons
“gtk-stock-go-forward-ltr” and “gtk-stock-go-forward-rtl”.)

In many cases, named themes are used indirectly, via #GtkImage
or stock items, rather than directly, but looking up icons
directly is also simple. The #GtkIconTheme object acts
as a database of all the icons in the current theme. You
can create new #GtkIconTheme objects, but it’s much more
efficient to use the standard icon theme for the #GdkScreen
so that the icon information is shared with other people
looking up icons.
|[<!-- language="C" -->
GError *error = NULL;
GtkIconTheme *icon_theme;
GdkPixbuf *pixbuf;

icon_theme = gtk_icon_theme_get_default ();
pixbuf = gtk_icon_theme_load_icon (icon_theme,
                                   "my-icon-name", // icon name
                                   48, // icon size
                                   0,  // flags
                                   &error);
if (!pixbuf)
  {
    g_warning ("Couldn’t load icon: %s", error->message);
    g_error_free (error);
  }
else
  {
    // Use the pixbuf
    g_object_unref (pixbuf);
  }
]|
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
    widget = @gtk_icon_theme_new[GObjectREF]() //


  fun pony_NOT_IMPLEMENTED_YET_add_resource_path(): None =>
    """
    Adds a resource path that will be looked at when looking
for icons, similar to search paths.

This function should be used to make application-specific icons
available as part of the icon theme.

The resources are considered as part of the hicolor icon theme
and must be located in subdirectories that are defined in the
hicolor icon theme, such as `@path/16x16/actions/run.png`.
Icons that are directly placed in the resource path instead
of a subdirectory are also considered as ultimate fallback.

    {:doh, %{argctype: "const gchar*", argname: "path", argtype: "utf8", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_append_search_path(): None =>
    """
    Appends a directory to the search path.
See gtk_icon_theme_set_search_path().

    {:doh, %{argctype: "const gchar*", argname: "path", argtype: "filename", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_choose_icon(): None =>
    """
    Looks up a named icon and returns a #GtkIconInfo containing
information such as the filename of the icon. The icon
can then be rendered into a pixbuf using
gtk_icon_info_load_icon(). (gtk_icon_theme_load_icon()
combines these two steps if all you need is the pixbuf.)

If @icon_names contains more than one name, this function
tries them all in the given order before falling back to
inherited icon themes.

    {:argctype, "GtkIconInfo*"}
{:argname, "rv"}
{:argtype, "IconInfo"}
{:paramtype, :param}
{:txo, "full"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_choose_icon_for_scale(): None =>
    """
    Looks up a named icon for a particular window scale and returns
a #GtkIconInfo containing information such as the filename of the
icon. The icon can then be rendered into a pixbuf using
gtk_icon_info_load_icon(). (gtk_icon_theme_load_icon()
combines these two steps if all you need is the pixbuf.)

If @icon_names contains more than one name, this function
tries them all in the given order before falling back to
inherited icon themes.

    {:argctype, "GtkIconInfo*"}
{:argname, "rv"}
{:argtype, "IconInfo"}
{:paramtype, :param}
{:txo, "full"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_example_icon_name(): None =>
    """
    Gets the name of an icon that is representative of the
current theme (for instance, to use when presenting
a list of themes to the user.)

    {:argctype, "char*"}
{:argname, "rv"}
{:argtype, "utf8"}
{:paramtype, :param}
{:txo, "full"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_icon_sizes(): None =>
    """
    Returns an array of integers describing the sizes at which
the icon is available without scaling. A size of -1 means
that the icon is available in a scalable format. The array
is zero-terminated.

    {:argctype, ""}
{:argname, "rv"}
{:argtype, ""}
{:paramtype, :param}
{:txo, "full"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_search_path(): None =>
    """
    Gets the current search path. See gtk_icon_theme_set_search_path().

    {:doh, %{argctype: "", argname: "path", argtype: "", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gint*", argname: "n_elements", argtype: "gint", paramtype: :param, txo: "full"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_has_icon(): None =>
    """
    Checks whether an icon theme includes an icon
for a particular name.

    {:doh, %{argctype: "const gchar*", argname: "icon_name", argtype: "utf8", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_list_contexts(): None =>
    """
    Gets the list of contexts available within the current
hierarchy of icon themes.
See gtk_icon_theme_list_icons() for details about contexts.

    {:argctype, "GList*"}
{:argname, "rv"}
{:argtype, "GLib.List"}
{:paramtype, :param}
{:txo, "full"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_list_icons(): None =>
    """
    Lists the icons in the current icon theme. Only a subset
of the icons can be listed by providing a context string.
The set of values for the context string is system dependent,
but will typically include such values as “Applications” and
“MimeTypes”. Contexts are explained in the
[Icon Theme Specification](http://www.freedesktop.org/wiki/Specifications/icon-theme-spec).
The standard contexts are listed in the
[Icon Naming Specification](http://www.freedesktop.org/wiki/Specifications/icon-naming-spec).
Also see gtk_icon_theme_list_contexts().

    {:argctype, "GList*"}
{:argname, "rv"}
{:argtype, "GLib.List"}
{:paramtype, :param}
{:txo, "full"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_load_icon(): None =>
    """
    Looks up an icon in an icon theme, scales it to the given size
and renders it into a pixbuf. This is a convenience function;
if more details about the icon are needed, use
gtk_icon_theme_lookup_icon() followed by gtk_icon_info_load_icon().

Note that you probably want to listen for icon theme changes and
update the icon. This is usually done by connecting to the
GtkWidget::style-set signal. If for some reason you do not want to
update the icon when the icon theme changes, you should consider
using gdk_pixbuf_copy() to make a private copy of the pixbuf
returned by this function. Otherwise GTK+ may need to keep the old
icon theme loaded, which would be a waste of memory.

    {:argctype, "GdkPixbuf*"}
{:argname, "rv"}
{:argtype, "GdkPixbuf.Pixbuf"}
{:paramtype, :param}
{:txo, "full"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_load_icon_for_scale(): None =>
    """
    Looks up an icon in an icon theme for a particular window scale,
scales it to the given size and renders it into a pixbuf. This is a
convenience function; if more details about the icon are needed,
use gtk_icon_theme_lookup_icon() followed by
gtk_icon_info_load_icon().

Note that you probably want to listen for icon theme changes and
update the icon. This is usually done by connecting to the
GtkWidget::style-set signal. If for some reason you do not want to
update the icon when the icon theme changes, you should consider
using gdk_pixbuf_copy() to make a private copy of the pixbuf
returned by this function. Otherwise GTK+ may need to keep the old
icon theme loaded, which would be a waste of memory.

    {:argctype, "GdkPixbuf*"}
{:argname, "rv"}
{:argtype, "GdkPixbuf.Pixbuf"}
{:paramtype, :param}
{:txo, "full"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_load_surface(): None =>
    """
    Looks up an icon in an icon theme for a particular window scale,
scales it to the given size and renders it into a cairo surface. This is a
convenience function; if more details about the icon are needed,
use gtk_icon_theme_lookup_icon() followed by
gtk_icon_info_load_surface().

Note that you probably want to listen for icon theme changes and
update the icon. This is usually done by connecting to the
GtkWidget::style-set signal.

    {:argctype, "cairo_surface_t*"}
{:argname, "rv"}
{:argtype, "cairo.Surface"}
{:paramtype, :param}
{:txo, "full"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_lookup_by_gicon(): None =>
    """
    Looks up an icon and returns a #GtkIconInfo containing information
such as the filename of the icon. The icon can then be rendered
into a pixbuf using gtk_icon_info_load_icon().

When rendering on displays with high pixel densities you should not
use a @size multiplied by the scaling factor returned by functions
like gdk_window_get_scale_factor(). Instead, you should use
gtk_icon_theme_lookup_by_gicon_for_scale(), as the assets loaded
for a given scaling factor may be different.

    {:argctype, "GtkIconInfo*"}
{:argname, "rv"}
{:argtype, "IconInfo"}
{:paramtype, :param}
{:txo, "full"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_lookup_by_gicon_for_scale(): None =>
    """
    Looks up an icon and returns a #GtkIconInfo containing information
such as the filename of the icon. The icon can then be rendered into
a pixbuf using gtk_icon_info_load_icon().

    {:argctype, "GtkIconInfo*"}
{:argname, "rv"}
{:argtype, "IconInfo"}
{:paramtype, :param}
{:txo, "full"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_lookup_icon(): None =>
    """
    Looks up a named icon and returns a #GtkIconInfo containing
information such as the filename of the icon. The icon
can then be rendered into a pixbuf using
gtk_icon_info_load_icon(). (gtk_icon_theme_load_icon()
combines these two steps if all you need is the pixbuf.)

When rendering on displays with high pixel densities you should not
use a @size multiplied by the scaling factor returned by functions
like gdk_window_get_scale_factor(). Instead, you should use
gtk_icon_theme_lookup_icon_for_scale(), as the assets loaded
for a given scaling factor may be different.

    {:argctype, "GtkIconInfo*"}
{:argname, "rv"}
{:argtype, "IconInfo"}
{:paramtype, :param}
{:txo, "full"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_lookup_icon_for_scale(): None =>
    """
    Looks up a named icon for a particular window scale and returns a
#GtkIconInfo containing information such as the filename of the
icon. The icon can then be rendered into a pixbuf using
gtk_icon_info_load_icon(). (gtk_icon_theme_load_icon() combines
these two steps if all you need is the pixbuf.)

    {:argctype, "GtkIconInfo*"}
{:argname, "rv"}
{:argtype, "IconInfo"}
{:paramtype, :param}
{:txo, "full"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_prepend_search_path(): None =>
    """
    Prepends a directory to the search path.
See gtk_icon_theme_set_search_path().

    {:doh, %{argctype: "const gchar*", argname: "path", argtype: "filename", paramtype: :param, txo: "none"}}
*/
    """

fun rescan_if_needed(): Bool =>
"""
Checks to see if the icon theme has changed; if it has, any
currently cached information is discarded and will be reloaded
next time @icon_theme is accessed.
"""
  @gtk_icon_theme_rescan_if_needed[Bool](widget)

  fun pony_NOT_IMPLEMENTED_YET_set_custom_theme(): None =>
    """
    Sets the name of the icon theme that the #GtkIconTheme object uses
overriding system configuration. This function cannot be called
on the icon theme objects returned from gtk_icon_theme_get_default()
and gtk_icon_theme_get_for_screen().

    {:doh, %{argctype: "const gchar*", argname: "theme_name", argtype: "utf8", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_set_screen(): None =>
    """
    Sets the screen for an icon theme; the screen is used
to track the user’s currently configured icon theme,
which might be different for different screens.

    {:doh, %{argctype: "GdkScreen*", argname: "screen", argtype: "Gdk.Screen", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_set_search_path(): None =>
    """
    Sets the search path for the icon theme object. When looking
for an icon theme, GTK+ will search for a subdirectory of
one or more of the directories in @path with the same name
as the icon theme containing an index.theme file. (Themes from
multiple of the path elements are combined to allow themes to be
extended by adding icons in the user’s home directory.)

In addition if an icon found isn’t found either in the current
icon theme or the default icon theme, and an image file with
the right name is found directly in one of the elements of
@path, then that image will be used for the icon name.
(This is legacy feature, and new icons should be put
into the fallback icon theme, which is called hicolor,
rather than directly on the icon path.)

    {:doh, %{argctype: "", argname: "path", argtype: "", paramtype: :param, txo: "none"}}
*/
    """

