/*
   needs: ["None", "Bool", "GObjectREF"]
provides: ["GtkStyle"]
*/
class GtkStyle is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF


  new create() =>
    widget = @gtk_style_new[GObjectREF]() //


/* apply_default_background unavailable due to typing issues
 {:doh, %{argctype: "cairo_t*", argname: "cr", argtype: "cairo.Context", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkWindow*", argname: "window", argtype: "Gdk.Window", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkStateType", argname: "state_type", argtype: "StateType", paramtype: :param, txo: "none"}}
*/

/* attach unavailable due to return typing issues
{:argctype, "GtkStyle*"}
{:argname, "rv"}
{:argtype, "Style"}
{:paramtype, :param}
{:txo, "notpresent"} */

/* copy unavailable due to return typing issues
{:argctype, "GtkStyle*"}
{:argname, "rv"}
{:argtype, "Style"}
{:paramtype, :param}
{:txo, "full"} */

fun detach(): None =>
  @gtk_style_detach[None](widget)

/* get unavailable due to typing issues
 {:doh, %{argctype: "GType", argname: "widget_type", argtype: "GType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "first_property_name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "", argname: "...", argtype: "", paramtype: :param, txo: "none"}}
*/

/* get_style_property unavailable due to typing issues
 {:doh, %{argctype: "GType", argname: "widget_type", argtype: "GType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "property_name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GValue*", argname: "value", argtype: "GObject.Value", paramtype: :param, txo: "none"}}
*/

/* get_valist unavailable due to typing issues
 {:doh, %{argctype: "GType", argname: "widget_type", argtype: "GType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "first_property_name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "va_list", argname: "var_args", argtype: "va_list", paramtype: :param, txo: "none"}}
*/

fun has_context(): Bool =>
  @gtk_style_has_context[Bool](widget)

/* lookup_color unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "color_name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkColor*", argname: "color", argtype: "Gdk.Color", paramtype: :param, txo: "none"}}
*/

/* lookup_icon_set unavailable due to return typing issues
{:argctype, "GtkIconSet*"}
{:argname, "rv"}
{:argtype, "IconSet"}
{:paramtype, :param}
{:txo, "none"} */

/* render_icon unavailable due to return typing issues
{:argctype, "GdkPixbuf*"}
{:argname, "rv"}
{:argtype, "GdkPixbuf.Pixbuf"}
{:paramtype, :param}
{:txo, "full"} */

/* set_background unavailable due to typing issues
 {:doh, %{argctype: "GdkWindow*", argname: "window", argtype: "Gdk.Window", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkStateType", argname: "state_type", argtype: "StateType", paramtype: :param, txo: "none"}}
*/

