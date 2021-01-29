```````pony-full-source
use "lib:gtk-3"
primitive Gtk
  fun pony_NOT_IMPLEMENTED_YET_accel_groups_activate(): None =>
    """
    Finds the first accelerator in any #GtkAccelGroup attached
to @object that matches @accel_key and @accel_mods, and
activates that accelerator.

    {:doh, %{argctype: "GObject*", argname: "gobject", argtype: "GObject.Object", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkModifierType", argname: "accel_mods", argtype: "Gdk.ModifierType", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_accel_groups_from_object(): None =>
    """
    Gets a list of all accel groups which are attached to @object.

    {:argctype, "GSList*"}
{:argname, "rv"}
{:argtype, "GLib.SList"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_accelerator_get_default_mod_mask(): None =>
    """
    Gets the modifier mask.

The modifier mask determines which modifiers are considered significant
for keyboard accelerators. See gtk_accelerator_set_default_mod_mask().

    {:argctype, "GdkModifierType"}
{:argname, "rv"}
{:argtype, "Gdk.ModifierType"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_accelerator_get_label(): None =>
    """
    Converts an accelerator keyval and modifier mask into a string
which can be used to represent the accelerator to the user.

    {:argctype, "gchar*"}
{:argname, "rv"}
{:argtype, "utf8"}
{:paramtype, :param}
{:txo, "full"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_accelerator_get_label_with_keycode(): None =>
    """
    Converts an accelerator keyval and modifier mask
into a (possibly translated) string that can be displayed to
a user, similarly to gtk_accelerator_get_label(), but handling
keycodes.

This is only useful for system-level components, applications
should use gtk_accelerator_parse() instead.

    {:argctype, "gchar*"}
{:argname, "rv"}
{:argtype, "utf8"}
{:paramtype, :param}
{:txo, "full"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_accelerator_name(): None =>
    """
    Converts an accelerator keyval and modifier mask into a string
parseable by gtk_accelerator_parse(). For example, if you pass in
#GDK_KEY_q and #GDK_CONTROL_MASK, this function returns “<Control>q”.

If you need to display accelerators in the user interface,
see gtk_accelerator_get_label().

    {:argctype, "gchar*"}
{:argname, "rv"}
{:argtype, "utf8"}
{:paramtype, :param}
{:txo, "full"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_accelerator_name_with_keycode(): None =>
    """
    Converts an accelerator keyval and modifier mask
into a string parseable by gtk_accelerator_parse_with_keycode(),
similarly to gtk_accelerator_name() but handling keycodes.
This is only useful for system-level components, applications
should use gtk_accelerator_parse() instead.

    {:argctype, "gchar*"}
{:argname, "rv"}
{:argtype, "utf8"}
{:paramtype, :param}
{:txo, "full"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_accelerator_parse(): None =>
    """
    Parses a string representing an accelerator. The format looks like
“<Control>a” or “<Shift><Alt>F1” or “<Release>z” (the last one is
for key release).

The parser is fairly liberal and allows lower or upper case, and also
abbreviations such as “<Ctl>” and “<Ctrl>”. Key names are parsed using
gdk_keyval_from_name(). For character keys the name is not the symbol,
but the lowercase name, e.g. one would use “<Ctrl>minus” instead of
“<Ctrl>-”.

If the parse fails, @accelerator_key and @accelerator_mods will
be set to 0 (zero).

    {:doh, %{argctype: "const gchar*", argname: "accelerator", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "guint*", argname: "accelerator_key", argtype: "guint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "GdkModifierType*", argname: "accelerator_mods", argtype: "Gdk.ModifierType", paramtype: :param, txo: "full"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_accelerator_parse_with_keycode(): None =>
    """
    Parses a string representing an accelerator, similarly to
gtk_accelerator_parse() but handles keycodes as well. This is only
useful for system-level components, applications should use
gtk_accelerator_parse() instead.

If @accelerator_codes is given and the result stored in it is non-%NULL,
the result must be freed with g_free().

If a keycode is present in the accelerator and no @accelerator_codes
is given, the parse will fail.

If the parse fails, @accelerator_key, @accelerator_mods and
@accelerator_codes will be set to 0 (zero).

    {:doh, %{argctype: "const gchar*", argname: "accelerator", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "guint*", argname: "accelerator_key", argtype: "guint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "", argname: "accelerator_codes", argtype: "", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "GdkModifierType*", argname: "accelerator_mods", argtype: "Gdk.ModifierType", paramtype: :param, txo: "full"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_accelerator_set_default_mod_mask(): None =>
    """
    Sets the modifiers that will be considered significant for keyboard
accelerators. The default mod mask depends on the GDK backend in use,
but will typically include #GDK_CONTROL_MASK | #GDK_SHIFT_MASK |
#GDK_MOD1_MASK | #GDK_SUPER_MASK | #GDK_HYPER_MASK | #GDK_META_MASK.
In other words, Control, Shift, Alt, Super, Hyper and Meta. Other
modifiers will by default be ignored by #GtkAccelGroup.

You must include at least the three modifiers Control, Shift
and Alt in any value you pass to this function.

The default mod mask should be changed on application startup,
before using any accelerator groups.

    {:doh, %{argctype: "GdkModifierType", argname: "default_mod_mask", argtype: "Gdk.ModifierType", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_accelerator_valid(): None =>
    """
    Determines whether a given keyval and modifier mask constitute
a valid keyboard accelerator. For example, the #GDK_KEY_a keyval
plus #GDK_CONTROL_MASK is valid - this is a “Ctrl+a” accelerator.
But, you can't, for instance, use the #GDK_KEY_Control_L keyval
as an accelerator.

    {:doh, %{argctype: "GdkModifierType", argname: "modifiers", argtype: "Gdk.ModifierType", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_alternative_dialog_button_order(): None =>
    """
    Returns %TRUE if dialogs are expected to use an alternative
button order on the screen @screen. See
gtk_dialog_set_alternative_button_order() for more details
about alternative button order.

If you need to use this function, you should probably connect
to the ::notify:gtk-alternative-button-order signal on the
#GtkSettings object associated to @screen, in order to be
notified if the button order setting changes.

    {:doh, %{argctype: "GdkScreen*", argname: "screen", argtype: "Gdk.Screen", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_binding_entry_add_signal_from_string(): None =>
    """
    Parses a signal description from @signal_desc and incorporates
it into @binding_set.

Signal descriptions may either bind a key combination to
one or more signals:
|[
  bind "key" {
    "signalname" (param, ...)
    ...
  }
]|

Or they may also unbind a key combination:
|[
  unbind "key"
]|

Key combinations must be in a format that can be parsed by
gtk_accelerator_parse().

    {:argctype, "GTokenType"}
{:argname, "rv"}
{:argtype, "GLib.TokenType"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_binding_entry_add_signall(): None =>
    """
    Override or install a new key binding for @keyval with @modifiers on
@binding_set.

    {:doh, %{argctype: "GtkBindingSet*", argname: "binding_set", argtype: "BindingSet", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkModifierType", argname: "modifiers", argtype: "Gdk.ModifierType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "signal_name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GSList*", argname: "binding_args", argtype: "GLib.SList", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_binding_entry_remove(): None =>
    """
    Remove a binding previously installed via
gtk_binding_entry_add_signal() on @binding_set.

    {:doh, %{argctype: "GtkBindingSet*", argname: "binding_set", argtype: "BindingSet", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkModifierType", argname: "modifiers", argtype: "Gdk.ModifierType", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_binding_entry_skip(): None =>
    """
    Install a binding on @binding_set which causes key lookups
to be aborted, to prevent bindings from lower priority sets
to be activated.

    {:doh, %{argctype: "GtkBindingSet*", argname: "binding_set", argtype: "BindingSet", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkModifierType", argname: "modifiers", argtype: "Gdk.ModifierType", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_binding_set_by_class(): None =>
    """
    This function returns the binding set named after the type name of
the passed in class structure. New binding sets are created on
demand by this function.

    {:argctype, "GtkBindingSet*"}
{:argname, "rv"}
{:argtype, "BindingSet"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_binding_set_find(): None =>
    """
    Find a binding set by its globally unique name.

The @set_name can either be a name used for gtk_binding_set_new()
or the type name of a class used in gtk_binding_set_by_class().

    {:argctype, "GtkBindingSet*"}
{:argname, "rv"}
{:argtype, "BindingSet"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_binding_set_new(): None =>
    """
    GTK+ maintains a global list of binding sets. Each binding set has
a unique name which needs to be specified upon creation.

    {:argctype, "GtkBindingSet*"}
{:argname, "rv"}
{:argtype, "BindingSet"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_bindings_activate(): None =>
    """
    Find a key binding matching @keyval and @modifiers and activate the
binding on @object.

    {:doh, %{argctype: "GObject*", argname: "gobject", argtype: "GObject.Object", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkModifierType", argname: "modifiers", argtype: "Gdk.ModifierType", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_bindings_activate_event(): None =>
    """
    Looks up key bindings for @object to find one matching
@event, and if one was found, activate it.

    {:doh, %{argctype: "GObject*", argname: "gobject", argtype: "GObject.Object", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkEventKey*", argname: "event", argtype: "Gdk.EventKey", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_builder_error_quark(): None =>
    """
    No docs present

    {:argctype, "GQuark"}
{:argname, "rv"}
{:argtype, "GLib.Quark"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_cairo_should_draw_window(): None =>
    """
    This function is supposed to be called in #GtkWidget::draw
implementations for widgets that support multiple windows.
@cr must be untransformed from invoking of the draw function.
This function will return %TRUE if the contents of the given
@window are supposed to be drawn and %FALSE otherwise. Note
that when the drawing was not initiated by the windowing
system this function will return %TRUE for all windows, so
you need to draw the bottommost window first. Also, do not
use “else if” statements to check which window should be drawn.

    {:doh, %{argctype: "cairo_t*", argname: "cr", argtype: "cairo.Context", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkWindow*", argname: "window", argtype: "Gdk.Window", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_cairo_transform_to_window(): None =>
    """
    Transforms the given cairo context @cr that from @widget-relative
coordinates to @window-relative coordinates.
If the @widget’s window is not an ancestor of @window, no
modification will be applied.

This is the inverse to the transformation GTK applies when
preparing an expose event to be emitted with the #GtkWidget::draw
signal. It is intended to help porting multiwindow widgets from
GTK+ 2 to the rendering architecture of GTK+ 3.

    {:doh, %{argctype: "cairo_t*", argname: "cr", argtype: "cairo.Context", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkWindow*", argname: "window", argtype: "Gdk.Window", paramtype: :param, txo: "none"}}
*/
    """

fun check_version(required_major_pony: U32, required_minor_pony: U32, required_micro_pony: U32): String =>
"""
Checks that the GTK+ library in use is compatible with the
given version. Generally you would pass in the constants
#GTK_MAJOR_VERSION, #GTK_MINOR_VERSION, #GTK_MICRO_VERSION
as the three arguments to this function; that produces
a check that the library in use is compatible with
the version of GTK+ the application or module was compiled
against.

Compatibility is defined by two things: first the version
of the running library is newer than the version
@required_major.required_minor.@required_micro. Second
the running library must be binary compatible with the
version @required_major.required_minor.@required_micro
(same major version.)

This function is primarily for GTK+ modules; the module
can call this function to check that it wasn’t loaded
into an incompatible version of GTK+. However, such a
check isn’t completely reliable, since the module may be
linked against an old version of GTK+ and calling the
old version of gtk_check_version(), but still get loaded
into an application using a newer version of GTK+.
"""
  var cstring_pony: Pointer[U8 val] ref = @gtk_check_version[Pointer[U8 val] ref](required_major_pony, required_minor_pony, required_micro_pony)
  var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

  fun pony_NOT_IMPLEMENTED_YET_css_provider_error_quark(): None =>
    """
    No docs present

    {:argctype, "GQuark"}
{:argname, "rv"}
{:argtype, "GLib.Quark"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_device_grab_add(): None =>
    """
    Adds a GTK+ grab on @device, so all the events on @device and its
associated pointer or keyboard (if any) are delivered to @widget.
If the @block_others parameter is %TRUE, any other devices will be
unable to interact with @widget during the grab.

    {:doh, %{argctype: "GdkDevice*", argname: "device", argtype: "Gdk.Device", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_device_grab_remove(): None =>
    """
    Removes a device grab from the given widget.

You have to pair calls to gtk_device_grab_add() and
gtk_device_grab_remove().

    {:doh, %{argctype: "GdkDevice*", argname: "device", argtype: "Gdk.Device", paramtype: :param, txo: "none"}}
*/
    """

fun disable_setlocale(): None =>
"""
Prevents gtk_init(), gtk_init_check(), gtk_init_with_args() and
gtk_parse_args() from automatically
calling `setlocale (LC_ALL, "")`. You would
want to use this function if you wanted to set the locale for
your program to something other than the user’s locale, or if
you wanted to set different values for different locale categories.

Most programs should not need to call this function.
"""
  @gtk_disable_setlocale[None]()

  fun pony_NOT_IMPLEMENTED_YET_distribute_natural_allocation(): None =>
    """
    Distributes @extra_space to child @sizes by bringing smaller
children up to natural size first.

The remaining space will be added to the @minimum_size member of the
GtkRequestedSize struct. If all sizes reach their natural size then
the remaining space is returned.

    {:doh, %{argctype: "GtkRequestedSize*", argname: "sizes", argtype: "RequestedSize", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_drag_cancel(): None =>
    """
    Cancels an ongoing drag operation on the source side.

If you want to be able to cancel a drag operation in this way,
you need to keep a pointer to the drag context, either from an
explicit call to gtk_drag_begin_with_coordinates(), or by
connecting to #GtkWidget::drag-begin.

If @context does not refer to an ongoing drag operation, this
function does nothing.

If a drag is cancelled in this way, the @result argument of
#GtkWidget::drag-failed is set to @GTK_DRAG_RESULT_ERROR.

    {:doh, %{argctype: "GdkDragContext*", argname: "context", argtype: "Gdk.DragContext", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_drag_finish(): None =>
    """
    Informs the drag source that the drop is finished, and
that the data of the drag will no longer be required.

    {:doh, %{argctype: "GdkDragContext*", argname: "context", argtype: "Gdk.DragContext", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "guint32", argname: "time_", argtype: "guint32", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_drag_get_source_widget(): None =>
    """
    Determines the source widget for a drag.

    {:doh, %{argctype: "GdkDragContext*", argname: "context", argtype: "Gdk.DragContext", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_drag_set_icon_default(): None =>
    """
    Sets the icon for a particular drag to the default
icon.

    {:doh, %{argctype: "GdkDragContext*", argname: "context", argtype: "Gdk.DragContext", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_drag_set_icon_gicon(): None =>
    """
    Sets the icon for a given drag from the given @icon.
See the documentation for gtk_drag_set_icon_name()
for more details about using icons in drag and drop.

    {:doh, %{argctype: "GdkDragContext*", argname: "context", argtype: "Gdk.DragContext", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GIcon*", argname: "icon", argtype: "Gio.Icon", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_drag_set_icon_name(): None =>
    """
    Sets the icon for a given drag from a named themed icon. See
the docs for #GtkIconTheme for more details. Note that the
size of the icon depends on the icon theme (the icon is
loaded at the symbolic size #GTK_ICON_SIZE_DND), thus
@hot_x and @hot_y have to be used with care.

    {:doh, %{argctype: "GdkDragContext*", argname: "context", argtype: "Gdk.DragContext", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "icon_name", argtype: "utf8", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_drag_set_icon_pixbuf(): None =>
    """
    Sets @pixbuf as the icon for a given drag.

    {:doh, %{argctype: "GdkDragContext*", argname: "context", argtype: "Gdk.DragContext", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkPixbuf*", argname: "pixbuf", argtype: "GdkPixbuf.Pixbuf", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_drag_set_icon_stock(): None =>
    """
    Sets the icon for a given drag from a stock ID.

    {:doh, %{argctype: "GdkDragContext*", argname: "context", argtype: "Gdk.DragContext", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "stock_id", argtype: "utf8", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_drag_set_icon_surface(): None =>
    """
    Sets @surface as the icon for a given drag. GTK+ retains
references for the arguments, and will release them when
they are no longer needed.

To position the surface relative to the mouse, use
cairo_surface_set_device_offset() on @surface. The mouse
cursor will be positioned at the (0,0) coordinate of the
surface.

    {:doh, %{argctype: "GdkDragContext*", argname: "context", argtype: "Gdk.DragContext", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "cairo_surface_t*", argname: "surface", argtype: "cairo.Surface", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_drag_set_icon_widget(): None =>
    """
    Changes the icon for drag operation to a given widget.
GTK+ will not destroy the widget, so if you don’t want
it to persist, you should connect to the “drag-end”
signal and destroy it yourself.

    {:doh, %{argctype: "GdkDragContext*", argname: "context", argtype: "Gdk.DragContext", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_draw_insertion_cursor(): None =>
    """
    Draws a text caret on @cr at @location. This is not a style function
but merely a convenience function for drawing the standard cursor shape.

    {:doh, %{argctype: "cairo_t*", argname: "cr", argtype: "cairo.Context", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const GdkRectangle*", argname: "location", argtype: "Gdk.Rectangle", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkTextDirection", argname: "direction", argtype: "TextDirection", paramtype: :param, txo: "none"}}
*/
    """

fun events_pending(): Bool =>
"""
Checks if any events are pending.

This can be used to update the UI and invoke timeouts etc.
while doing some time intensive computation.

## Updating the UI during a long computation

|[<!-- language="C" -->
 // computation going on...

 while (gtk_events_pending ())
   gtk_main_iteration ();

 // ...computation continued
]|
"""
  @gtk_events_pending[Bool]()

fun gfalse(): Bool =>
"""
Analogical to gtk_true(), this function does nothing
but always returns %FALSE.
"""
  @gtk_false[Bool]()

  fun pony_NOT_IMPLEMENTED_YET_file_chooser_error_quark(): None =>
    """
    Registers an error quark for #GtkFileChooser if necessary.

    {:argctype, "GQuark"}
{:argname, "rv"}
{:argtype, "GLib.Quark"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

fun get_binary_age(): U32 =>
"""
Returns the binary age as passed to `libtool`
when building the GTK+ library the process is running against.
If `libtool` means nothing to you, don't
worry about it.
"""
  @gtk_get_binary_age[U32]()

  fun pony_NOT_IMPLEMENTED_YET_get_current_event(): None =>
    """
    Obtains a copy of the event currently being processed by GTK+.

For example, if you are handling a #GtkButton::clicked signal,
the current event will be the #GdkEventButton that triggered
the ::clicked signal.

    {:argctype, "GdkEvent*"}
{:argname, "rv"}
{:argtype, "Gdk.Event"}
{:paramtype, :param}
{:txo, "full"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_current_event_device(): None =>
    """
    If there is a current event and it has a device, return that
device, otherwise return %NULL.

    {:argctype, "GdkDevice*"}
{:argname, "rv"}
{:argtype, "Gdk.Device"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_current_event_state(): None =>
    """
    If there is a current event and it has a state field, place
that state field in @state and return %TRUE, otherwise return
%FALSE.

    {:doh, %{argctype: "GdkModifierType*", argname: "state", argtype: "Gdk.ModifierType", paramtype: :param, txo: "full"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_current_event_time(): None =>
    """
    If there is a current event and it has a timestamp,
return that timestamp, otherwise return %GDK_CURRENT_TIME.

    {:argctype, "guint32"}
{:argname, "rv"}
{:argtype, "guint32"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

fun get_debug_flags(): U32 =>
"""
Returns the GTK+ debug flags.

This function is intended for GTK+ modules that want
to adjust their debug output based on GTK+ debug flags.
"""
  @gtk_get_debug_flags[U32]()

  fun pony_NOT_IMPLEMENTED_YET_get_default_language(): None =>
    """
    Returns the #PangoLanguage for the default language currently in
effect. (Note that this can change over the life of an
application.) The default language is derived from the current
locale. It determines, for example, whether GTK+ uses the
right-to-left or left-to-right text direction.

This function is equivalent to pango_language_get_default().
See that function for details.

    {:argctype, "PangoLanguage*"}
{:argname, "rv"}
{:argtype, "Pango.Language"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_event_widget(): None =>
    """
    If @event is %NULL or the event was not associated with any widget,
returns %NULL, otherwise returns the widget that received the event
originally.

    {:doh, %{argctype: "GdkEvent*", argname: "event", argtype: "Gdk.Event", paramtype: :param, txo: "none"}}
*/
    """

fun get_interface_age(): U32 =>
"""
Returns the interface age as passed to `libtool`
when building the GTK+ library the process is running against.
If `libtool` means nothing to you, don't
worry about it.
"""
  @gtk_get_interface_age[U32]()

  fun pony_NOT_IMPLEMENTED_YET_get_locale_direction(): None =>
    """
    Get the direction of the current locale. This is the expected
reading direction for text and UI.

This function depends on the current locale being set with
setlocale() and will default to setting the %GTK_TEXT_DIR_LTR
direction otherwise. %GTK_TEXT_DIR_NONE will never be returned.

GTK+ sets the default text direction according to the locale
during gtk_init(), and you should normally use
gtk_widget_get_direction() or gtk_widget_get_default_direction()
to obtain the current direcion.

This function is only needed rare cases when the locale is
changed after GTK+ has already been initialized. In this case,
you can use it to update the default text direction as follows:

|[<!-- language="C" -->
setlocale (LC_ALL, new_locale);
direction = gtk_get_locale_direction ();
gtk_widget_set_default_direction (direction);
]|

    {:argctype, "GtkTextDirection"}
{:argname, "rv"}
{:argtype, "TextDirection"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

fun get_major_version(): U32 =>
"""
Returns the major version number of the GTK+ library.
(e.g. in GTK+ version 3.1.5 this is 3.)

This function is in the library, so it represents the GTK+ library
your code is running against. Contrast with the #GTK_MAJOR_VERSION
macro, which represents the major version of the GTK+ headers you
have included when compiling your code.
"""
  @gtk_get_major_version[U32]()

fun get_micro_version(): U32 =>
"""
Returns the micro version number of the GTK+ library.
(e.g. in GTK+ version 3.1.5 this is 5.)

This function is in the library, so it represents the GTK+ library
your code is are running against. Contrast with the
#GTK_MICRO_VERSION macro, which represents the micro version of the
GTK+ headers you have included when compiling your code.
"""
  @gtk_get_micro_version[U32]()

fun get_minor_version(): U32 =>
"""
Returns the minor version number of the GTK+ library.
(e.g. in GTK+ version 3.1.5 this is 1.)

This function is in the library, so it represents the GTK+ library
your code is are running against. Contrast with the
#GTK_MINOR_VERSION macro, which represents the minor version of the
GTK+ headers you have included when compiling your code.
"""
  @gtk_get_minor_version[U32]()

  fun pony_NOT_IMPLEMENTED_YET_get_option_group(): None =>
    """
    Returns a #GOptionGroup for the commandline arguments recognized
by GTK+ and GDK.

You should add this group to your #GOptionContext
with g_option_context_add_group(), if you are using
g_option_context_parse() to parse your commandline arguments.

    {:argctype, "GOptionGroup*"}
{:argname, "rv"}
{:argtype, "GLib.OptionGroup"}
{:paramtype, :param}
{:txo, "full"}
*/
    """

/* Needs conversion code 
Queries the current grab of the default window group.
  fun grab_get_current(): GtkWidget val =>
    @gtk_grab_get_current[GObjectREF]()
*/

  fun pony_NOT_IMPLEMENTED_YET_icon_size_from_name(): None =>
    """
    Looks up the icon size associated with @name.

    {:argctype, "GtkIconSize"}
{:argname, "rv"}
{:argtype, "gint"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_icon_size_get_name(): None =>
    """
    Gets the canonical name of the given icon size. The returned string
is statically allocated and should not be freed.

    {:doh, %{argctype: "GtkIconSize", argname: "size", argtype: "gint", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_icon_size_lookup(): None =>
    """
    Obtains the pixel size of a semantic icon size @size:
#GTK_ICON_SIZE_MENU, #GTK_ICON_SIZE_BUTTON, etc.  This function
isn’t normally needed, gtk_icon_theme_load_icon() is the usual
way to get an icon for rendering, then just look at the size of
the rendered pixbuf. The rendered pixbuf may not even correspond to
the width/height returned by gtk_icon_size_lookup(), because themes
are free to render the pixbuf however they like, including changing
the usual size.

    {:doh, %{argctype: "GtkIconSize", argname: "size", argtype: "gint", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gint*", argname: "width", argtype: "gint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gint*", argname: "height", argtype: "gint", paramtype: :param, txo: "full"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_icon_size_lookup_for_settings(): None =>
    """
    Obtains the pixel size of a semantic icon size, possibly
modified by user preferences for a particular
#GtkSettings. Normally @size would be
#GTK_ICON_SIZE_MENU, #GTK_ICON_SIZE_BUTTON, etc.  This function
isn’t normally needed, gtk_widget_render_icon_pixbuf() is the usual
way to get an icon for rendering, then just look at the size of
the rendered pixbuf. The rendered pixbuf may not even correspond to
the width/height returned by gtk_icon_size_lookup(), because themes
are free to render the pixbuf however they like, including changing
the usual size.

    {:doh, %{argctype: "GtkSettings*", argname: "settings", argtype: "Settings", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkIconSize", argname: "size", argtype: "gint", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gint*", argname: "width", argtype: "gint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gint*", argname: "height", argtype: "gint", paramtype: :param, txo: "full"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_icon_size_register(): None =>
    """
    Registers a new icon size, along the same lines as #GTK_ICON_SIZE_MENU,
etc. Returns the integer value for the size.

    {:argctype, "GtkIconSize"}
{:argname, "rv"}
{:argtype, "gint"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_icon_size_register_alias(): None =>
    """
    Registers @alias as another name for @target.
So calling gtk_icon_size_from_name() with @alias as argument
will return @target.

    {:doh, %{argctype: "const gchar*", argname: "alias", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkIconSize", argname: "target", argtype: "gint", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_icon_theme_error_quark(): None =>
    """
    No docs present

    {:argctype, "GQuark"}
{:argname, "rv"}
{:argtype, "GLib.Quark"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

 fun init(): None =>
 """
 Call this function before using any other GTK+ functions in your GUI
applications.  It will initialize everything needed to operate the
toolkit and parses some standard command line options.

Although you are expected to pass the @argc, @argv parameters from main() to
this function, it is possible to pass %NULL if @argv is not available or
commandline handling is not required.

@argc and @argv are adjusted accordingly so your own code will
never see those standard arguments.

Note that there are some alternative ways to initialize GTK+:
if you are calling gtk_parse_args(), gtk_init_check(),
gtk_init_with_args() or g_option_context_parse() with
the option group returned by gtk_get_option_group(),
you don’t have to call gtk_init().

And if you are using #GtkApplication, you don't have to call any of the
initialization functions either; the #GtkApplication::startup handler
does it for you.

This function will terminate your program if it was unable to
initialize the windowing system for some reason. If you want
your program to fall back to a textual interface you want to
call gtk_init_check() instead.

Since 2.18, GTK+ calls `signal (SIGPIPE, SIG_IGN)`
during initialization, to ignore SIGPIPE signals, since these are
almost never wanted in graphical applications. If you do need to
handle SIGPIPE for some reason, reset the handler after gtk_init(),
but notice that other libraries (e.g. libdbus or gvfs) might do
similar things.
 """
     @gtk_init[None](USize(0), None)

  fun pony_NOT_IMPLEMENTED_YET_init_check(): None =>
    """
    This function does the same work as gtk_init() with only a single
change: It does not terminate the program if the commandline
arguments couldn’t be parsed or the windowing system can’t be
initialized. Instead it returns %FALSE on failure.

This way the application can fall back to some other means of
communication with the user - for example a curses or command line
interface.

Note that calling any GTK function or instantiating any GTK type after
this function returns %FALSE results in undefined behavior.

    {:doh, %{argctype: "int*", argname: "argc", argtype: "gint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "", argname: "argv", argtype: "", paramtype: :param, txo: "full"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_init_with_args(): None =>
    """
    This function does the same work as gtk_init_check().
Additionally, it allows you to add your own commandline options,
and it automatically generates nicely formatted
`--help` output. Note that your program will
be terminated after writing out the help output.

    {:doh, %{argctype: "gint*", argname: "argc", argtype: "gint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "", argname: "argv", argtype: "", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "const gchar*", argname: "parameter_string", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "", argname: "entries", argtype: "", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "translation_domain", argtype: "utf8", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_key_snooper_install(): None =>
    """
    Installs a key snooper function, which will get called on all
key events before delivering them normally.

    {:doh, %{argctype: "GtkKeySnoopFunc", argname: "snooper", argtype: "KeySnoopFunc", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "func_data", argtype: "gpointer", paramtype: :param, txo: "none"}}
*/
    """

fun key_snooper_remove(snooper_handler_id_pony: U32): None =>
"""
Removes the key snooper function with the given id.
"""
  @gtk_key_snooper_remove[None](snooper_handler_id_pony)

fun main(): None =>
"""
Runs the main loop until gtk_main_quit() is called.

You can nest calls to gtk_main(). In that case gtk_main_quit()
will make the innermost invocation of the main loop return.
"""
  @gtk_main[None]()

  fun pony_NOT_IMPLEMENTED_YET_main_do_event(): None =>
    """
    Processes a single GDK event.

This is public only to allow filtering of events between GDK and GTK+.
You will not usually need to call this function directly.

While you should not call this function directly, you might want to
know how exactly events are handled. So here is what this function
does with the event:

1. Compress enter/leave notify events. If the event passed build an
   enter/leave pair together with the next event (peeked from GDK), both
   events are thrown away. This is to avoid a backlog of (de-)highlighting
   widgets crossed by the pointer.

2. Find the widget which got the event. If the widget can’t be determined
   the event is thrown away unless it belongs to a INCR transaction.

3. Then the event is pushed onto a stack so you can query the currently
   handled event with gtk_get_current_event().

4. The event is sent to a widget. If a grab is active all events for widgets
   that are not in the contained in the grab widget are sent to the latter
   with a few exceptions:
   - Deletion and destruction events are still sent to the event widget for
     obvious reasons.
   - Events which directly relate to the visual representation of the event
     widget.
   - Leave events are delivered to the event widget if there was an enter
     event delivered to it before without the paired leave event.
   - Drag events are not redirected because it is unclear what the semantics
     of that would be.
   Another point of interest might be that all key events are first passed
   through the key snooper functions if there are any. Read the description
   of gtk_key_snooper_install() if you need this feature.

5. After finishing the delivery the event is popped from the event stack.

    {:doh, %{argctype: "GdkEvent*", argname: "event", argtype: "Gdk.Event", paramtype: :param, txo: "none"}}
*/
    """

fun main_iteration(): Bool =>
"""
Runs a single iteration of the mainloop.

If no events are waiting to be processed GTK+ will block
until the next event is noticed. If you don’t want to block
look at gtk_main_iteration_do() or check if any events are
pending with gtk_events_pending() first.
"""
  @gtk_main_iteration[Bool]()

fun main_iteration_do(blocking_pony: Bool): Bool =>
"""
Runs a single iteration of the mainloop.
If no events are available either return or block depending on
the value of @blocking.
"""
  @gtk_main_iteration_do[Bool](blocking_pony)

fun main_level(): U32 =>
"""
Asks for the current nesting level of the main loop.
"""
  @gtk_main_level[U32]()

fun main_quit(): None =>
"""
Makes the innermost invocation of the main loop return
when it regains control.
"""
  @gtk_main_quit[None]()

  fun pony_NOT_IMPLEMENTED_YET_paint_arrow(): None =>
    """
    Draws an arrow in the given rectangle on @cr using the given
parameters. @arrow_type determines the direction of the arrow.

    {:doh, %{argctype: "GtkStyle*", argname: "style", argtype: "Style", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "cairo_t*", argname: "cr", argtype: "cairo.Context", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkStateType", argname: "state_type", argtype: "StateType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkShadowType", argname: "shadow_type", argtype: "ShadowType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "detail", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkArrowType", argname: "arrow_type", argtype: "ArrowType", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_paint_box(): None =>
    """
    Draws a box on @cr with the given parameters.

    {:doh, %{argctype: "GtkStyle*", argname: "style", argtype: "Style", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "cairo_t*", argname: "cr", argtype: "cairo.Context", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkStateType", argname: "state_type", argtype: "StateType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkShadowType", argname: "shadow_type", argtype: "ShadowType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "detail", argtype: "utf8", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_paint_box_gap(): None =>
    """
    Draws a box in @cr using the given style and state and shadow type,
leaving a gap in one side.

    {:doh, %{argctype: "GtkStyle*", argname: "style", argtype: "Style", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "cairo_t*", argname: "cr", argtype: "cairo.Context", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkStateType", argname: "state_type", argtype: "StateType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkShadowType", argname: "shadow_type", argtype: "ShadowType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "detail", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkPositionType", argname: "gap_side", argtype: "PositionType", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_paint_check(): None =>
    """
    Draws a check button indicator in the given rectangle on @cr with
the given parameters.

    {:doh, %{argctype: "GtkStyle*", argname: "style", argtype: "Style", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "cairo_t*", argname: "cr", argtype: "cairo.Context", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkStateType", argname: "state_type", argtype: "StateType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkShadowType", argname: "shadow_type", argtype: "ShadowType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "detail", argtype: "utf8", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_paint_diamond(): None =>
    """
    Draws a diamond in the given rectangle on @window using the given
parameters.

    {:doh, %{argctype: "GtkStyle*", argname: "style", argtype: "Style", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "cairo_t*", argname: "cr", argtype: "cairo.Context", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkStateType", argname: "state_type", argtype: "StateType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkShadowType", argname: "shadow_type", argtype: "ShadowType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "detail", argtype: "utf8", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_paint_expander(): None =>
    """
    Draws an expander as used in #GtkTreeView. @x and @y specify the
center the expander. The size of the expander is determined by the
“expander-size” style property of @widget.  (If widget is not
specified or doesn’t have an “expander-size” property, an
unspecified default size will be used, since the caller doesn't
have sufficient information to position the expander, this is
likely not useful.) The expander is expander_size pixels tall
in the collapsed position and expander_size pixels wide in the
expanded position.

    {:doh, %{argctype: "GtkStyle*", argname: "style", argtype: "Style", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "cairo_t*", argname: "cr", argtype: "cairo.Context", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkStateType", argname: "state_type", argtype: "StateType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "detail", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkExpanderStyle", argname: "expander_style", argtype: "ExpanderStyle", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_paint_extension(): None =>
    """
    Draws an extension, i.e. a notebook tab.

    {:doh, %{argctype: "GtkStyle*", argname: "style", argtype: "Style", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "cairo_t*", argname: "cr", argtype: "cairo.Context", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkStateType", argname: "state_type", argtype: "StateType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkShadowType", argname: "shadow_type", argtype: "ShadowType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "detail", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkPositionType", argname: "gap_side", argtype: "PositionType", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_paint_flat_box(): None =>
    """
    Draws a flat box on @cr with the given parameters.

    {:doh, %{argctype: "GtkStyle*", argname: "style", argtype: "Style", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "cairo_t*", argname: "cr", argtype: "cairo.Context", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkStateType", argname: "state_type", argtype: "StateType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkShadowType", argname: "shadow_type", argtype: "ShadowType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "detail", argtype: "utf8", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_paint_focus(): None =>
    """
    Draws a focus indicator around the given rectangle on @cr using the
given style.

    {:doh, %{argctype: "GtkStyle*", argname: "style", argtype: "Style", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "cairo_t*", argname: "cr", argtype: "cairo.Context", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkStateType", argname: "state_type", argtype: "StateType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "detail", argtype: "utf8", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_paint_handle(): None =>
    """
    Draws a handle as used in #GtkHandleBox and #GtkPaned.

    {:doh, %{argctype: "GtkStyle*", argname: "style", argtype: "Style", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "cairo_t*", argname: "cr", argtype: "cairo.Context", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkStateType", argname: "state_type", argtype: "StateType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkShadowType", argname: "shadow_type", argtype: "ShadowType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "detail", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkOrientation", argname: "orientation", argtype: "Orientation", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_paint_hline(): None =>
    """
    Draws a horizontal line from (@x1, @y) to (@x2, @y) in @cr
using the given style and state.

    {:doh, %{argctype: "GtkStyle*", argname: "style", argtype: "Style", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "cairo_t*", argname: "cr", argtype: "cairo.Context", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkStateType", argname: "state_type", argtype: "StateType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "detail", argtype: "utf8", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_paint_layout(): None =>
    """
    Draws a layout on @cr using the given parameters.

    {:doh, %{argctype: "GtkStyle*", argname: "style", argtype: "Style", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "cairo_t*", argname: "cr", argtype: "cairo.Context", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkStateType", argname: "state_type", argtype: "StateType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "detail", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "PangoLayout*", argname: "layout", argtype: "Pango.Layout", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_paint_option(): None =>
    """
    Draws a radio button indicator in the given rectangle on @cr with
the given parameters.

    {:doh, %{argctype: "GtkStyle*", argname: "style", argtype: "Style", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "cairo_t*", argname: "cr", argtype: "cairo.Context", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkStateType", argname: "state_type", argtype: "StateType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkShadowType", argname: "shadow_type", argtype: "ShadowType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "detail", argtype: "utf8", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_paint_resize_grip(): None =>
    """
    Draws a resize grip in the given rectangle on @cr using the given
parameters.

    {:doh, %{argctype: "GtkStyle*", argname: "style", argtype: "Style", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "cairo_t*", argname: "cr", argtype: "cairo.Context", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkStateType", argname: "state_type", argtype: "StateType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "detail", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkWindowEdge", argname: "edge", argtype: "Gdk.WindowEdge", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_paint_shadow(): None =>
    """
    Draws a shadow around the given rectangle in @cr
using the given style and state and shadow type.

    {:doh, %{argctype: "GtkStyle*", argname: "style", argtype: "Style", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "cairo_t*", argname: "cr", argtype: "cairo.Context", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkStateType", argname: "state_type", argtype: "StateType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkShadowType", argname: "shadow_type", argtype: "ShadowType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "detail", argtype: "utf8", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_paint_shadow_gap(): None =>
    """
    Draws a shadow around the given rectangle in @cr
using the given style and state and shadow type, leaving a
gap in one side.

    {:doh, %{argctype: "GtkStyle*", argname: "style", argtype: "Style", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "cairo_t*", argname: "cr", argtype: "cairo.Context", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkStateType", argname: "state_type", argtype: "StateType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkShadowType", argname: "shadow_type", argtype: "ShadowType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "detail", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkPositionType", argname: "gap_side", argtype: "PositionType", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_paint_slider(): None =>
    """
    Draws a slider in the given rectangle on @cr using the
given style and orientation.

    {:doh, %{argctype: "GtkStyle*", argname: "style", argtype: "Style", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "cairo_t*", argname: "cr", argtype: "cairo.Context", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkStateType", argname: "state_type", argtype: "StateType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkShadowType", argname: "shadow_type", argtype: "ShadowType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "detail", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkOrientation", argname: "orientation", argtype: "Orientation", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_paint_spinner(): None =>
    """
    Draws a spinner on @window using the given parameters.

    {:doh, %{argctype: "GtkStyle*", argname: "style", argtype: "Style", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "cairo_t*", argname: "cr", argtype: "cairo.Context", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkStateType", argname: "state_type", argtype: "StateType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "detail", argtype: "utf8", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_paint_tab(): None =>
    """
    Draws an option menu tab (i.e. the up and down pointing arrows)
in the given rectangle on @cr using the given parameters.

    {:doh, %{argctype: "GtkStyle*", argname: "style", argtype: "Style", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "cairo_t*", argname: "cr", argtype: "cairo.Context", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkStateType", argname: "state_type", argtype: "StateType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkShadowType", argname: "shadow_type", argtype: "ShadowType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "detail", argtype: "utf8", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_paint_vline(): None =>
    """
    Draws a vertical line from (@x, @y1_) to (@x, @y2_) in @cr
using the given style and state.

    {:doh, %{argctype: "GtkStyle*", argname: "style", argtype: "Style", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "cairo_t*", argname: "cr", argtype: "cairo.Context", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkStateType", argname: "state_type", argtype: "StateType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "detail", argtype: "utf8", paramtype: :param, txo: "none"}}
*/
    """

fun paper_size_get_default(): String =>
"""
Returns the name of the default paper size, which
depends on the current locale.
"""
  var cstring_pony: Pointer[U8 val] ref = @gtk_paper_size_get_default[Pointer[U8 val] ref]()
  var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

  fun pony_NOT_IMPLEMENTED_YET_paper_size_get_paper_sizes(): None =>
    """
    Creates a list of known paper sizes.

    {:argctype, "GList*"}
{:argname, "rv"}
{:argtype, "GLib.List"}
{:paramtype, :param}
{:txo, "full"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_parse_args(): None =>
    """
    Parses command line arguments, and initializes global
attributes of GTK+, but does not actually open a connection
to a display. (See gdk_display_open(), gdk_get_display_arg_name())

Any arguments used by GTK+ or GDK are removed from the array and
@argc and @argv are updated accordingly.

There is no need to call this function explicitly if you are using
gtk_init(), or gtk_init_check().

Note that many aspects of GTK+ require a display connection to
function, so this way of initializing GTK+ is really only useful
for specialized use cases.

    {:doh, %{argctype: "int*", argname: "argc", argtype: "gint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "", argname: "argv", argtype: "", paramtype: :param, txo: "full"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_print_error_quark(): None =>
    """
    Registers an error quark for #GtkPrintOperation if necessary.

    {:argctype, "GQuark"}
{:argname, "rv"}
{:argtype, "GLib.Quark"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_print_run_page_setup_dialog(): None =>
    """
    Runs a page setup dialog, letting the user modify the values from
@page_setup. If the user cancels the dialog, the returned #GtkPageSetup
is identical to the passed in @page_setup, otherwise it contains the
modifications done in the dialog.

Note that this function may use a recursive mainloop to show the page
setup dialog. See gtk_print_run_page_setup_dialog_async() if this is
a problem.

    {:argctype, "GtkPageSetup*"}
{:argname, "rv"}
{:argtype, "PageSetup"}
{:paramtype, :param}
{:txo, "full"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_print_run_page_setup_dialog_async(): None =>
    """
    Runs a page setup dialog, letting the user modify the values from @page_setup.

In contrast to gtk_print_run_page_setup_dialog(), this function  returns after
showing the page setup dialog on platforms that support this, and calls @done_cb
from a signal handler for the ::response signal of the dialog.

    {:doh, %{argctype: "GtkWindow*", argname: "parent", argtype: "Window", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkPageSetup*", argname: "page_setup", argtype: "PageSetup", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkPrintSettings*", argname: "settings", argtype: "PrintSettings", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkPageSetupDoneFunc", argname: "done_cb", argtype: "PageSetupDoneFunc", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "data", argtype: "gpointer", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_propagate_event(): None =>
    """
    Sends an event to a widget, propagating the event to parent widgets
if the event remains unhandled.

Events received by GTK+ from GDK normally begin in gtk_main_do_event().
Depending on the type of event, existence of modal dialogs, grabs, etc.,
the event may be propagated; if so, this function is used.

gtk_propagate_event() calls gtk_widget_event() on each widget it
decides to send the event to. So gtk_widget_event() is the lowest-level
function; it simply emits the #GtkWidget::event and possibly an
event-specific signal on a widget. gtk_propagate_event() is a bit
higher-level, and gtk_main_do_event() is the highest level.

All that said, you most likely don’t want to use any of these
functions; synthesizing events is rarely needed. There are almost
certainly better ways to achieve your goals. For example, use
gdk_window_invalidate_rect() or gtk_widget_queue_draw() instead
of making up expose events.

    {:doh, %{argctype: "GdkEvent*", argname: "event", argtype: "Gdk.Event", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_rc_add_default_file(): None =>
    """
    Adds a file to the list of files to be parsed at the
end of gtk_init().

    {:doh, %{argctype: "const gchar*", argname: "filename", argtype: "filename", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_rc_find_module_in_path(): None =>
    """
    Searches for a theme engine in the GTK+ search path. This function
is not useful for applications and should not be used.

    {:argctype, "gchar*"}
{:argname, "rv"}
{:argtype, "filename"}
{:paramtype, :param}
{:txo, "full"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_rc_find_pixmap_in_path(): None =>
    """
    Looks up a file in pixmap path for the specified #GtkSettings.
If the file is not found, it outputs a warning message using
g_warning() and returns %NULL.

    {:argctype, "gchar*"}
{:argname, "rv"}
{:argtype, "filename"}
{:paramtype, :param}
{:txo, "full"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_rc_get_default_files(): None =>
    """
    Retrieves the current list of RC files that will be parsed
at the end of gtk_init().

    {:argctype, ""}
{:argname, "rv"}
{:argtype, ""}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_rc_get_im_module_file(): None =>
    """
    Obtains the path to the IM modules file. See the documentation
of the `GTK_IM_MODULE_FILE`
environment variable for more details.

    {:argctype, "gchar*"}
{:argname, "rv"}
{:argtype, "filename"}
{:paramtype, :param}
{:txo, "full"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_rc_get_im_module_path(): None =>
    """
    Obtains the path in which to look for IM modules. See the documentation
of the `GTK_PATH`
environment variable for more details about looking up modules. This
function is useful solely for utilities supplied with GTK+ and should
not be used by applications under normal circumstances.

    {:argctype, "gchar*"}
{:argname, "rv"}
{:argtype, "filename"}
{:paramtype, :param}
{:txo, "full"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_rc_get_module_dir(): None =>
    """
    Returns a directory in which GTK+ looks for theme engines.
For full information about the search for theme engines,
see the docs for `GTK_PATH` in [Running GTK+ Applications][gtk-running].

    {:argctype, "gchar*"}
{:argname, "rv"}
{:argtype, "filename"}
{:paramtype, :param}
{:txo, "full"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_rc_get_style(): None =>
    """
    Finds all matching RC styles for a given widget,
composites them together, and then creates a
#GtkStyle representing the composite appearance.
(GTK+ actually keeps a cache of previously
created styles, so a new style may not be
created.)

    {:argctype, "GtkStyle*"}
{:argname, "rv"}
{:argtype, "Style"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_rc_get_style_by_paths(): None =>
    """
    Creates up a #GtkStyle from styles defined in a RC file by providing
the raw components used in matching. This function may be useful
when creating pseudo-widgets that should be themed like widgets but
don’t actually have corresponding GTK+ widgets. An example of this
would be items inside a GNOME canvas widget.

The action of gtk_rc_get_style() is similar to:
|[<!-- language="C" -->
 gtk_widget_path (widget, NULL, &path, NULL);
 gtk_widget_class_path (widget, NULL, &class_path, NULL);
 gtk_rc_get_style_by_paths (gtk_widget_get_settings (widget),
                            path, class_path,
                            G_OBJECT_TYPE (widget));
]|

    {:argctype, "GtkStyle*"}
{:argname, "rv"}
{:argtype, "Style"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_rc_get_theme_dir(): None =>
    """
    Returns the standard directory in which themes should
be installed. (GTK+ does not actually use this directory
itself.)

    {:argctype, "gchar*"}
{:argname, "rv"}
{:argtype, "utf8"}
{:paramtype, :param}
{:txo, "full"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_rc_parse(): None =>
    """
    Parses a given resource file.

    {:doh, %{argctype: "const gchar*", argname: "filename", argtype: "utf8", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_rc_parse_color(): None =>
    """
    Parses a color in the format expected
in a RC file.

Note that theme engines should use gtk_rc_parse_color_full() in
order to support symbolic colors.

    {:doh, %{argctype: "GScanner*", argname: "scanner", argtype: "GLib.Scanner", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkColor*", argname: "color", argtype: "Gdk.Color", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_rc_parse_color_full(): None =>
    """
    Parses a color in the format expected
in a RC file. If @style is not %NULL, it will be consulted to resolve
references to symbolic colors.

    {:doh, %{argctype: "GScanner*", argname: "scanner", argtype: "GLib.Scanner", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkRcStyle*", argname: "style", argtype: "RcStyle", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkColor*", argname: "color", argtype: "Gdk.Color", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_rc_parse_priority(): None =>
    """
    Parses a #GtkPathPriorityType variable from the format expected
in a RC file.

    {:doh, %{argctype: "GScanner*", argname: "scanner", argtype: "GLib.Scanner", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkPathPriorityType*", argname: "priority", argtype: "PathPriorityType", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_rc_parse_state(): None =>
    """
    Parses a #GtkStateType variable from the format expected
in a RC file.

    {:doh, %{argctype: "GScanner*", argname: "scanner", argtype: "GLib.Scanner", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkStateType*", argname: "state", argtype: "StateType", paramtype: :param, txo: "full"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_rc_parse_string(): None =>
    """
    Parses resource information directly from a string.

    {:doh, %{argctype: "const gchar*", argname: "rc_string", argtype: "utf8", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_rc_property_parse_border(): None =>
    """
    A #GtkRcPropertyParser for use with gtk_settings_install_property_parser()
or gtk_widget_class_install_style_property_parser() which parses
borders in the form
`"{ left, right, top, bottom }"` for integers
left, right, top and bottom.

    {:doh, %{argctype: "const GParamSpec*", argname: "pspec", argtype: "GObject.ParamSpec", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const GString*", argname: "gstring", argtype: "GLib.String", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GValue*", argname: "property_value", argtype: "GObject.Value", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_rc_property_parse_color(): None =>
    """
    A #GtkRcPropertyParser for use with gtk_settings_install_property_parser()
or gtk_widget_class_install_style_property_parser() which parses a
color given either by its name or in the form
`{ red, green, blue }` where red, green and
blue are integers between 0 and 65535 or floating-point numbers
between 0 and 1.

    {:doh, %{argctype: "const GParamSpec*", argname: "pspec", argtype: "GObject.ParamSpec", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const GString*", argname: "gstring", argtype: "GLib.String", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GValue*", argname: "property_value", argtype: "GObject.Value", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_rc_property_parse_enum(): None =>
    """
    A #GtkRcPropertyParser for use with gtk_settings_install_property_parser()
or gtk_widget_class_install_style_property_parser() which parses a single
enumeration value.

The enumeration value can be specified by its name, its nickname or
its numeric value. For consistency with flags parsing, the value
may be surrounded by parentheses.

    {:doh, %{argctype: "const GParamSpec*", argname: "pspec", argtype: "GObject.ParamSpec", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const GString*", argname: "gstring", argtype: "GLib.String", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GValue*", argname: "property_value", argtype: "GObject.Value", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_rc_property_parse_flags(): None =>
    """
    A #GtkRcPropertyParser for use with gtk_settings_install_property_parser()
or gtk_widget_class_install_style_property_parser() which parses flags.

Flags can be specified by their name, their nickname or
numerically. Multiple flags can be specified in the form
`"( flag1 | flag2 | ... )"`.

    {:doh, %{argctype: "const GParamSpec*", argname: "pspec", argtype: "GObject.ParamSpec", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const GString*", argname: "gstring", argtype: "GLib.String", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GValue*", argname: "property_value", argtype: "GObject.Value", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_rc_property_parse_requisition(): None =>
    """
    A #GtkRcPropertyParser for use with gtk_settings_install_property_parser()
or gtk_widget_class_install_style_property_parser() which parses a
requisition in the form
`"{ width, height }"` for integers %width and %height.

    {:doh, %{argctype: "const GParamSpec*", argname: "pspec", argtype: "GObject.ParamSpec", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const GString*", argname: "gstring", argtype: "GLib.String", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GValue*", argname: "property_value", argtype: "GObject.Value", paramtype: :param, txo: "none"}}
*/
    """

fun rc_reparse_all(): Bool =>
"""
If the modification time on any previously read file for the
default #GtkSettings has changed, discard all style information
and then reread all previously read RC files.
"""
  @gtk_rc_reparse_all[Bool]()

  fun pony_NOT_IMPLEMENTED_YET_rc_reparse_all_for_settings(): None =>
    """
    If the modification time on any previously read file
for the given #GtkSettings has changed, discard all style information
and then reread all previously read RC files.

    {:doh, %{argctype: "GtkSettings*", argname: "settings", argtype: "Settings", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_rc_reset_styles(): None =>
    """
    This function recomputes the styles for all widgets that use a
particular #GtkSettings object. (There is one #GtkSettings object
per #GdkScreen, see gtk_settings_get_for_screen()); It is useful
when some global parameter has changed that affects the appearance
of all widgets, because when a widget gets a new style, it will
both redraw and recompute any cached information about its
appearance. As an example, it is used when the default font size
set by the operating system changes. Note that this function
doesn’t affect widgets that have a style set explicitly on them
with gtk_widget_set_style().

    {:doh, %{argctype: "GtkSettings*", argname: "settings", argtype: "Settings", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_rc_scanner_new(): None =>
    """
    No docs present

    {:argctype, "GScanner*"}
{:argname, "rv"}
{:argtype, "GLib.Scanner"}
{:paramtype, :param}
{:txo, "notpresent"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_rc_set_default_files(): None =>
    """
    Sets the list of files that GTK+ will read at the
end of gtk_init().

    {:doh, %{argctype: "", argname: "filenames", argtype: "", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_recent_chooser_error_quark(): None =>
    """
    No docs present

    {:argctype, "GQuark"}
{:argname, "rv"}
{:argtype, "GLib.Quark"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_recent_manager_error_quark(): None =>
    """
    No docs present

    {:argctype, "GQuark"}
{:argname, "rv"}
{:argtype, "GLib.Quark"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_render_activity(): None =>
    """
    Renders an activity indicator (such as in #GtkSpinner).
The state %GTK_STATE_FLAG_CHECKED determines whether there is
activity going on.

    {:doh, %{argctype: "GtkStyleContext*", argname: "context", argtype: "StyleContext", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "cairo_t*", argname: "cr", argtype: "cairo.Context", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "x", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "y", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "width", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "height", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_render_arrow(): None =>
    """
    Renders an arrow pointing to @angle.

Typical arrow rendering at 0, 1⁄2 π;, π; and 3⁄2 π:

![](arrows.png)

    {:doh, %{argctype: "GtkStyleContext*", argname: "context", argtype: "StyleContext", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "cairo_t*", argname: "cr", argtype: "cairo.Context", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "angle", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "x", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "y", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "size", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_render_background(): None =>
    """
    Renders the background of an element.

Typical background rendering, showing the effect of
`background-image`, `border-width` and `border-radius`:

![](background.png)

    {:doh, %{argctype: "GtkStyleContext*", argname: "context", argtype: "StyleContext", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "cairo_t*", argname: "cr", argtype: "cairo.Context", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "x", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "y", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "width", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "height", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_render_background_get_clip(): None =>
    """
    Returns the area that will be affected (i.e. drawn to) when
calling gtk_render_background() for the given @context and
rectangle.

    {:doh, %{argctype: "GtkStyleContext*", argname: "context", argtype: "StyleContext", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "x", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "y", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "width", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "height", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkRectangle*", argname: "out_clip", argtype: "Gdk.Rectangle", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_render_check(): None =>
    """
    Renders a checkmark (as in a #GtkCheckButton).

The %GTK_STATE_FLAG_CHECKED state determines whether the check is
on or off, and %GTK_STATE_FLAG_INCONSISTENT determines whether it
should be marked as undefined.

Typical checkmark rendering:

![](checks.png)

    {:doh, %{argctype: "GtkStyleContext*", argname: "context", argtype: "StyleContext", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "cairo_t*", argname: "cr", argtype: "cairo.Context", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "x", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "y", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "width", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "height", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_render_expander(): None =>
    """
    Renders an expander (as used in #GtkTreeView and #GtkExpander) in the area
defined by @x, @y, @width, @height. The state %GTK_STATE_FLAG_CHECKED
determines whether the expander is collapsed or expanded.

Typical expander rendering:

![](expanders.png)

    {:doh, %{argctype: "GtkStyleContext*", argname: "context", argtype: "StyleContext", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "cairo_t*", argname: "cr", argtype: "cairo.Context", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "x", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "y", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "width", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "height", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_render_extension(): None =>
    """
    Renders a extension (as in a #GtkNotebook tab) in the rectangle
defined by @x, @y, @width, @height. The side where the extension
connects to is defined by @gap_side.

Typical extension rendering:

![](extensions.png)

    {:doh, %{argctype: "GtkStyleContext*", argname: "context", argtype: "StyleContext", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "cairo_t*", argname: "cr", argtype: "cairo.Context", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "x", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "y", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "width", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "height", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkPositionType", argname: "gap_side", argtype: "PositionType", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_render_focus(): None =>
    """
    Renders a focus indicator on the rectangle determined by @x, @y, @width, @height.

Typical focus rendering:

![](focus.png)

    {:doh, %{argctype: "GtkStyleContext*", argname: "context", argtype: "StyleContext", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "cairo_t*", argname: "cr", argtype: "cairo.Context", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "x", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "y", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "width", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "height", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_render_frame(): None =>
    """
    Renders a frame around the rectangle defined by @x, @y, @width, @height.

Examples of frame rendering, showing the effect of `border-image`,
`border-color`, `border-width`, `border-radius` and junctions:

![](frames.png)

    {:doh, %{argctype: "GtkStyleContext*", argname: "context", argtype: "StyleContext", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "cairo_t*", argname: "cr", argtype: "cairo.Context", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "x", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "y", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "width", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "height", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_render_frame_gap(): None =>
    """
    Renders a frame around the rectangle defined by (@x, @y, @width, @height),
leaving a gap on one side. @xy0_gap and @xy1_gap will mean X coordinates
for %GTK_POS_TOP and %GTK_POS_BOTTOM gap sides, and Y coordinates for
%GTK_POS_LEFT and %GTK_POS_RIGHT.

Typical rendering of a frame with a gap:

![](frame-gap.png)

    {:doh, %{argctype: "GtkStyleContext*", argname: "context", argtype: "StyleContext", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "cairo_t*", argname: "cr", argtype: "cairo.Context", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "x", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "y", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "width", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "height", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkPositionType", argname: "gap_side", argtype: "PositionType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "xy0_gap", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "xy1_gap", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_render_handle(): None =>
    """
    Renders a handle (as in #GtkHandleBox, #GtkPaned and
#GtkWindow’s resize grip), in the rectangle
determined by @x, @y, @width, @height.

Handles rendered for the paned and grip classes:

![](handles.png)

    {:doh, %{argctype: "GtkStyleContext*", argname: "context", argtype: "StyleContext", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "cairo_t*", argname: "cr", argtype: "cairo.Context", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "x", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "y", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "width", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "height", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_render_icon(): None =>
    """
    Renders the icon in @pixbuf at the specified @x and @y coordinates.

This function will render the icon in @pixbuf at exactly its size,
regardless of scaling factors, which may not be appropriate when
drawing on displays with high pixel densities.

You probably want to use gtk_render_icon_surface() instead, if you
already have a Cairo surface.

    {:doh, %{argctype: "GtkStyleContext*", argname: "context", argtype: "StyleContext", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "cairo_t*", argname: "cr", argtype: "cairo.Context", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkPixbuf*", argname: "pixbuf", argtype: "GdkPixbuf.Pixbuf", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "x", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "y", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_render_icon_pixbuf(): None =>
    """
    Renders the icon specified by @source at the given @size, returning the result
in a pixbuf.

    {:argctype, "GdkPixbuf*"}
{:argname, "rv"}
{:argtype, "GdkPixbuf.Pixbuf"}
{:paramtype, :param}
{:txo, "full"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_render_icon_surface(): None =>
    """
    Renders the icon in @surface at the specified @x and @y coordinates.

    {:doh, %{argctype: "GtkStyleContext*", argname: "context", argtype: "StyleContext", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "cairo_t*", argname: "cr", argtype: "cairo.Context", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "cairo_surface_t*", argname: "surface", argtype: "cairo.Surface", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "x", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "y", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_render_insertion_cursor(): None =>
    """
    Draws a text caret on @cr at the specified index of @layout.

    {:doh, %{argctype: "GtkStyleContext*", argname: "context", argtype: "StyleContext", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "cairo_t*", argname: "cr", argtype: "cairo.Context", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "x", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "y", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "PangoLayout*", argname: "layout", argtype: "Pango.Layout", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "int", argname: "index", argtype: "gint", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "PangoDirection", argname: "direction", argtype: "Pango.Direction", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_render_layout(): None =>
    """
    Renders @layout on the coordinates @x, @y

    {:doh, %{argctype: "GtkStyleContext*", argname: "context", argtype: "StyleContext", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "cairo_t*", argname: "cr", argtype: "cairo.Context", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "x", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "y", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "PangoLayout*", argname: "layout", argtype: "Pango.Layout", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_render_line(): None =>
    """
    Renders a line from (x0, y0) to (x1, y1).

    {:doh, %{argctype: "GtkStyleContext*", argname: "context", argtype: "StyleContext", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "cairo_t*", argname: "cr", argtype: "cairo.Context", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "x0", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "y0", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "x1", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "y1", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_render_option(): None =>
    """
    Renders an option mark (as in a #GtkRadioButton), the %GTK_STATE_FLAG_CHECKED
state will determine whether the option is on or off, and
%GTK_STATE_FLAG_INCONSISTENT whether it should be marked as undefined.

Typical option mark rendering:

![](options.png)

    {:doh, %{argctype: "GtkStyleContext*", argname: "context", argtype: "StyleContext", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "cairo_t*", argname: "cr", argtype: "cairo.Context", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "x", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "y", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "width", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "height", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_render_slider(): None =>
    """
    Renders a slider (as in #GtkScale) in the rectangle defined by @x, @y,
@width, @height. @orientation defines whether the slider is vertical
or horizontal.

Typical slider rendering:

![](sliders.png)

    {:doh, %{argctype: "GtkStyleContext*", argname: "context", argtype: "StyleContext", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "cairo_t*", argname: "cr", argtype: "cairo.Context", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "x", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "y", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "width", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "height", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkOrientation", argname: "orientation", argtype: "Orientation", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_rgb_to_hsv(): None =>
    """
    Converts a color from RGB space to HSV.

Input values must be in the [0.0, 1.0] range;
output values will be in the same range.

    {:doh, %{argctype: "gdouble", argname: "r", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "g", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "b", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble*", argname: "h", argtype: "gdouble", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gdouble*", argname: "s", argtype: "gdouble", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gdouble*", argname: "v", argtype: "gdouble", paramtype: :param, txo: "full"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_selection_add_target(): None =>
    """
    Appends a specified target to the list of supported targets for a
given widget and selection.

    {:doh, %{argctype: "GdkAtom", argname: "selection", argtype: "Gdk.Atom", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkAtom", argname: "target", argtype: "Gdk.Atom", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_selection_add_targets(): None =>
    """
    Prepends a table of targets to the list of supported targets
for a given widget and selection.

    {:doh, %{argctype: "GdkAtom", argname: "selection", argtype: "Gdk.Atom", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "", argname: "targets", argtype: "", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_selection_clear_targets(): None =>
    """
    Remove all targets registered for the given selection for the
widget.

    {:doh, %{argctype: "GdkAtom", argname: "selection", argtype: "Gdk.Atom", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_selection_convert(): None =>
    """
    Requests the contents of a selection. When received,
a “selection-received” signal will be generated.

    {:doh, %{argctype: "GdkAtom", argname: "selection", argtype: "Gdk.Atom", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkAtom", argname: "target", argtype: "Gdk.Atom", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "guint32", argname: "time_", argtype: "guint32", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_selection_owner_set(): None =>
    """
    Claims ownership of a given selection for a particular widget,
or, if @widget is %NULL, release ownership of the selection.

    {:doh, %{argctype: "GdkAtom", argname: "selection", argtype: "Gdk.Atom", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "guint32", argname: "time_", argtype: "guint32", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_selection_owner_set_for_display(): None =>
    """
    Claim ownership of a given selection for a particular widget, or,
if @widget is %NULL, release ownership of the selection.

    {:doh, %{argctype: "GdkDisplay*", argname: "display", argtype: "Gdk.Display", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkAtom", argname: "selection", argtype: "Gdk.Atom", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "guint32", argname: "time_", argtype: "guint32", paramtype: :param, txo: "none"}}
*/
    """

fun selection_remove_all(widget_pony: GtkWidget val): None =>
"""
Removes all handlers and unsets ownership of all
selections for a widget. Called when widget is being
destroyed. This function will not generally be
called by applications.
"""
  @gtk_selection_remove_all[None](widget_pony.gtkwidget())

fun set_debug_flags(flags_pony: U32): None =>
"""
Sets the GTK+ debug flags.
"""
  @gtk_set_debug_flags[None](flags_pony)

  fun pony_NOT_IMPLEMENTED_YET_show_about_dialog(): None =>
    """
    This is a convenience function for showing an application’s about box.
The constructed dialog is associated with the parent window and
reused for future invocations of this function.

    {:doh, %{argctype: "GtkWindow*", argname: "parent", argtype: "Window", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "first_property_name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "", argname: "...", argtype: "", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_show_uri(): None =>
    """
    A convenience function for launching the default application
to show the uri. Like gtk_show_uri_on_window(), but takes a screen
as transient parent instead of a window.

Note that this function is deprecated as it does not pass the necessary
information for helpers to parent their dialog properly, when run from
sandboxed applications for example.

    {:doh, %{argctype: "GdkScreen*", argname: "screen", argtype: "Gdk.Screen", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "uri", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "guint32", argname: "timestamp", argtype: "guint32", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_show_uri_on_window(): None =>
    """
    This is a convenience function for launching the default application
to show the uri. The uri must be of a form understood by GIO (i.e. you
need to install gvfs to get support for uri schemes such as http://
or ftp://, as only local files are handled by GIO itself).
Typical examples are
- `file:///home/gnome/pict.jpg`
- `http://www.gnome.org`
- `mailto:me@gnome.org`

Ideally the timestamp is taken from the event triggering
the gtk_show_uri() call. If timestamp is not known you can take
%GDK_CURRENT_TIME.

This is the recommended call to be used as it passes information
necessary for sandbox helpers to parent their dialogs properly.

    {:doh, %{argctype: "GtkWindow*", argname: "parent", argtype: "Window", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const char*", argname: "uri", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "guint32", argname: "timestamp", argtype: "guint32", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_stock_add(): None =>
    """
    Registers each of the stock items in @items. If an item already
exists with the same stock ID as one of the @items, the old item
gets replaced. The stock items are copied, so GTK+ does not hold
any pointer into @items and @items can be freed. Use
gtk_stock_add_static() if @items is persistent and GTK+ need not
copy the array.

    {:doh, %{argctype: "", argname: "items", argtype: "", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_stock_add_static(): None =>
    """
    Same as gtk_stock_add(), but doesn’t copy @items, so
@items must persist until application exit.

    {:doh, %{argctype: "", argname: "items", argtype: "", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_stock_list_ids(): None =>
    """
    Retrieves a list of all known stock IDs added to a #GtkIconFactory
or registered with gtk_stock_add(). The list must be freed with g_slist_free(),
and each string in the list must be freed with g_free().

    {:argctype, "GSList*"}
{:argname, "rv"}
{:argtype, "GLib.SList"}
{:paramtype, :param}
{:txo, "full"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_stock_lookup(): None =>
    """
    Fills @item with the registered values for @stock_id, returning %TRUE
if @stock_id was known.

    {:doh, %{argctype: "const gchar*", argname: "stock_id", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkStockItem*", argname: "item", argtype: "StockItem", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_stock_set_translate_func(): None =>
    """
    Sets a function to be used for translating the @label of
a stock item.

If no function is registered for a translation domain,
g_dgettext() is used.

The function is used for all stock items whose
@translation_domain matches @domain. Note that it is possible
to use strings different from the actual gettext translation domain
of your application for this, as long as your #GtkTranslateFunc uses
the correct domain when calling dgettext(). This can be useful, e.g.
when dealing with message contexts:

|[<!-- language="C" -->
GtkStockItem items[] = {
 { MY_ITEM1, NC_("odd items", "Item 1"), 0, 0, "odd-item-domain" },
 { MY_ITEM2, NC_("even items", "Item 2"), 0, 0, "even-item-domain" },
};

gchar *
my_translate_func (const gchar *msgid,
                   gpointer     data)
{
  gchar *msgctxt = data;

  return (gchar*)g_dpgettext2 (GETTEXT_PACKAGE, msgctxt, msgid);
}

...

gtk_stock_add (items, G_N_ELEMENTS (items));
gtk_stock_set_translate_func ("odd-item-domain", my_translate_func, "odd items");
gtk_stock_set_translate_func ("even-item-domain", my_translate_func, "even items");
]|

    {:doh, %{argctype: "const gchar*", argname: "domain", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkTranslateFunc", argname: "func", argtype: "TranslateFunc", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "data", argtype: "gpointer", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GDestroyNotify", argname: "notify", argtype: "GLib.DestroyNotify", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_target_table_free(): None =>
    """
    This function frees a target table as returned by
gtk_target_table_new_from_list()

    {:doh, %{argctype: "", argname: "targets", argtype: "", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_target_table_new_from_list(): None =>
    """
    This function creates an #GtkTargetEntry array that contains the
same targets as the passed %list. The returned table is newly
allocated and should be freed using gtk_target_table_free() when no
longer needed.

    {:argctype, ""}
{:argname, "rv"}
{:argtype, ""}
{:paramtype, :param}
{:txo, "full"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_targets_include_image(): None =>
    """
    Determines if any of the targets in @targets can be used to
provide a #GdkPixbuf.

    {:doh, %{argctype: "", argname: "targets", argtype: "", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_targets_include_rich_text(): None =>
    """
    Determines if any of the targets in @targets can be used to
provide rich text.

    {:doh, %{argctype: "", argname: "targets", argtype: "", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkTextBuffer*", argname: "buffer", argtype: "TextBuffer", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_targets_include_text(): None =>
    """
    Determines if any of the targets in @targets can be used to
provide text.

    {:doh, %{argctype: "", argname: "targets", argtype: "", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_targets_include_uri(): None =>
    """
    Determines if any of the targets in @targets can be used to
provide an uri list.

    {:doh, %{argctype: "", argname: "targets", argtype: "", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_test_create_simple_window(): None =>
    """
    Create a simple window with window title @window_title and
text contents @dialog_text.
The window will quit any running gtk_main()-loop when destroyed, and it
will automatically be destroyed upon test function teardown.

    {:doh, %{argctype: "const gchar*", argname: "window_title", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "dialog_text", argtype: "utf8", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_test_create_widget(): None =>
    """
    This function wraps g_object_new() for widget types.
It’ll automatically show all created non window widgets, also
g_object_ref_sink() them (to keep them alive across a running test)
and set them up for destruction during the next test teardown phase.

    {:doh, %{argctype: "GType", argname: "widget_type", argtype: "GType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "first_property_name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "", argname: "...", argtype: "", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_test_display_button_window(): None =>
    """
    Create a window with window title @window_title, text contents @dialog_text,
and a number of buttons, according to the paired argument list given
as @... parameters.
Each button is created with a @label and a ::clicked signal handler that
incremrents the integer stored in @nump.
The window will be automatically shown with gtk_widget_show_now() after
creation, so when this function returns it has already been mapped,
resized and positioned on screen.
The window will quit any running gtk_main()-loop when destroyed, and it
will automatically be destroyed upon test function teardown.

    {:doh, %{argctype: "const gchar*", argname: "window_title", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "dialog_text", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "", argname: "...", argtype: "", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_test_find_label(): None =>
    """
    This function will search @widget and all its descendants for a GtkLabel
widget with a text string matching @label_pattern.
The @label_pattern may contain asterisks “*” and question marks “?” as
placeholders, g_pattern_match() is used for the matching.
Note that locales other than "C“ tend to alter (translate” label strings,
so this function is genrally only useful in test programs with
predetermined locales, see gtk_test_init() for more details.

    {:doh, %{argctype: "const gchar*", argname: "label_pattern", argtype: "utf8", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_test_find_sibling(): None =>
    """
    This function will search siblings of @base_widget and siblings of its
ancestors for all widgets matching @widget_type.
Of the matching widgets, the one that is geometrically closest to
@base_widget will be returned.
The general purpose of this function is to find the most likely “action”
widget, relative to another labeling widget. Such as finding a
button or text entry widget, given its corresponding label widget.

    {:doh, %{argctype: "GType", argname: "widget_type", argtype: "GType", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_test_find_widget(): None =>
    """
    This function will search the descendants of @widget for a widget
of type @widget_type that has a label matching @label_pattern next
to it. This is most useful for automated GUI testing, e.g. to find
the “OK” button in a dialog and synthesize clicks on it.
However see gtk_test_find_label(), gtk_test_find_sibling() and
gtk_test_widget_click() for possible caveats involving the search of
such widgets and synthesizing widget events.

    {:doh, %{argctype: "const gchar*", argname: "label_pattern", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GType", argname: "widget_type", argtype: "GType", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_test_init(): None =>
    """
    This function is used to initialize a GTK+ test program.

It will in turn call g_test_init() and gtk_init() to properly
initialize the testing framework and graphical toolkit. It’ll
also set the program’s locale to “C” and prevent loading of rc
files and Gtk+ modules. This is done to make tets program
environments as deterministic as possible.

Like gtk_init() and g_test_init(), any known arguments will be
processed and stripped from @argc and @argv.

    {:doh, %{argctype: "int*", argname: "argcp", argtype: "gint", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "", argname: "argvp", argtype: "", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "", argname: "...", argtype: "", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_test_list_all_types(): None =>
    """
    Return the type ids that have been registered after
calling gtk_test_register_all_types().

    {:argctype, ""}
{:argname, "rv"}
{:argtype, ""}
{:paramtype, :param}
{:txo, "none"}
*/
    """

fun test_register_all_types(): None =>
"""
Force registration of all core Gtk+ and Gdk object types.
This allowes to refer to any of those object types via
g_type_from_name() after calling this function.
"""
  @gtk_test_register_all_types[None]()

  fun pony_NOT_IMPLEMENTED_YET_test_slider_get_value(): None =>
    """
    Retrive the literal adjustment value for GtkRange based
widgets and spin buttons. Note that the value returned by
this function is anything between the lower and upper bounds
of the adjustment belonging to @widget, and is not a percentage
as passed in to gtk_test_slider_set_perc().

    {:argctype, "double"}
{:argname, "rv"}
{:argtype, "gdouble"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_test_slider_set_perc(): None =>
    """
    This function will adjust the slider position of all GtkRange
based widgets, such as scrollbars or scales, it’ll also adjust
spin buttons. The adjustment value of these widgets is set to
a value between the lower and upper limits, according to the
@percentage argument.

    {:doh, %{argctype: "double", argname: "percentage", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_test_spin_button_click(): None =>
    """
    This function will generate a @button click in the upwards or downwards
spin button arrow areas, usually leading to an increase or decrease of
spin button’s value.

    {:doh, %{argctype: "GtkSpinButton*", argname: "spinner", argtype: "SpinButton", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_test_text_get(): None =>
    """
    Retrive the text string of @widget if it is a GtkLabel,
GtkEditable (entry and text widgets) or GtkTextView.

    {:argctype, "gchar*"}
{:argname, "rv"}
{:argtype, "utf8"}
{:paramtype, :param}
{:txo, "full"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_test_text_set(): None =>
    """
    Set the text string of @widget to @string if it is a GtkLabel,
GtkEditable (entry and text widgets) or GtkTextView.

    {:doh, %{argctype: "const gchar*", argname: "string", argtype: "utf8", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_test_widget_click(): None =>
    """
    This function will generate a @button click (button press and button
release event) in the middle of the first GdkWindow found that belongs
to @widget.
For windowless widgets like #GtkButton (which returns %FALSE from
gtk_widget_get_has_window()), this will often be an
input-only event window. For other widgets, this is usually widget->window.
Certain caveats should be considered when using this function, in
particular because the mouse pointer is warped to the button click
location, see gdk_test_simulate_button() for details.

    {:doh, %{argctype: "GdkModifierType", argname: "modifiers", argtype: "Gdk.ModifierType", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_test_widget_send_key(): None =>
    """
    This function will generate keyboard press and release events in
the middle of the first GdkWindow found that belongs to @widget.
For windowless widgets like #GtkButton (which returns %FALSE from
gtk_widget_get_has_window()), this will often be an
input-only event window. For other widgets, this is usually widget->window.
Certain caveats should be considered when using this function, in
particular because the mouse pointer is warped to the key press
location, see gdk_test_simulate_key() for details.

    {:doh, %{argctype: "GdkModifierType", argname: "modifiers", argtype: "Gdk.ModifierType", paramtype: :param, txo: "none"}}
*/
    """

fun test_widget_wait_for_draw(widget_pony: GtkWidget val): None =>
"""
Enters the main loop and waits for @widget to be “drawn”. In this
context that means it waits for the frame clock of @widget to have
run a full styling, layout and drawing cycle.

This function is intended to be used for syncing with actions that
depend on @widget relayouting or on interaction with the display
server.
"""
  @gtk_test_widget_wait_for_draw[None](widget_pony.gtkwidget())

  fun pony_NOT_IMPLEMENTED_YET_tree_get_row_drag_data(): None =>
    """
    Obtains a @tree_model and @path from selection data of target type
%GTK_TREE_MODEL_ROW. Normally called from a drag_data_received handler.
This function can only be used if @selection_data originates from the same
process that’s calling this function, because a pointer to the tree model
is being passed around. If you aren’t in the same process, then you'll
get memory corruption. In the #GtkTreeDragDest drag_data_received handler,
you can assume that selection data of type %GTK_TREE_MODEL_ROW is
in from the current process. The returned path must be freed with
gtk_tree_path_free().

    {:doh, %{argctype: "GtkSelectionData*", argname: "selection_data", argtype: "SelectionData", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkTreeModel**", argname: "tree_model", argtype: "TreeModel", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkTreePath**", argname: "path", argtype: "TreePath", paramtype: :param, txo: "full"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_tree_row_reference_deleted(): None =>
    """
    Lets a set of row reference created by
gtk_tree_row_reference_new_proxy() know that the
model emitted the #GtkTreeModel::row-deleted signal.

    {:doh, %{argctype: "GObject*", argname: "proxy", argtype: "GObject.Object", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkTreePath*", argname: "path", argtype: "TreePath", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_tree_row_reference_inserted(): None =>
    """
    Lets a set of row reference created by
gtk_tree_row_reference_new_proxy() know that the
model emitted the #GtkTreeModel::row-inserted signal.

    {:doh, %{argctype: "GObject*", argname: "proxy", argtype: "GObject.Object", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkTreePath*", argname: "path", argtype: "TreePath", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_tree_row_reference_reordered(): None =>
    """
    Lets a set of row reference created by
gtk_tree_row_reference_new_proxy() know that the
model emitted the #GtkTreeModel::rows-reordered signal.

    {:doh, %{argctype: "GObject*", argname: "proxy", argtype: "GObject.Object", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkTreePath*", argname: "path", argtype: "TreePath", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkTreeIter*", argname: "iter", argtype: "TreeIter", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "", argname: "new_order", argtype: "", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_tree_set_row_drag_data(): None =>
    """
    Sets selection data of target type %GTK_TREE_MODEL_ROW. Normally used
in a drag_data_get handler.

    {:doh, %{argctype: "GtkSelectionData*", argname: "selection_data", argtype: "SelectionData", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkTreeModel*", argname: "tree_model", argtype: "TreeModel", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkTreePath*", argname: "path", argtype: "TreePath", paramtype: :param, txo: "none"}}
*/
    """

fun gtrue(): Bool =>
"""
All this function does it to return %TRUE.

This can be useful for example if you want to inhibit the deletion
of a window. Of course you should not do this as the user expects
a reaction from clicking the close icon of the window...

## A persistent window

|[<!-- language="C" -->
#include <gtk/gtk.h>

int
main (int argc, char **argv)
{
  GtkWidget *win, *but;
  const char *text = "Close yourself. I mean it!";

  gtk_init (&argc, &argv);

  win = gtk_window_new (GTK_WINDOW_TOPLEVEL);
  g_signal_connect (win,
                    "delete-event",
                    G_CALLBACK (gtk_true),
                    NULL);
  g_signal_connect (win, "destroy",
                    G_CALLBACK (gtk_main_quit),
                    NULL);

  but = gtk_button_new_with_label (text);
  g_signal_connect_swapped (but, "clicked",
                            G_CALLBACK (gtk_object_destroy),
                            win);
  gtk_container_add (GTK_CONTAINER (win), but);

  gtk_widget_show_all (win);

  gtk_main ();

  return 0;
}
]|
"""
  @gtk_true[Bool]()

```````