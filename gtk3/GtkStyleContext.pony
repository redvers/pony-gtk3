/*
   needs: ["I32", "None", "GObjectREF"]
provides: ["GtkStyleContext"]
*/
class GtkStyleContext is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF


  new create() =>
    widget = @gtk_style_context_new[GObjectREF]() //


/* add_class unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "class_name", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* add_provider unavailable due to typing issues
 {:doh, %{argctype: "GtkStyleProvider*", argname: "provider", argtype: "StyleProvider", paramtype: :param, txo: "none"}}
*/

/* add_region unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "region_name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkRegionFlags", argname: "flags", argtype: "RegionFlags", paramtype: :param, txo: "none"}}
*/

/* cancel_animations unavailable due to typing issues
 {:doh, %{argctype: "gpointer", argname: "region_id", argtype: "gpointer", paramtype: :param, txo: "none"}}
*/

/* get unavailable due to typing issues
 {:doh, %{argctype: "GtkStateFlags", argname: "state", argtype: "StateFlags", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "", argname: "...", argtype: "", paramtype: :param, txo: "none"}}
*/

/* get_background_color unavailable due to typing issues
 {:doh, %{argctype: "GtkStateFlags", argname: "state", argtype: "StateFlags", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkRGBA*", argname: "color", argtype: "Gdk.RGBA", paramtype: :param, txo: "none"}}
*/

/* get_border unavailable due to typing issues
 {:doh, %{argctype: "GtkStateFlags", argname: "state", argtype: "StateFlags", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkBorder*", argname: "border", argtype: "Border", paramtype: :param, txo: "none"}}
*/

/* get_border_color unavailable due to typing issues
 {:doh, %{argctype: "GtkStateFlags", argname: "state", argtype: "StateFlags", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkRGBA*", argname: "color", argtype: "Gdk.RGBA", paramtype: :param, txo: "none"}}
*/

/* get_color unavailable due to typing issues
 {:doh, %{argctype: "GtkStateFlags", argname: "state", argtype: "StateFlags", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkRGBA*", argname: "color", argtype: "Gdk.RGBA", paramtype: :param, txo: "none"}}
*/

/* get_direction unavailable due to return typing issues
{:argctype, "GtkTextDirection"}
{:argname, "rv"}
{:argtype, "TextDirection"}
{:paramtype, :param}
{:txo, "none"} */

/* get_font unavailable due to return typing issues
{:argctype, "const PangoFontDescription*"}
{:argname, "rv"}
{:argtype, "Pango.FontDescription"}
{:paramtype, :param}
{:txo, "none"} */

/* get_frame_clock unavailable due to return typing issues
{:argctype, "GdkFrameClock*"}
{:argname, "rv"}
{:argtype, "Gdk.FrameClock"}
{:paramtype, :param}
{:txo, "none"} */

/* get_junction_sides unavailable due to return typing issues
{:argctype, "GtkJunctionSides"}
{:argname, "rv"}
{:argtype, "JunctionSides"}
{:paramtype, :param}
{:txo, "none"} */

/* get_margin unavailable due to typing issues
 {:doh, %{argctype: "GtkStateFlags", argname: "state", argtype: "StateFlags", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkBorder*", argname: "margin", argtype: "Border", paramtype: :param, txo: "none"}}
*/

/* get_padding unavailable due to typing issues
 {:doh, %{argctype: "GtkStateFlags", argname: "state", argtype: "StateFlags", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkBorder*", argname: "padding", argtype: "Border", paramtype: :param, txo: "none"}}
*/

/* get_parent unavailable due to return typing issues
{:argctype, "GtkStyleContext*"}
{:argname, "rv"}
{:argtype, "StyleContext"}
{:paramtype, :param}
{:txo, "none"} */

/* get_path unavailable due to return typing issues
{:argctype, "const GtkWidgetPath*"}
{:argname, "rv"}
{:argtype, "WidgetPath"}
{:paramtype, :param}
{:txo, "none"} */

/* get_property unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "property", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkStateFlags", argname: "state", argtype: "StateFlags", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GValue*", argname: "value", argtype: "GObject.Value", paramtype: :param, txo: "full"}}
*/

fun get_scale(): I32 =>
  @gtk_style_context_get_scale[I32](widget)

/* get_screen unavailable due to return typing issues
{:argctype, "GdkScreen*"}
{:argname, "rv"}
{:argtype, "Gdk.Screen"}
{:paramtype, :param}
{:txo, "none"} */

/* get_section unavailable due to return typing issues
{:argctype, "GtkCssSection*"}
{:argname, "rv"}
{:argtype, "CssSection"}
{:paramtype, :param}
{:txo, "none"} */

/* get_state unavailable due to return typing issues
{:argctype, "GtkStateFlags"}
{:argname, "rv"}
{:argtype, "StateFlags"}
{:paramtype, :param}
{:txo, "none"} */

/* get_style unavailable due to typing issues
 {:doh, %{argctype: "", argname: "...", argtype: "", paramtype: :param, txo: "none"}}
*/

/* get_style_property unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "property_name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GValue*", argname: "value", argtype: "GObject.Value", paramtype: :param, txo: "none"}}
*/

/* get_style_valist unavailable due to typing issues
 {:doh, %{argctype: "va_list", argname: "args", argtype: "va_list", paramtype: :param, txo: "none"}}
*/

/* get_valist unavailable due to typing issues
 {:doh, %{argctype: "GtkStateFlags", argname: "state", argtype: "StateFlags", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "va_list", argname: "args", argtype: "va_list", paramtype: :param, txo: "none"}}
*/

/* has_class unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "class_name", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* has_region unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "region_name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkRegionFlags*", argname: "flags_return", argtype: "RegionFlags", paramtype: :param, txo: "full"}}
*/

fun invalidate(): None =>
  @gtk_style_context_invalidate[None](widget)

/* list_classes unavailable due to return typing issues
{:argctype, "GList*"}
{:argname, "rv"}
{:argtype, "GLib.List"}
{:paramtype, :param}
{:txo, "container"} */

/* list_regions unavailable due to return typing issues
{:argctype, "GList*"}
{:argname, "rv"}
{:argtype, "GLib.List"}
{:paramtype, :param}
{:txo, "container"} */

/* lookup_color unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "color_name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkRGBA*", argname: "color", argtype: "Gdk.RGBA", paramtype: :param, txo: "none"}}
*/

/* lookup_icon_set unavailable due to return typing issues
{:argctype, "GtkIconSet*"}
{:argname, "rv"}
{:argtype, "IconSet"}
{:paramtype, :param}
{:txo, "none"} */

/* notify_state_change unavailable due to typing issues
 {:doh, %{argctype: "GdkWindow*", argname: "window", argtype: "Gdk.Window", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "region_id", argtype: "gpointer", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkStateType", argname: "state", argtype: "StateType", paramtype: :param, txo: "none"}}
*/

fun pop_animatable_region(): None =>
  @gtk_style_context_pop_animatable_region[None](widget)

/* push_animatable_region unavailable due to typing issues
 {:doh, %{argctype: "gpointer", argname: "region_id", argtype: "gpointer", paramtype: :param, txo: "none"}}
*/

/* remove_class unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "class_name", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* remove_provider unavailable due to typing issues
 {:doh, %{argctype: "GtkStyleProvider*", argname: "provider", argtype: "StyleProvider", paramtype: :param, txo: "none"}}
*/

/* remove_region unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "region_name", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

fun restore(): None =>
  @gtk_style_context_restore[None](widget)

fun save(): None =>
  @gtk_style_context_save[None](widget)

/* scroll_animations unavailable due to typing issues
 {:doh, %{argctype: "GdkWindow*", argname: "window", argtype: "Gdk.Window", paramtype: :param, txo: "none"}}
*/

/* set_background unavailable due to typing issues
 {:doh, %{argctype: "GdkWindow*", argname: "window", argtype: "Gdk.Window", paramtype: :param, txo: "none"}}
*/

/* set_direction unavailable due to typing issues
 {:doh, %{argctype: "GtkTextDirection", argname: "direction", argtype: "TextDirection", paramtype: :param, txo: "none"}}
*/

/* set_frame_clock unavailable due to typing issues
 {:doh, %{argctype: "GdkFrameClock*", argname: "frame_clock", argtype: "Gdk.FrameClock", paramtype: :param, txo: "none"}}
*/

/* set_junction_sides unavailable due to typing issues
 {:doh, %{argctype: "GtkJunctionSides", argname: "sides", argtype: "JunctionSides", paramtype: :param, txo: "none"}}
*/

/* set_parent unavailable due to typing issues
 {:doh, %{argctype: "GtkStyleContext*", argname: "parent", argtype: "StyleContext", paramtype: :param, txo: "none"}}
*/

/* set_path unavailable due to typing issues
 {:doh, %{argctype: "GtkWidgetPath*", argname: "path", argtype: "WidgetPath", paramtype: :param, txo: "none"}}
*/

fun set_scale(scale_pony: I32): None =>
  @gtk_style_context_set_scale[None](widget, scale_pony)

/* set_screen unavailable due to typing issues
 {:doh, %{argctype: "GdkScreen*", argname: "screen", argtype: "Gdk.Screen", paramtype: :param, txo: "none"}}
*/

/* set_state unavailable due to typing issues
 {:doh, %{argctype: "GtkStateFlags", argname: "flags", argtype: "StateFlags", paramtype: :param, txo: "none"}}
*/

/* state_is_running unavailable due to typing issues
 {:doh, %{argctype: "GtkStateType", argname: "state", argtype: "StateType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble*", argname: "progress", argtype: "gdouble", paramtype: :param, txo: "full"}}
*/

/* to_string unavailable due to return typing issues
{:argctype, "char*"}
{:argname, "rv"}
{:argtype, "utf8"}
{:paramtype, :param}
{:txo, "full"} */

