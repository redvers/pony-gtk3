/*
   needs: ["I32", "None", "GObjectREF"]
provides: ["GtkStyleContext val"]
*/
use "../gobject"
class val GtkStyleContext is GtkWidget
"""
#GtkStyleContext is an object that stores styling information affecting
a widget defined by #GtkWidgetPath.

In order to construct the final style information, #GtkStyleContext
queries information from all attached #GtkStyleProviders. Style providers
can be either attached explicitly to the context through
gtk_style_context_add_provider(), or to the screen through
gtk_style_context_add_provider_for_screen(). The resulting style is a
combination of all providers’ information in priority order.

For GTK+ widgets, any #GtkStyleContext returned by
gtk_widget_get_style_context() will already have a #GtkWidgetPath, a
#GdkScreen and RTL/LTR information set. The style context will also be
updated automatically if any of these settings change on the widget.

If you are using the theming layer standalone, you will need to set a
widget path and a screen yourself to the created style context through
gtk_style_context_set_path() and possibly gtk_style_context_set_screen(). See
the “Foreign drawing“ example in gtk3-demo.

# Style Classes # {#gtkstylecontext-classes}

Widgets can add style classes to their context, which can be used to associate
different styles by class. The documentation for individual widgets lists
which style classes it uses itself, and which style classes may be added by
applications to affect their appearance.

GTK+ defines macros for a number of style classes.

# Style Regions

Widgets can also add regions with flags to their context. This feature is
deprecated and will be removed in a future GTK+ update. Please use style
classes instead.

GTK+ defines macros for a number of style regions.

# Custom styling in UI libraries and applications

If you are developing a library with custom #GtkWidgets that
render differently than standard components, you may need to add a
#GtkStyleProvider yourself with the %GTK_STYLE_PROVIDER_PRIORITY_FALLBACK
priority, either a #GtkCssProvider or a custom object implementing the
#GtkStyleProvider interface. This way themes may still attempt
to style your UI elements in a different way if needed so.

If you are using custom styling on an applications, you probably want then
to make your style information prevail to the theme’s, so you must use
a #GtkStyleProvider with the %GTK_STYLE_PROVIDER_PRIORITY_APPLICATION
priority, keep in mind that the user settings in
`XDG_CONFIG_HOME/gtk-3.0/gtk.css` will
still take precedence over your changes, as it uses the
%GTK_STYLE_PROVIDER_PRIORITY_USER priority.
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
    widget = @gtk_style_context_new[GObjectREF]() //


/* add_class unavailable due to typing issues
Adds a style class to @context, so posterior calls to
gtk_style_context_get() or any of the gtk_render_*()
functions will make use of this new class for styling.

In the CSS file format, a #GtkEntry defining a “search”
class, would be matched by:

|[ <!-- language="CSS" -->
entry.search { ... }
]|

While any widget defining a “search” class would be
matched by:
|[ <!-- language="CSS" -->
.search { ... }
]|
{:doh, %{argctype: "const gchar*", argname: "class_name", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* add_provider unavailable due to typing issues
Adds a style provider to @context, to be used in style construction.
Note that a style provider added by this function only affects
the style of the widget to which @context belongs. If you want
to affect the style of all widgets, use
gtk_style_context_add_provider_for_screen().

Note: If both priorities are the same, a #GtkStyleProvider
added through this function takes precedence over another added
through gtk_style_context_add_provider_for_screen().
{:doh, %{argctype: "GtkStyleProvider*", argname: "provider", argtype: "StyleProvider", paramtype: :param, txo: "none"}}
*/

/* add_region unavailable due to typing issues
Adds a region to @context, so posterior calls to
gtk_style_context_get() or any of the gtk_render_*()
functions will make use of this new region for styling.

In the CSS file format, a #GtkTreeView defining a “row”
region, would be matched by:

|[ <!-- language="CSS" -->
treeview row { ... }
]|

Pseudo-classes are used for matching @flags, so the two
following rules:
|[ <!-- language="CSS" -->
treeview row:nth-child(even) { ... }
treeview row:nth-child(odd) { ... }
]|

would apply to even and odd rows, respectively.

Region names must only contain lowercase letters
and “-”, starting always with a lowercase letter.
{:doh, %{argctype: "const gchar*", argname: "region_name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkRegionFlags", argname: "flags", argtype: "RegionFlags", paramtype: :param, txo: "none"}}
*/

/* cancel_animations unavailable due to typing issues
Stops all running animations for @region_id and all animatable
regions underneath.

A %NULL @region_id will stop all ongoing animations in @context,
when dealing with a #GtkStyleContext obtained through
gtk_widget_get_style_context(), this is normally done for you
in all circumstances you would expect all widget to be stopped,
so this should be only used in complex widgets with different
animatable regions.
{:doh, %{argctype: "gpointer", argname: "region_id", argtype: "gpointer", paramtype: :param, txo: "none"}}
*/

/* get unavailable due to typing issues
Retrieves several style property values from @context for a
given state.

See gtk_style_context_get_property() for details.
{:doh, %{argctype: "GtkStateFlags", argname: "state", argtype: "StateFlags", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "", argname: "...", argtype: "", paramtype: :param, txo: "none"}}
*/

/* get_background_color unavailable due to typing issues
Gets the background color for a given state.

This function is far less useful than it seems, and it should not be used in
newly written code. CSS has no concept of "background color", as a background
can be an image, or a gradient, or any other pattern including solid colors.

The only reason why you would call gtk_style_context_get_background_color() is
to use the returned value to draw the background with it; the correct way to
achieve this result is to use gtk_render_background() instead, along with CSS
style classes to modify the color to be rendered.
{:doh, %{argctype: "GtkStateFlags", argname: "state", argtype: "StateFlags", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkRGBA*", argname: "color", argtype: "Gdk.RGBA", paramtype: :param, txo: "none"}}
*/

/* get_border unavailable due to typing issues
Gets the border for a given state as a #GtkBorder.

See gtk_style_context_get_property() and
#GTK_STYLE_PROPERTY_BORDER_WIDTH for details.
{:doh, %{argctype: "GtkStateFlags", argname: "state", argtype: "StateFlags", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkBorder*", argname: "border", argtype: "Border", paramtype: :param, txo: "none"}}
*/

/* get_border_color unavailable due to typing issues
Gets the border color for a given state.
{:doh, %{argctype: "GtkStateFlags", argname: "state", argtype: "StateFlags", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkRGBA*", argname: "color", argtype: "Gdk.RGBA", paramtype: :param, txo: "none"}}
*/

/* get_color unavailable due to typing issues
Gets the foreground color for a given state.

See gtk_style_context_get_property() and
#GTK_STYLE_PROPERTY_COLOR for details.
{:doh, %{argctype: "GtkStateFlags", argname: "state", argtype: "StateFlags", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkRGBA*", argname: "color", argtype: "Gdk.RGBA", paramtype: :param, txo: "none"}}
*/

/* get_direction unavailable due to return typing issues
Returns the widget direction used for rendering.
{:argctype, "GtkTextDirection"}
{:argname, "rv"}
{:argtype, "TextDirection"}
{:paramtype, :param}
{:txo, "none"} */

/* get_font unavailable due to return typing issues
Returns the font description for a given state. The returned
object is const and will remain valid until the
#GtkStyleContext::changed signal happens.
{:argctype, "const PangoFontDescription*"}
{:argname, "rv"}
{:argtype, "Pango.FontDescription"}
{:paramtype, :param}
{:txo, "none"} */

/* get_frame_clock unavailable due to return typing issues
Returns the #GdkFrameClock to which @context is attached.
{:argctype, "GdkFrameClock*"}
{:argname, "rv"}
{:argtype, "Gdk.FrameClock"}
{:paramtype, :param}
{:txo, "none"} */

/* get_junction_sides unavailable due to return typing issues
Returns the sides where rendered elements connect visually with others.
{:argctype, "GtkJunctionSides"}
{:argname, "rv"}
{:argtype, "JunctionSides"}
{:paramtype, :param}
{:txo, "none"} */

/* get_margin unavailable due to typing issues
Gets the margin for a given state as a #GtkBorder.
See gtk_style_property_get() and #GTK_STYLE_PROPERTY_MARGIN
for details.
{:doh, %{argctype: "GtkStateFlags", argname: "state", argtype: "StateFlags", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkBorder*", argname: "margin", argtype: "Border", paramtype: :param, txo: "none"}}
*/

/* get_padding unavailable due to typing issues
Gets the padding for a given state as a #GtkBorder.
See gtk_style_context_get() and #GTK_STYLE_PROPERTY_PADDING
for details.
{:doh, %{argctype: "GtkStateFlags", argname: "state", argtype: "StateFlags", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkBorder*", argname: "padding", argtype: "Border", paramtype: :param, txo: "none"}}
*/

/* get_parent unavailable due to return typing issues
Gets the parent context set via gtk_style_context_set_parent().
See that function for details.
{:argctype, "GtkStyleContext*"}
{:argname, "rv"}
{:argtype, "StyleContext"}
{:paramtype, :param}
{:txo, "none"} */

/* get_path unavailable due to return typing issues
Returns the widget path used for style matching.
{:argctype, "const GtkWidgetPath*"}
{:argname, "rv"}
{:argtype, "WidgetPath"}
{:paramtype, :param}
{:txo, "none"} */

/* get_property unavailable due to typing issues
Gets a style property from @context for the given state.

Note that not all CSS properties that are supported by GTK+ can be
retrieved in this way, since they may not be representable as #GValue.
GTK+ defines macros for a number of properties that can be used
with this function.

Note that passing a state other than the current state of @context
is not recommended unless the style context has been saved with
gtk_style_context_save().

When @value is no longer needed, g_value_unset() must be called
to free any allocated memory.
{:doh, %{argctype: "const gchar*", argname: "property", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkStateFlags", argname: "state", argtype: "StateFlags", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GValue*", argname: "value", argtype: "GObject.Value", paramtype: :param, txo: "full"}}
*/

fun get_scale(): I32 =>
"""
Returns the scale used for assets.
"""
  @gtk_style_context_get_scale[I32](widget)

/* get_screen unavailable due to return typing issues
Returns the #GdkScreen to which @context is attached.
{:argctype, "GdkScreen*"}
{:argname, "rv"}
{:argtype, "Gdk.Screen"}
{:paramtype, :param}
{:txo, "none"} */

/* get_section unavailable due to return typing issues
Queries the location in the CSS where @property was defined for the
current @context. Note that the state to be queried is taken from
gtk_style_context_get_state().

If the location is not available, %NULL will be returned. The
location might not be available for various reasons, such as the
property being overridden, @property not naming a supported CSS
property or tracking of definitions being disabled for performance
reasons.

Shorthand CSS properties cannot be queried for a location and will
always return %NULL.
{:argctype, "GtkCssSection*"}
{:argname, "rv"}
{:argtype, "CssSection"}
{:paramtype, :param}
{:txo, "none"} */

/* get_state unavailable due to return typing issues
Returns the state used for style matching.

This method should only be used to retrieve the #GtkStateFlags
to pass to #GtkStyleContext methods, like gtk_style_context_get_padding().
If you need to retrieve the current state of a #GtkWidget, use
gtk_widget_get_state_flags().
{:argctype, "GtkStateFlags"}
{:argname, "rv"}
{:argtype, "StateFlags"}
{:paramtype, :param}
{:txo, "none"} */

/* get_style unavailable due to typing issues
Retrieves several widget style properties from @context according to the
current style.
{:doh, %{argctype: "", argname: "...", argtype: "", paramtype: :param, txo: "none"}}
*/

/* get_style_property unavailable due to typing issues
Gets the value for a widget style property.

When @value is no longer needed, g_value_unset() must be called
to free any allocated memory.
{:doh, %{argctype: "const gchar*", argname: "property_name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GValue*", argname: "value", argtype: "GObject.Value", paramtype: :param, txo: "none"}}
*/

/* get_style_valist unavailable due to typing issues
Retrieves several widget style properties from @context according to the
current style.
{:doh, %{argctype: "va_list", argname: "args", argtype: "va_list", paramtype: :param, txo: "none"}}
*/

/* get_valist unavailable due to typing issues
Retrieves several style property values from @context for a given state.

See gtk_style_context_get_property() for details.
{:doh, %{argctype: "GtkStateFlags", argname: "state", argtype: "StateFlags", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "va_list", argname: "args", argtype: "va_list", paramtype: :param, txo: "none"}}
*/

/* has_class unavailable due to typing issues
Returns %TRUE if @context currently has defined the
given class name.
{:doh, %{argctype: "const gchar*", argname: "class_name", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* has_region unavailable due to typing issues
Returns %TRUE if @context has the region defined.
If @flags_return is not %NULL, it is set to the flags
affecting the region.
{:doh, %{argctype: "const gchar*", argname: "region_name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkRegionFlags*", argname: "flags_return", argtype: "RegionFlags", paramtype: :param, txo: "full"}}
*/

fun invalidate(): None =>
"""
Invalidates @context style information, so it will be reconstructed
again. It is useful if you modify the @context and need the new
information immediately.
"""
  @gtk_style_context_invalidate[None](widget)

/* list_classes unavailable due to return typing issues
Returns the list of classes currently defined in @context.
{:argctype, "GList*"}
{:argname, "rv"}
{:argtype, "GLib.List"}
{:paramtype, :param}
{:txo, "container"} */

/* list_regions unavailable due to return typing issues
Returns the list of regions currently defined in @context.
{:argctype, "GList*"}
{:argname, "rv"}
{:argtype, "GLib.List"}
{:paramtype, :param}
{:txo, "container"} */

/* lookup_color unavailable due to typing issues
Looks up and resolves a color name in the @context color map.
{:doh, %{argctype: "const gchar*", argname: "color_name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkRGBA*", argname: "color", argtype: "Gdk.RGBA", paramtype: :param, txo: "none"}}
*/

/* lookup_icon_set unavailable due to return typing issues
Looks up @stock_id in the icon factories associated to @context and
the default icon factory, returning an icon set if found, otherwise
%NULL.
{:argctype, "GtkIconSet*"}
{:argname, "rv"}
{:argtype, "IconSet"}
{:paramtype, :param}
{:txo, "none"} */

/* notify_state_change unavailable due to typing issues
Notifies a state change on @context, so if the current style makes use
of transition animations, one will be started so all rendered elements
under @region_id are animated for state @state being set to value
@state_value.

The @window parameter is used in order to invalidate the rendered area
as the animation runs, so make sure it is the same window that is being
rendered on by the gtk_render_*() functions.

If @region_id is %NULL, all rendered elements using @context will be
affected by this state transition.

As a practical example, a #GtkButton notifying a state transition on
the prelight state:
|[ <!-- language="C" -->
gtk_style_context_notify_state_change (context,
                                       gtk_widget_get_window (widget),
                                       NULL,
                                       GTK_STATE_PRELIGHT,
                                       button->in_button);
]|

Can be handled in the CSS file like this:
|[ <!-- language="CSS" -->
button {
    background-color: #f00
}

button:hover {
    background-color: #fff;
    transition: 200ms linear
}
]|

This combination will animate the button background from red to white
if a pointer enters the button, and back to red if the pointer leaves
the button.

Note that @state is used when finding the transition parameters, which
is why the style places the transition under the :hover pseudo-class.
{:doh, %{argctype: "GdkWindow*", argname: "window", argtype: "Gdk.Window", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "region_id", argtype: "gpointer", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkStateType", argname: "state", argtype: "StateType", paramtype: :param, txo: "none"}}
*/

fun pop_animatable_region(): None =>
"""
Pops an animatable region from @context.
See gtk_style_context_push_animatable_region().
"""
  @gtk_style_context_pop_animatable_region[None](widget)

/* push_animatable_region unavailable due to typing issues
Pushes an animatable region, so all further gtk_render_*() calls between
this call and the following gtk_style_context_pop_animatable_region()
will potentially show transition animations for this region if
gtk_style_context_notify_state_change() is called for a given state,
and the current theme/style defines transition animations for state
changes.

The @region_id used must be unique in @context so the themes
can uniquely identify rendered elements subject to a state transition.
{:doh, %{argctype: "gpointer", argname: "region_id", argtype: "gpointer", paramtype: :param, txo: "none"}}
*/

/* remove_class unavailable due to typing issues
Removes @class_name from @context.
{:doh, %{argctype: "const gchar*", argname: "class_name", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* remove_provider unavailable due to typing issues
Removes @provider from the style providers list in @context.
{:doh, %{argctype: "GtkStyleProvider*", argname: "provider", argtype: "StyleProvider", paramtype: :param, txo: "none"}}
*/

/* remove_region unavailable due to typing issues
Removes a region from @context.
{:doh, %{argctype: "const gchar*", argname: "region_name", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

fun restore(): None =>
"""
Restores @context state to a previous stage.
See gtk_style_context_save().
"""
  @gtk_style_context_restore[None](widget)

fun save(): None =>
"""
Saves the @context state, so temporary modifications done through
gtk_style_context_add_class(), gtk_style_context_remove_class(),
gtk_style_context_set_state(), etc. can quickly be reverted
in one go through gtk_style_context_restore().

The matching call to gtk_style_context_restore() must be done
before GTK returns to the main loop.
"""
  @gtk_style_context_save[None](widget)

/* scroll_animations unavailable due to typing issues
This function is analogous to gdk_window_scroll(), and
should be called together with it so the invalidation
areas for any ongoing animation are scrolled together
with it.
{:doh, %{argctype: "GdkWindow*", argname: "window", argtype: "Gdk.Window", paramtype: :param, txo: "none"}}
*/

/* set_background unavailable due to typing issues
Sets the background of @window to the background pattern or
color specified in @context for its current state.
{:doh, %{argctype: "GdkWindow*", argname: "window", argtype: "Gdk.Window", paramtype: :param, txo: "none"}}
*/

/* set_direction unavailable due to typing issues
Sets the reading direction for rendering purposes.

If you are using a #GtkStyleContext returned from
gtk_widget_get_style_context(), you do not need to
call this yourself.
{:doh, %{argctype: "GtkTextDirection", argname: "direction", argtype: "TextDirection", paramtype: :param, txo: "none"}}
*/

/* set_frame_clock unavailable due to typing issues
Attaches @context to the given frame clock.

The frame clock is used for the timing of animations.

If you are using a #GtkStyleContext returned from
gtk_widget_get_style_context(), you do not need to
call this yourself.
{:doh, %{argctype: "GdkFrameClock*", argname: "frame_clock", argtype: "Gdk.FrameClock", paramtype: :param, txo: "none"}}
*/

/* set_junction_sides unavailable due to typing issues
Sets the sides where rendered elements (mostly through
gtk_render_frame()) will visually connect with other visual elements.

This is merely a hint that may or may not be honored
by themes.

Container widgets are expected to set junction hints as appropriate
for their children, so it should not normally be necessary to call
this function manually.
{:doh, %{argctype: "GtkJunctionSides", argname: "sides", argtype: "JunctionSides", paramtype: :param, txo: "none"}}
*/

/* set_parent unavailable due to typing issues
Sets the parent style context for @context. The parent style
context is used to implement
[inheritance](http://www.w3.org/TR/css3-cascade/#inheritance)
of properties.

If you are using a #GtkStyleContext returned from
gtk_widget_get_style_context(), the parent will be set for you.
{:doh, %{argctype: "GtkStyleContext*", argname: "parent", argtype: "StyleContext", paramtype: :param, txo: "none"}}
*/

/* set_path unavailable due to typing issues
Sets the #GtkWidgetPath used for style matching. As a
consequence, the style will be regenerated to match
the new given path.

If you are using a #GtkStyleContext returned from
gtk_widget_get_style_context(), you do not need to call
this yourself.
{:doh, %{argctype: "GtkWidgetPath*", argname: "path", argtype: "WidgetPath", paramtype: :param, txo: "none"}}
*/

fun set_scale(scale_pony: I32): None =>
"""
Sets the scale to use when getting image assets for the style.
"""
  @gtk_style_context_set_scale[None](widget, scale_pony)

/* set_screen unavailable due to typing issues
Attaches @context to the given screen.

The screen is used to add style information from “global” style
providers, such as the screen’s #GtkSettings instance.

If you are using a #GtkStyleContext returned from
gtk_widget_get_style_context(), you do not need to
call this yourself.
{:doh, %{argctype: "GdkScreen*", argname: "screen", argtype: "Gdk.Screen", paramtype: :param, txo: "none"}}
*/

/* set_state unavailable due to typing issues
Sets the state to be used for style matching.
{:doh, %{argctype: "GtkStateFlags", argname: "flags", argtype: "StateFlags", paramtype: :param, txo: "none"}}
*/

/* state_is_running unavailable due to typing issues
Returns %TRUE if there is a transition animation running for the
current region (see gtk_style_context_push_animatable_region()).

If @progress is not %NULL, the animation progress will be returned
there, 0.0 means the state is closest to being unset, while 1.0 means
it’s closest to being set. This means transition animation will
run from 0 to 1 when @state is being set and from 1 to 0 when
it’s being unset.
{:doh, %{argctype: "GtkStateType", argname: "state", argtype: "StateType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble*", argname: "progress", argtype: "gdouble", paramtype: :param, txo: "full"}}
*/

/* to_string unavailable due to return typing issues
Converts the style context into a string representation.

The string representation always includes information about
the name, state, id, visibility and style classes of the CSS
node that is backing @context. Depending on the flags, more
information may be included.

This function is intended for testing and debugging of the
CSS implementation in GTK+. There are no guarantees about
the format of the returned string, it may change.
{:argctype, "char*"}
{:argname, "rv"}
{:argtype, "utf8"}
{:paramtype, :param}
{:txo, "full"} */

