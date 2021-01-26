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
  @gtk_icon_factory_add_default[None](widget)

/* lookup unavailable due to return typing issues
{:argctype, "GtkIconSet*"}
{:argname, "rv"}
{:argtype, "IconSet"}
{:paramtype, :param}
{:txo, "none"} */

fun remove_default(): None =>
  @gtk_icon_factory_remove_default[None](widget)

