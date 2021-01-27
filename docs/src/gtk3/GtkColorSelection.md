```````pony-full-source
/*
   needs: ["Bool", "None", "GObjectREF"]
provides: ["GtkColorSelection"]
*/
use "../gobject"
class GtkColorSelection is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create() =>
    widget = @gtk_color_selection_new[GObjectREF]() //


/* get_current_alpha unavailable due to return typing issues
{:argctype, "guint16"}
{:argname, "rv"}
{:argtype, "guint16"}
{:paramtype, :param}
{:txo, "none"} */

/* get_current_color unavailable due to typing issues
 {:doh, %{argctype: "GdkColor*", argname: "color", argtype: "Gdk.Color", paramtype: :param, txo: "none"}}
*/

/* get_current_rgba unavailable due to typing issues
 {:doh, %{argctype: "GdkRGBA*", argname: "rgba", argtype: "Gdk.RGBA", paramtype: :param, txo: "none"}}
*/

fun get_has_opacity_control(): Bool =>
  @gtk_color_selection_get_has_opacity_control[Bool](widget)

fun get_has_palette(): Bool =>
  @gtk_color_selection_get_has_palette[Bool](widget)

/* get_previous_alpha unavailable due to return typing issues
{:argctype, "guint16"}
{:argname, "rv"}
{:argtype, "guint16"}
{:paramtype, :param}
{:txo, "none"} */

/* get_previous_color unavailable due to typing issues
 {:doh, %{argctype: "GdkColor*", argname: "color", argtype: "Gdk.Color", paramtype: :param, txo: "none"}}
*/

/* get_previous_rgba unavailable due to typing issues
 {:doh, %{argctype: "GdkRGBA*", argname: "rgba", argtype: "Gdk.RGBA", paramtype: :param, txo: "none"}}
*/

fun is_adjusting(): Bool =>
  @gtk_color_selection_is_adjusting[Bool](widget)

/* set_current_alpha unavailable due to typing issues
 {:doh, %{argctype: "guint16", argname: "alpha", argtype: "guint16", paramtype: :param, txo: "none"}}
*/

/* set_current_color unavailable due to typing issues
 {:doh, %{argctype: "const GdkColor*", argname: "color", argtype: "Gdk.Color", paramtype: :param, txo: "none"}}
*/

/* set_current_rgba unavailable due to typing issues
 {:doh, %{argctype: "const GdkRGBA*", argname: "rgba", argtype: "Gdk.RGBA", paramtype: :param, txo: "none"}}
*/

fun set_has_opacity_control(has_opacity_pony: Bool): None =>
  @gtk_color_selection_set_has_opacity_control[None](widget, has_opacity_pony)

fun set_has_palette(has_palette_pony: Bool): None =>
  @gtk_color_selection_set_has_palette[None](widget, has_palette_pony)

/* set_previous_alpha unavailable due to typing issues
 {:doh, %{argctype: "guint16", argname: "alpha", argtype: "guint16", paramtype: :param, txo: "none"}}
*/

/* set_previous_color unavailable due to typing issues
 {:doh, %{argctype: "const GdkColor*", argname: "color", argtype: "Gdk.Color", paramtype: :param, txo: "none"}}
*/

/* set_previous_rgba unavailable due to typing issues
 {:doh, %{argctype: "const GdkRGBA*", argname: "rgba", argtype: "Gdk.RGBA", paramtype: :param, txo: "none"}}
*/


```````