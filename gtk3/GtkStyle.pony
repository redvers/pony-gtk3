/*
   needs: ["None", "Bool", "GObjectREF"]
provides: ["GtkStyle val"]
*/
use "../gobject"
class val GtkStyle is GtkWidget
"""
A #GtkStyle object encapsulates the information that provides the look and
feel for a widget.

> In GTK+ 3.0, GtkStyle has been deprecated and replaced by
> #GtkStyleContext.

Each #GtkWidget has an associated #GtkStyle object that is used when
rendering that widget. Also, a #GtkStyle holds information for the five
possible widget states though not every widget supports all five
states; see #GtkStateType.

Usually the #GtkStyle for a widget is the same as the default style that
is set by GTK+ and modified the theme engine.

Usually applications should not need to use or modify the #GtkStyle of
their widgets.
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
    widget = @gtk_style_new[GObjectREF]() //


/* apply_default_background unavailable due to typing issues
No provided documentation
{:doh, %{argctype: "cairo_t*", argname: "cr", argtype: "cairo.Context", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkWindow*", argname: "window", argtype: "Gdk.Window", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkStateType", argname: "state_type", argtype: "StateType", paramtype: :param, txo: "none"}}
*/

/* attach unavailable due to return typing issues
Attaches a style to a window; this process allocates the
colors and creates the GC’s for the style - it specializes
it to a particular visual. The process may involve the creation
of a new style if the style has already been attached to a
window with a different style and visual.

Since this function may return a new object, you have to use it
in the following way:
`style = gtk_style_attach (style, window)`
{:argctype, "GtkStyle*"}
{:argname, "rv"}
{:argtype, "Style"}
{:paramtype, :param}
{:txo, "notpresent"} */

/* copy unavailable due to return typing issues
Creates a copy of the passed in #GtkStyle object.
{:argctype, "GtkStyle*"}
{:argname, "rv"}
{:argtype, "Style"}
{:paramtype, :param}
{:txo, "full"} */

fun detach(): None =>
"""
Detaches a style from a window. If the style is not attached
to any windows anymore, it is unrealized. See gtk_style_attach().
"""
  @gtk_style_detach[None](widget)

/* get unavailable due to typing issues
Gets the values of a multiple style properties for @widget_type
from @style.
{:doh, %{argctype: "GType", argname: "widget_type", argtype: "GType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "first_property_name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "", argname: "...", argtype: "", paramtype: :param, txo: "none"}}
*/

/* get_style_property unavailable due to typing issues
Queries the value of a style property corresponding to a
widget class is in the given style.
{:doh, %{argctype: "GType", argname: "widget_type", argtype: "GType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "property_name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GValue*", argname: "value", argtype: "GObject.Value", paramtype: :param, txo: "none"}}
*/

/* get_valist unavailable due to typing issues
Non-vararg variant of gtk_style_get().
Used primarily by language bindings.
{:doh, %{argctype: "GType", argname: "widget_type", argtype: "GType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "first_property_name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "va_list", argname: "var_args", argtype: "va_list", paramtype: :param, txo: "none"}}
*/

fun has_context(): Bool =>
"""
Returns whether @style has an associated #GtkStyleContext.
"""
  @gtk_style_has_context[Bool](widget)

/* lookup_color unavailable due to typing issues
Looks up @color_name in the style’s logical color mappings,
filling in @color and returning %TRUE if found, otherwise
returning %FALSE. Do not cache the found mapping, because
it depends on the #GtkStyle and might change when a theme
switch occurs.
{:doh, %{argctype: "const gchar*", argname: "color_name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkColor*", argname: "color", argtype: "Gdk.Color", paramtype: :param, txo: "none"}}
*/

/* lookup_icon_set unavailable due to return typing issues
Looks up @stock_id in the icon factories associated with @style
and the default icon factory, returning an icon set if found,
otherwise %NULL.
{:argctype, "GtkIconSet*"}
{:argname, "rv"}
{:argtype, "IconSet"}
{:paramtype, :param}
{:txo, "none"} */

/* render_icon unavailable due to return typing issues
Renders the icon specified by @source at the given @size
according to the given parameters and returns the result in a
pixbuf.
{:argctype, "GdkPixbuf*"}
{:argname, "rv"}
{:argtype, "GdkPixbuf.Pixbuf"}
{:paramtype, :param}
{:txo, "full"} */

/* set_background unavailable due to typing issues
Sets the background of @window to the background color or pixmap
specified by @style for the given state.
{:doh, %{argctype: "GdkWindow*", argname: "window", argtype: "Gdk.Window", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkStateType", argname: "state_type", argtype: "StateType", paramtype: :param, txo: "none"}}
*/

