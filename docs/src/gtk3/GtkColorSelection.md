```````pony-full-source
/*
   needs: ["Bool", "None", "GObjectREF"]
provides: ["GtkColorSelection val"]
*/
use "../gobject"
class val GtkColorSelection is GtkWidget
"""
No documentation provided
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
    widget = @gtk_color_selection_new[GObjectREF]() //


  fun pony_NOT_IMPLEMENTED_YET_get_current_alpha(): None =>
    """
    Returns the current alpha value.

    {:argctype, "guint16"}
{:argname, "rv"}
{:argtype, "guint16"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_current_color(): None =>
    """
    Sets @color to be the current color in the GtkColorSelection widget.

    {:doh, %{argctype: "GdkColor*", argname: "color", argtype: "Gdk.Color", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_current_rgba(): None =>
    """
    Sets @rgba to be the current color in the GtkColorSelection widget.

    {:doh, %{argctype: "GdkRGBA*", argname: "rgba", argtype: "Gdk.RGBA", paramtype: :param, txo: "none"}}
*/
    """

fun get_has_opacity_control(): Bool =>
"""
Determines whether the colorsel has an opacity control.
"""
  @gtk_color_selection_get_has_opacity_control[Bool](widget)

fun get_has_palette(): Bool =>
"""
Determines whether the color selector has a color palette.
"""
  @gtk_color_selection_get_has_palette[Bool](widget)

  fun pony_NOT_IMPLEMENTED_YET_get_previous_alpha(): None =>
    """
    Returns the previous alpha value.

    {:argctype, "guint16"}
{:argname, "rv"}
{:argtype, "guint16"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_previous_color(): None =>
    """
    Fills @color in with the original color value.

    {:doh, %{argctype: "GdkColor*", argname: "color", argtype: "Gdk.Color", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_previous_rgba(): None =>
    """
    Fills @rgba in with the original color value.

    {:doh, %{argctype: "GdkRGBA*", argname: "rgba", argtype: "Gdk.RGBA", paramtype: :param, txo: "none"}}
*/
    """

fun is_adjusting(): Bool =>
"""
Gets the current state of the @colorsel.
"""
  @gtk_color_selection_is_adjusting[Bool](widget)

  fun pony_NOT_IMPLEMENTED_YET_set_current_alpha(): None =>
    """
    Sets the current opacity to be @alpha.

The first time this is called, it will also set
the original opacity to be @alpha too.

    {:doh, %{argctype: "guint16", argname: "alpha", argtype: "guint16", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_set_current_color(): None =>
    """
    Sets the current color to be @color.

The first time this is called, it will also set
the original color to be @color too.

    {:doh, %{argctype: "const GdkColor*", argname: "color", argtype: "Gdk.Color", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_set_current_rgba(): None =>
    """
    Sets the current color to be @rgba.

The first time this is called, it will also set
the original color to be @rgba too.

    {:doh, %{argctype: "const GdkRGBA*", argname: "rgba", argtype: "Gdk.RGBA", paramtype: :param, txo: "none"}}
*/
    """

fun set_has_opacity_control(has_opacity_pony: Bool): None =>
"""
Sets the @colorsel to use or not use opacity.
"""
  @gtk_color_selection_set_has_opacity_control[None](widget, has_opacity_pony)

fun set_has_palette(has_palette_pony: Bool): None =>
"""
Shows and hides the palette based upon the value of @has_palette.
"""
  @gtk_color_selection_set_has_palette[None](widget, has_palette_pony)

  fun pony_NOT_IMPLEMENTED_YET_set_previous_alpha(): None =>
    """
    Sets the “previous” alpha to be @alpha.

This function should be called with some hesitations,
as it might seem confusing to have that alpha change.

    {:doh, %{argctype: "guint16", argname: "alpha", argtype: "guint16", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_set_previous_color(): None =>
    """
    Sets the “previous” color to be @color.

This function should be called with some hesitations,
as it might seem confusing to have that color change.
Calling gtk_color_selection_set_current_color() will also
set this color the first time it is called.

    {:doh, %{argctype: "const GdkColor*", argname: "color", argtype: "Gdk.Color", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_set_previous_rgba(): None =>
    """
    Sets the “previous” color to be @rgba.

This function should be called with some hesitations,
as it might seem confusing to have that color change.
Calling gtk_color_selection_set_current_rgba() will also
set this color the first time it is called.

    {:doh, %{argctype: "const GdkRGBA*", argname: "rgba", argtype: "Gdk.RGBA", paramtype: :param, txo: "none"}}
*/
    """


```````