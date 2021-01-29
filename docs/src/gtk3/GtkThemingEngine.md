```````pony-full-source
/*
   needs: ["GObjectREF"]
provides: ["GtkThemingEngine val"]
*/
use "../gobject"
class val GtkThemingEngine is GtkWidget
"""
#GtkThemingEngine was the object used for rendering themed content
in GTK+ widgets. It used to allow overriding GTK+'s default
implementation of rendering functions by allowing engines to be
loaded as modules.

#GtkThemingEngine has been deprecated in GTK+ 3.14 and will be
ignored for rendering. The advancements in CSS theming are good
enough to allow themers to achieve their goals without the need
to modify source code.
"""
  var widget: GObjectREF val

  fun gtkwidget(): GObjectREF val => widget

  new val create_from_GtkBuilder(gtkbuilder: GtkBuilder, glade_id: String) =>
    widget = @gtk_builder_get_object[GObjectREF](gtkbuilder.gtkwidget(), glade_id.cstring())

  new val create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'

  new val never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF




  fun pony_NOT_IMPLEMENTED_YET_get(): None =>
    """
    Retrieves several style property values that apply to the currently
rendered element.

    {:doh, %{argctype: "GtkStateFlags", argname: "state", argtype: "StateFlags", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "", argname: "...", argtype: "", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_background_color(): None =>
    """
    Gets the background color for a given state.

    {:doh, %{argctype: "GtkStateFlags", argname: "state", argtype: "StateFlags", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkRGBA*", argname: "color", argtype: "Gdk.RGBA", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_border(): None =>
    """
    Gets the border for a given state as a #GtkBorder.

    {:doh, %{argctype: "GtkStateFlags", argname: "state", argtype: "StateFlags", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkBorder*", argname: "border", argtype: "Border", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_border_color(): None =>
    """
    Gets the border color for a given state.

    {:doh, %{argctype: "GtkStateFlags", argname: "state", argtype: "StateFlags", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkRGBA*", argname: "color", argtype: "Gdk.RGBA", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_color(): None =>
    """
    Gets the foreground color for a given state.

    {:doh, %{argctype: "GtkStateFlags", argname: "state", argtype: "StateFlags", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkRGBA*", argname: "color", argtype: "Gdk.RGBA", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_direction(): None =>
    """
    Returns the widget direction used for rendering.

    {:argctype, "GtkTextDirection"}
{:argname, "rv"}
{:argtype, "TextDirection"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_font(): None =>
    """
    Returns the font description for a given state.

    {:argctype, "const PangoFontDescription*"}
{:argname, "rv"}
{:argtype, "Pango.FontDescription"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_junction_sides(): None =>
    """
    Returns the widget direction used for rendering.

    {:argctype, "GtkJunctionSides"}
{:argname, "rv"}
{:argtype, "JunctionSides"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_margin(): None =>
    """
    Gets the margin for a given state as a #GtkBorder.

    {:doh, %{argctype: "GtkStateFlags", argname: "state", argtype: "StateFlags", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkBorder*", argname: "margin", argtype: "Border", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_padding(): None =>
    """
    Gets the padding for a given state as a #GtkBorder.

    {:doh, %{argctype: "GtkStateFlags", argname: "state", argtype: "StateFlags", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkBorder*", argname: "padding", argtype: "Border", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_path(): None =>
    """
    Returns the widget path used for style matching.

    {:argctype, "const GtkWidgetPath*"}
{:argname, "rv"}
{:argtype, "WidgetPath"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_property(): None =>
    """
    Gets a property value as retrieved from the style settings that apply
to the currently rendered element.

    {:doh, %{argctype: "const gchar*", argname: "property", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkStateFlags", argname: "state", argtype: "StateFlags", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GValue*", argname: "value", argtype: "GObject.Value", paramtype: :param, txo: "full"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_screen(): None =>
    """
    Returns the #GdkScreen to which @engine currently rendering to.

    {:argctype, "GdkScreen*"}
{:argname, "rv"}
{:argtype, "Gdk.Screen"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_state(): None =>
    """
    returns the state used when rendering.

    {:argctype, "GtkStateFlags"}
{:argname, "rv"}
{:argtype, "StateFlags"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_style(): None =>
    """
    Retrieves several widget style properties from @engine according
to the currently rendered content’s style.

    {:doh, %{argctype: "", argname: "...", argtype: "", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_style_property(): None =>
    """
    Gets the value for a widget style property.

    {:doh, %{argctype: "const gchar*", argname: "property_name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GValue*", argname: "value", argtype: "GObject.Value", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_style_valist(): None =>
    """
    Retrieves several widget style properties from @engine according to the
currently rendered content’s style.

    {:doh, %{argctype: "va_list", argname: "args", argtype: "va_list", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_valist(): None =>
    """
    Retrieves several style property values that apply to the currently
rendered element.

    {:doh, %{argctype: "GtkStateFlags", argname: "state", argtype: "StateFlags", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "va_list", argname: "args", argtype: "va_list", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_has_class(): None =>
    """
    Returns %TRUE if the currently rendered contents have
defined the given class name.

    {:doh, %{argctype: "const gchar*", argname: "style_class", argtype: "utf8", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_has_region(): None =>
    """
    Returns %TRUE if the currently rendered contents have the
region defined. If @flags_return is not %NULL, it is set
to the flags affecting the region.

    {:doh, %{argctype: "const gchar*", argname: "style_region", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkRegionFlags*", argname: "flags", argtype: "RegionFlags", paramtype: :param, txo: "full"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_lookup_color(): None =>
    """
    Looks up and resolves a color name in the current style’s color map.

    {:doh, %{argctype: "const gchar*", argname: "color_name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkRGBA*", argname: "color", argtype: "Gdk.RGBA", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_state_is_running(): None =>
    """
    Returns %TRUE if there is a transition animation running for the
current region (see gtk_style_context_push_animatable_region()).

If @progress is not %NULL, the animation progress will be returned
there, 0.0 means the state is closest to being %FALSE, while 1.0 means
it’s closest to being %TRUE. This means transition animations will
run from 0 to 1 when @state is being set to %TRUE and from 1 to 0 when
it’s being set to %FALSE.

    {:doh, %{argctype: "GtkStateType", argname: "state", argtype: "StateType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble*", argname: "progress", argtype: "gdouble", paramtype: :param, txo: "full"}}
*/
    """


```````