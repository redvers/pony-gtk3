/*
   needs: ["None", "GObjectREF"]
provides: ["GtkIconFactory"]
*/
use "../gobject"
class GtkIconFactory is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create() =>
    widget = @gtk_icon_factory_new[GObjectREF]() //


/* add unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "stock_id", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkIconSet*", argname: "icon_set", argtype: "IconSet", paramtype: :param, txo: "none"}}
*/

fun add_default(): None =>
"""
Adds an icon factory to the list of icon factories searched by
gtk_style_lookup_icon_set(). This means that, for example,
gtk_image_new_from_stock() will be able to find icons in @factory.
There will normally be an icon factory added for each library or
application that comes with icons. The default icon factories
can be overridden by themes.
"""
  @gtk_icon_factory_add_default[None](widget)

/* lookup unavailable due to return typing issues
{:argctype, "GtkIconSet*"}
{:argname, "rv"}
{:argtype, "IconSet"}
{:paramtype, :param}
{:txo, "none"} */

fun remove_default(): None =>
"""
Removes an icon factory from the list of default icon
factories. Not normally used; you might use it for a library that
can be unloaded or shut down.
"""
  @gtk_icon_factory_remove_default[None](widget)

