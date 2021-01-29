# GtkWindow
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L6)</span>

A GtkWindow is a toplevel window which can contain other widgets.
Windows normally have decorations that are under the control
of the windowing system and allow the user to manipulate the window
(resize it, move it, close it,...).

# GtkWindow as GtkBuildable

The GtkWindow implementation of the #GtkBuildable interface supports a
custom <accel-groups> element, which supports any number of <group>
elements representing the #GtkAccelGroup objects you want to add to
your window (synonymous with gtk_window_add_accel_group().

It also supports the <initial-focus> element, whose name property names
the widget to receive the focus when the window is mapped.

An example of a UI definition fragment with accel groups:
|[
<object class="GtkWindow">
  <accel-groups>
    <group name="accelgroup1"/>
  </accel-groups>
  <initial-focus name="thunderclap"/>
</object>

...

<object class="GtkAccelGroup" id="accelgroup1"/>
]|

The GtkWindow implementation of the #GtkBuildable interface supports
setting a child as the titlebar by specifying “titlebar” as the “type”
attribute of a <child> element.

# CSS nodes

|[<!-- language="plain" -->
window.background
├── decoration
├── <titlebar child>.titlebar [.default-decoration]
╰── <child>
]|

GtkWindow has a main CSS node with name window and style class .background,
and a subnode with name decoration.

Style classes that are typically used with the main CSS node are .csd (when
client-side decorations are in use), .solid-csd (for client-side decorations
without invisible borders), .ssd (used by mutter when rendering server-side
decorations). GtkWindow also represents window states with the following
style classes on the main node: .tiled, .maximized, .fullscreen. Specialized
types of window often add their own discriminating style classes, such as
.popup or .tooltip.

GtkWindow adds the .titlebar and .default-decoration style classes to the
widget that is added as a titlebar child.


```pony
class val GtkWindow is
  GtkContainer ref
```

#### Implements

* [GtkContainer](gtk3-GtkContainer.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L68)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkWindow val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkWindow](gtk3-GtkWindow.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L71)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkWindow val^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkWindow](gtk3-GtkWindow.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L74)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkWindow val^
```

#### Returns

* [GtkWindow](gtk3-GtkWindow.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L78)</span>


```pony
new val create(
  gtype_pony: (GtkWindowToplevel val | GtkWindowPopup val))
: GtkWindow val^
```
#### Parameters

*   gtype_pony: ([GtkWindowToplevel](gtk3-GtkWindowToplevel.md) val | [GtkWindowPopup](gtk3-GtkWindowPopup.md) val)

#### Returns

* [GtkWindow](gtk3-GtkWindow.md) val^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L64)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L66)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### activate_default
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L82)</span>


Activates the default widget for the window, unless the current
focused widget has been configured to receive the default action
(see gtk_widget_set_receives_default()), in which case the
focused widget is activated.


```pony
fun box activate_default()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### activate_focus
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L91)</span>


Activates the current focused widget within the window.


```pony
fun box activate_focus()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### pony_NOT_IMPLEMENTED_YET_activate_key
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L97)</span>


    Activates mnemonics and accelerators for this #GtkWindow. This is normally
called by the default ::key_press_event handler for toplevel windows,
however in some cases it may be useful to call this directly when
overriding the standard key handling for a toplevel window.

    {:doh, %{argctype: "GdkEventKey*", argname: "event", argtype: "Gdk.EventKey", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_activate_key()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_add_accel_group
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L108)</span>


    Associate @accel_group with @window, such that calling
gtk_accel_groups_activate() on @window will activate accelerators
in @accel_group.

    {:doh, %{argctype: "GtkAccelGroup*", argname: "accel_group", argtype: "AccelGroup", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_add_accel_group()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### add_mnemonic
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L118)</span>


Adds a mnemonic to this window.


```pony
fun box add_mnemonic(
  keyval_pony: U32 val,
  target_pony: GtkWidget val)
: None val
```
#### Parameters

*   keyval_pony: [U32](builtin-U32.md) val
*   target_pony: [GtkWidget](gtk3-GtkWidget.md) val

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_begin_move_drag
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L124)</span>


    Starts moving a window. This function is used if an application has
window movement grips. When GDK can support it, the window movement
will be done using the standard mechanism for the
[window manager][gtk-X11-arch] or windowing
system. Otherwise, GDK will try to emulate window movement,
potentially not all that well, depending on the windowing system.

    {:doh, %{argctype: "guint32", argname: "timestamp", argtype: "guint32", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_begin_move_drag()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_begin_resize_drag
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L137)</span>


    Starts resizing a window. This function is used if an application
has window resizing controls. When GDK can support it, the resize
will be done using the standard mechanism for the
[window manager][gtk-X11-arch] or windowing
system. Otherwise, GDK will try to emulate window resizing,
potentially not all that well, depending on the windowing system.

    {:doh, %{argctype: "GdkWindowEdge", argname: "edge", argtype: "Gdk.WindowEdge", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "guint32", argname: "timestamp", argtype: "guint32", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_begin_resize_drag()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### close
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L151)</span>


Requests that the window is closed, similar to what happens
when a window manager close button is clicked.

This function can be used with close buttons in custom
titlebars.


```pony
fun box close()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### deiconify
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L161)</span>


Asks to deiconify (i.e. unminimize) the specified @window. Note
that you shouldn’t assume the window is definitely deiconified
afterward, because other entities (e.g. the user or
[window manager][gtk-X11-arch])) could iconify it
again before your code which assumes deiconification gets to run.

You can track iconification via the “window-state-event” signal
on #GtkWidget.


```pony
fun box deiconify()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### fullscreen
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L174)</span>


Asks to place @window in the fullscreen state. Note that you
shouldn’t assume the window is definitely full screen afterward,
because other entities (e.g. the user or
[window manager][gtk-X11-arch]) could unfullscreen it
again, and not all window managers honor requests to fullscreen
windows. But normally the window will end up fullscreen. Just
don’t write code that crashes if not.

You can track the fullscreen state via the “window-state-event” signal
on #GtkWidget.


```pony
fun box fullscreen()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_fullscreen_on_monitor
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L189)</span>


    Asks to place @window in the fullscreen state. Note that you shouldn't assume
the window is definitely full screen afterward.

You can track the fullscreen state via the "window-state-event" signal
on #GtkWidget.

    {:doh, %{argctype: "GdkScreen*", argname: "screen", argtype: "Gdk.Screen", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_fullscreen_on_monitor()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### get_accept_focus
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L201)</span>


Gets the value set by gtk_window_set_accept_focus().


```pony
fun box get_accept_focus()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_application
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L207)</span>


    Gets the #GtkApplication associated with the window (if any).

    {:argctype, "GtkApplication*"}
{:argname, "rv"}
{:argtype, "Application"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_application()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### get_decorated
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L226)</span>


Returns whether the window has been set to have decorations
such as a title bar via gtk_window_set_decorated().


```pony
fun box get_decorated()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_default_size
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L233)</span>


    Gets the default size of the window. A value of -1 for the width or
height indicates that a default size has not been explicitly set
for that dimension, so the “natural” size of the window will be
used.

    {:doh, %{argctype: "gint*", argname: "width", argtype: "gint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gint*", argname: "height", argtype: "gint", paramtype: :param, txo: "full"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_default_size()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### get_deletable
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L252)</span>


Returns whether the window has been set to have a close button
via gtk_window_set_deletable().


```pony
fun box get_deletable()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_destroy_with_parent
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L259)</span>


Returns whether the window will be destroyed with its transient parent. See
gtk_window_set_destroy_with_parent ().


```pony
fun box get_destroy_with_parent()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_focus_on_map
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L276)</span>


Gets the value set by gtk_window_set_focus_on_map().


```pony
fun box get_focus_on_map()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_focus_visible
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L282)</span>


Gets the value of the #GtkWindow:focus-visible property.


```pony
fun box get_focus_visible()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_gravity
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L288)</span>


    Gets the value set by gtk_window_set_gravity().

    {:argctype, "GdkGravity"}
{:argname, "rv"}
{:argtype, "Gdk.Gravity"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_gravity()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_group
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L300)</span>


    Returns the group for @window or the default group, if
@window is %NULL or if @window does not have an explicit
window group.

    {:argctype, "GtkWindowGroup*"}
{:argname, "rv"}
{:argtype, "WindowGroup"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_group()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### get_has_resize_grip
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L314)</span>


Determines whether the window may have a resize grip.


```pony
fun box get_has_resize_grip()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_hide_titlebar_when_maximized
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L320)</span>


Returns whether the window has requested to have its titlebar hidden
when maximized. See gtk_window_set_hide_titlebar_when_maximized ().


```pony
fun box get_hide_titlebar_when_maximized()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_icon
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L327)</span>


    Gets the value set by gtk_window_set_icon() (or if you've
called gtk_window_set_icon_list(), gets the first icon in
the icon list).

    {:argctype, "GdkPixbuf*"}
{:argname, "rv"}
{:argtype, "GdkPixbuf.Pixbuf"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_icon()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_icon_list
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L341)</span>


    Retrieves the list of icons set by gtk_window_set_icon_list().
The list is copied, but the reference count on each
member won’t be incremented.

    {:argctype, "GList*"}
{:argname, "rv"}
{:argtype, "GLib.List"}
{:paramtype, :param}
{:txo, "container"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_icon_list()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### get_icon_name
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L355)</span>


Returns the name of the themed icon for the window,
see gtk_window_set_icon_name().


```pony
fun box get_icon_name()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_mnemonic_modifier
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L364)</span>


    Returns the mnemonic modifier for this window. See
gtk_window_set_mnemonic_modifier().

    {:argctype, "GdkModifierType"}
{:argname, "rv"}
{:argtype, "Gdk.ModifierType"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_mnemonic_modifier()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### get_mnemonics_visible
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L377)</span>


Gets the value of the #GtkWindow:mnemonics-visible property.


```pony
fun box get_mnemonics_visible()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_modal
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L383)</span>


Returns whether the window is modal. See gtk_window_set_modal().


```pony
fun box get_modal()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_opacity
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L389)</span>


    Fetches the requested opacity for this window. See
gtk_window_set_opacity().

    {:argctype, "gdouble"}
{:argname, "rv"}
{:argtype, "gdouble"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_opacity()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_position
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L402)</span>


    This function returns the position you need to pass to
gtk_window_move() to keep @window in its current position.
This means that the meaning of the returned value varies with
window gravity. See gtk_window_move() for more details.

The reliability of this function depends on the windowing system
currently in use. Some windowing systems, such as Wayland, do not
support a global coordinate system, and thus the position of the
window will always be (0, 0). Others, like X11, do not have a reliable
way to obtain the geometry of the decorations of a window if they are
provided by the window manager. Additionally, on X11, window manager
have been known to mismanage window gravity, which result in windows
moving even if you use the coordinates of the current position as
returned by this function.

If you haven’t changed the window gravity, its gravity will be
#GDK_GRAVITY_NORTH_WEST. This means that gtk_window_get_position()
gets the position of the top-left corner of the window manager
frame for the window. gtk_window_move() sets the position of this
same top-left corner.

If a window has gravity #GDK_GRAVITY_STATIC the window manager
frame is not relevant, and thus gtk_window_get_position() will
always produce accurate results. However you can’t use static
gravity to do things like place a window in a corner of the screen,
because static gravity ignores the window manager decorations.

Ideally, this function should return appropriate values if the
window has client side decorations, assuming that the windowing
system supports global coordinates.

In practice, saving the window position should not be left to
applications, as they lack enough knowledge of the windowing
system and the window manager state to effectively do so. The
appropriate way to implement saving the window position is to
use a platform-specific protocol, wherever that is available.

    {:doh, %{argctype: "gint*", argname: "root_x", argtype: "gint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gint*", argname: "root_y", argtype: "gint", paramtype: :param, txo: "full"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_position()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### get_resizable
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L446)</span>


Gets the value set by gtk_window_set_resizable().


```pony
fun box get_resizable()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_resize_grip_area
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L452)</span>


    If a window has a resize grip, this will retrieve the grip
position, width and height into the specified #GdkRectangle.

    {:doh, %{argctype: "GdkRectangle*", argname: "rect", argtype: "Gdk.Rectangle", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_resize_grip_area()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### get_role
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L461)</span>


Returns the role of the window. See gtk_window_set_role() for
further explanation.


```pony
fun box get_role()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_screen
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L470)</span>


    Returns the #GdkScreen associated with @window.

    {:argctype, "GdkScreen*"}
{:argname, "rv"}
{:argtype, "Gdk.Screen"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_screen()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_size
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L482)</span>


    Obtains the current size of @window.

If @window is not visible on screen, this function return the size GTK+
will suggest to the [window manager][gtk-X11-arch] for the initial window
size (but this is not reliably the same as the size the window manager
will actually select). See: gtk_window_set_default_size().

Depending on the windowing system and the window manager constraints,
the size returned by this function may not match the size set using
gtk_window_resize(); additionally, since gtk_window_resize() may be
implemented as an asynchronous operation, GTK+ cannot guarantee in any
way that this code:

|[<!-- language="C" -->
  // width and height are set elsewhere
  gtk_window_resize (window, width, height);

  int new_width, new_height;
  gtk_window_get_size (window, &new_width, &new_height);
]|

will result in `new_width` and `new_height` matching `width` and
`height`, respectively.

This function will return the logical size of the #GtkWindow,
excluding the widgets used in client side decorations; there is,
however, no guarantee that the result will be completely accurate
because client side decoration may include widgets that depend on
the user preferences and that may not be visibile at the time you
call this function.

The dimensions returned by this function are suitable for being
stored across sessions; use gtk_window_set_default_size() to
restore them when before showing the window.

To avoid potential race conditions, you should only call this
function in response to a size change notification, for instance
inside a handler for the #GtkWidget::size-allocate signal, or
inside a handler for the #GtkWidget::configure-event signal:

|[<!-- language="C" -->
static void
on_size_allocate (GtkWidget *widget, GtkAllocation *allocation)
{
  int new_width, new_height;

  gtk_window_get_size (GTK_WINDOW (widget), &new_width, &new_height);

  ...
}
]|

Note that, if you connect to the #GtkWidget::size-allocate signal,
you should not use the dimensions of the #GtkAllocation passed to
the signal handler, as the allocation may contain client side
decorations added by GTK+, depending on the windowing system in
use.

If you are getting a window size in order to position the window
on the screen, you should, instead, simply set the window’s semantic
type with gtk_window_set_type_hint(), which allows the window manager
to e.g. center dialogs. Also, if you set the transient parent of
dialogs with gtk_window_set_transient_for() window managers will
often center the dialog over its parent window. It's much preferred
to let the window manager handle these cases rather than doing it
yourself, because all apps will behave consistently and according to
user or system preferences, if the window manager handles it. Also,
the window manager can take into account the size of the window
decorations and border that it may add, and of which GTK+ has no
knowledge. Additionally, positioning windows in global screen coordinates
may not be allowed by the windowing system. For more information,
see: gtk_window_set_position().

    {:doh, %{argctype: "gint*", argname: "width", argtype: "gint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gint*", argname: "height", argtype: "gint", paramtype: :param, txo: "full"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_size()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### get_skip_pager_hint
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L562)</span>


Gets the value set by gtk_window_set_skip_pager_hint().


```pony
fun box get_skip_pager_hint()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_skip_taskbar_hint
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L568)</span>


Gets the value set by gtk_window_set_skip_taskbar_hint()


```pony
fun box get_skip_taskbar_hint()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_title
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L574)</span>


Retrieves the title of the window. See gtk_window_set_title().


```pony
fun box get_title()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_transient_for
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L589)</span>


    Fetches the transient parent for this window. See
gtk_window_set_transient_for().

    {:argctype, "GtkWindow*"}
{:argname, "rv"}
{:argtype, "Window"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_transient_for()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_type_hint
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L602)</span>


    Gets the type hint for this window. See gtk_window_set_type_hint().

    {:argctype, "GdkWindowTypeHint"}
{:argname, "rv"}
{:argtype, "Gdk.WindowTypeHint"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_type_hint()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### get_urgency_hint
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L614)</span>


Gets the value set by gtk_window_set_urgency_hint()


```pony
fun box get_urgency_hint()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_window_type
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L620)</span>


    Gets the type of the window. See #GtkWindowType.

    {:argctype, "GtkWindowType"}
{:argname, "rv"}
{:argtype, "WindowType"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_window_type()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### has_group
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L632)</span>


Returns whether @window has an explicit window group.


```pony
fun box has_group()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### has_toplevel_focus
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L638)</span>


Returns whether the input focus is within this GtkWindow.
For real toplevel windows, this is identical to gtk_window_is_active(),
but for embedded windows, like #GtkPlug, the results will differ.


```pony
fun box has_toplevel_focus()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### iconify
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L646)</span>


Asks to iconify (i.e. minimize) the specified @window. Note that
you shouldn’t assume the window is definitely iconified afterward,
because other entities (e.g. the user or
[window manager][gtk-X11-arch]) could deiconify it
again, or there may not be a window manager in which case
iconification isn’t possible, etc. But normally the window will end
up iconified. Just don’t write code that crashes if not.

It’s permitted to call this function before showing a window,
in which case the window will be iconified before it ever appears
onscreen.

You can track iconification via the “window-state-event” signal
on #GtkWidget.


```pony
fun box iconify()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### is_active
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L665)</span>


Returns whether the window is part of the current active toplevel.
(That is, the toplevel window receiving keystrokes.)
The return value is %TRUE if the window is active toplevel
itself, but also if it is, say, a #GtkPlug embedded in the active toplevel.
You might use this function if you wanted to draw a widget
differently in an active window from a widget in an inactive window.
See gtk_window_has_toplevel_focus()


```pony
fun box is_active()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### is_maximized
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L677)</span>


Retrieves the current maximized state of @window.

Note that since maximization is ultimately handled by the window
manager and happens asynchronously to an application request, you
shouldn’t assume the return value of this function changing
immediately (or at all), as an effect of calling
gtk_window_maximize() or gtk_window_unmaximize().


```pony
fun box is_maximized()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### maximize
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L689)</span>


Asks to maximize @window, so that it becomes full-screen. Note that
you shouldn’t assume the window is definitely maximized afterward,
because other entities (e.g. the user or
[window manager][gtk-X11-arch]) could unmaximize it
again, and not all window managers support maximization. But
normally the window will end up maximized. Just don’t write code
that crashes if not.

It’s permitted to call this function before showing a window,
in which case the window will be maximized when it appears onscreen
initially.

You can track maximization via the “window-state-event” signal
on #GtkWidget, or by listening to notifications on the
#GtkWindow:is-maximized property.


```pony
fun box maximize()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_mnemonic_activate
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L709)</span>


    Activates the targets associated with the mnemonic.

    {:doh, %{argctype: "GdkModifierType", argname: "modifier", argtype: "Gdk.ModifierType", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_mnemonic_activate()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### move
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L717)</span>


Asks the [window manager][gtk-X11-arch] to move
@window to the given position.  Window managers are free to ignore
this; most window managers ignore requests for initial window
positions (instead using a user-defined placement algorithm) and
honor requests after the window has already been shown.

Note: the position is the position of the gravity-determined
reference point for the window. The gravity determines two things:
first, the location of the reference point in root window
coordinates; and second, which point on the window is positioned at
the reference point.

By default the gravity is #GDK_GRAVITY_NORTH_WEST, so the reference
point is simply the @x, @y supplied to gtk_window_move(). The
top-left corner of the window decorations (aka window frame or
border) will be placed at @x, @y.  Therefore, to position a window
at the top left of the screen, you want to use the default gravity
(which is #GDK_GRAVITY_NORTH_WEST) and move the window to 0,0.

To position a window at the bottom right corner of the screen, you
would set #GDK_GRAVITY_SOUTH_EAST, which means that the reference
point is at @x + the window width and @y + the window height, and
the bottom-right corner of the window border will be placed at that
reference point. So, to place a window in the bottom right corner
you would first set gravity to south east, then write:
`gtk_window_move (window, gdk_screen_width () - window_width,
gdk_screen_height () - window_height)` (note that this
example does not take multi-head scenarios into account).

The [Extended Window Manager Hints Specification](http://www.freedesktop.org/Standards/wm-spec)
has a nice table of gravities in the “implementation notes” section.

The gtk_window_get_position() documentation may also be relevant.


```pony
fun box move(
  x_pony: I32 val,
  y_pony: I32 val)
: None val
```
#### Parameters

*   x_pony: [I32](builtin-I32.md) val
*   y_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_parse_geometry
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L755)</span>


    Parses a standard X Window System geometry string - see the
manual page for X (type “man X”) for details on this.
gtk_window_parse_geometry() does work on all GTK+ ports
including Win32 but is primarily intended for an X environment.

If either a size or a position can be extracted from the
geometry string, gtk_window_parse_geometry() returns %TRUE
and calls gtk_window_set_default_size() and/or gtk_window_move()
to resize/move the window.

If gtk_window_parse_geometry() returns %TRUE, it will also
set the #GDK_HINT_USER_POS and/or #GDK_HINT_USER_SIZE hints
indicating to the window manager that the size/position of
the window was user-specified. This causes most window
managers to honor the geometry.

Note that for gtk_window_parse_geometry() to work as expected, it has
to be called when the window has its “final” size, i.e. after calling
gtk_widget_show_all() on the contents and gtk_window_set_geometry_hints()
on the window.
|[<!-- language="C" -->
#include <gtk/gtk.h>

static void
fill_with_content (GtkWidget *vbox)
{
  // fill with content...
}

int
main (int argc, char *argv[])
{
  GtkWidget *window, *vbox;
  GdkGeometry size_hints = {
    100, 50, 0, 0, 100, 50, 10,
    10, 0.0, 0.0, GDK_GRAVITY_NORTH_WEST
  };

  gtk_init (&argc, &argv);

  window = gtk_window_new (GTK_WINDOW_TOPLEVEL);
  vbox = gtk_box_new (GTK_ORIENTATION_VERTICAL, 0);

  gtk_container_add (GTK_CONTAINER (window), vbox);
  fill_with_content (vbox);
  gtk_widget_show_all (vbox);

  gtk_window_set_geometry_hints (GTK_WINDOW (window),
	  			    NULL,
				    &size_hints,
				    GDK_HINT_MIN_SIZE |
				    GDK_HINT_BASE_SIZE |
				    GDK_HINT_RESIZE_INC);

  if (argc > 1)
    {
      gboolean res;
      res = gtk_window_parse_geometry (GTK_WINDOW (window),
                                       argv[1]);
      if (! res)
        fprintf (stderr,
                 "Failed to parse “%s”\n",
                 argv[1]);
    }

  gtk_widget_show_all (window);
  gtk_main ();

  return 0;
}
]|

    {:doh, %{argctype: "const gchar*", argname: "geometry", argtype: "utf8", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_parse_geometry()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### present
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L833)</span>


Presents a window to the user. This function should not be used
as when it is called, it is too late to gather a valid timestamp
to allow focus stealing prevention to work correctly.


```pony
fun box present()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_present_with_time
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L841)</span>


    Presents a window to the user. This may mean raising the window
in the stacking order, deiconifying it, moving it to the current
desktop, and/or giving it the keyboard focus, possibly dependent
on the user’s platform, window manager, and preferences.

If @window is hidden, this function calls gtk_widget_show()
as well.

This function should be used when the user tries to open a window
that’s already open. Say for example the preferences dialog is
currently open, and the user chooses Preferences from the menu
a second time; use gtk_window_present() to move the already-open dialog
where the user can see it.

Presents a window to the user in response to a user interaction. The
timestamp should be gathered when the window was requested to be shown
(when clicking a link for example), rather than once the window is
ready to be shown.

    {:doh, %{argctype: "guint32", argname: "timestamp", argtype: "guint32", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_present_with_time()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_propagate_key_event
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L866)</span>


    Propagate a key press or release event to the focus widget and
up the focus container chain until a widget handles @event.
This is normally called by the default ::key_press_event and
::key_release_event handlers for toplevel windows,
however in some cases it may be useful to call this directly when
overriding the standard key handling for a toplevel window.

    {:doh, %{argctype: "GdkEventKey*", argname: "event", argtype: "Gdk.EventKey", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_propagate_key_event()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_remove_accel_group
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L879)</span>


    Reverses the effects of gtk_window_add_accel_group().

    {:doh, %{argctype: "GtkAccelGroup*", argname: "accel_group", argtype: "AccelGroup", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_remove_accel_group()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### remove_mnemonic
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L887)</span>


Removes a mnemonic from this window.


```pony
fun box remove_mnemonic(
  keyval_pony: U32 val,
  target_pony: GtkWidget val)
: None val
```
#### Parameters

*   keyval_pony: [U32](builtin-U32.md) val
*   target_pony: [GtkWidget](gtk3-GtkWidget.md) val

#### Returns

* [None](builtin-None.md) val

---

### reshow_with_initial_size
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L893)</span>


Hides @window, then reshows it, resetting the
default size and position of the window. Used
by GUI builders only.


```pony
fun box reshow_with_initial_size()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### resize
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L901)</span>


Resizes the window as if the user had done so, obeying geometry
constraints. The default geometry constraint is that windows may
not be smaller than their size request; to override this
constraint, call gtk_widget_set_size_request() to set the window's
request to a smaller value.

If gtk_window_resize() is called before showing a window for the
first time, it overrides any default size set with
gtk_window_set_default_size().

Windows may not be resized smaller than 1 by 1 pixels.

When using client side decorations, GTK+ will do its best to adjust
the given size so that the resulting window size matches the
requested size without the title bar, borders and shadows added for
the client side decorations, but there is no guarantee that the
result will be totally accurate because these widgets added for
client side decorations depend on the theme and may not be realized
or visible at the time gtk_window_resize() is issued.

If the GtkWindow has a titlebar widget (see gtk_window_set_titlebar()), then
typically, gtk_window_resize() will compensate for the height of the titlebar
widget only if the height is known when the resulting GtkWindow configuration
is issued.
For example, if new widgets are added after the GtkWindow configuration
and cause the titlebar widget to grow in height, this will result in a
window content smaller that specified by gtk_window_resize() and not
a larger window.


```pony
fun box resize(
  width_pony: I32 val,
  height_pony: I32 val)
: None val
```
#### Parameters

*   width_pony: [I32](builtin-I32.md) val
*   height_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### resize_grip_is_visible
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L934)</span>


Determines whether a resize grip is visible for the specified window.


```pony
fun box resize_grip_is_visible()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### resize_to_geometry
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L940)</span>


Like gtk_window_resize(), but @width and @height are interpreted
in terms of the base size and increment set with
gtk_window_set_geometry_hints.


```pony
fun box resize_to_geometry(
  width_pony: I32 val,
  height_pony: I32 val)
: None val
```
#### Parameters

*   width_pony: [I32](builtin-I32.md) val
*   height_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_accept_focus
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L948)</span>


Windows may set a hint asking the desktop environment not to receive
the input focus. This function sets this hint.


```pony
fun box set_accept_focus(
  setting_pony: Bool val)
: None val
```
#### Parameters

*   setting_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_application
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L955)</span>


    Sets or unsets the #GtkApplication associated with the window.

The application will be kept alive for at least as long as it has any windows
associated with it (see g_application_hold() for a way to keep it alive
without windows).

Normally, the connection between the application and the window will remain
until the window is destroyed, but you can explicitly remove it by setting
the @application to %NULL.

This is equivalent to calling gtk_application_remove_window() and/or
gtk_application_add_window() on the old/new applications as relevant.

    {:doh, %{argctype: "GtkApplication*", argname: "application", argtype: "Application", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_application()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### set_attached_to
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L974)</span>


Marks @window as attached to @attach_widget. This creates a logical binding
between the window and the widget it belongs to, which is used by GTK+ to
propagate information such as styling or accessibility to @window as if it
was a children of @attach_widget.

Examples of places where specifying this relation is useful are for instance
a #GtkMenu created by a #GtkComboBox, a completion popup window
created by #GtkEntry or a typeahead search entry created by #GtkTreeView.

Note that this function should not be confused with
gtk_window_set_transient_for(), which specifies a window manager relation
between two toplevels instead.

Passing %NULL for @attach_widget detaches the window.


```pony
fun box set_attached_to(
  attach_widget_pony: GtkWidget val)
: None val
```
#### Parameters

*   attach_widget_pony: [GtkWidget](gtk3-GtkWidget.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_decorated
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L993)</span>


By default, windows are decorated with a title bar, resize
controls, etc.  Some [window managers][gtk-X11-arch]
allow GTK+ to disable these decorations, creating a
borderless window. If you set the decorated property to %FALSE
using this function, GTK+ will do its best to convince the window
manager not to decorate the window. Depending on the system, this
function may not have any effect when called on a window that is
already visible, so you should call it before calling gtk_widget_show().

On Windows, this function always works, since there’s no window manager
policy involved.


```pony
fun box set_decorated(
  setting_pony: Bool val)
: None val
```
#### Parameters

*   setting_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_default
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L1009)</span>


The default widget is the widget that’s activated when the user
presses Enter in a dialog (for example). This function sets or
unsets the default widget for a #GtkWindow. When setting (rather
than unsetting) the default widget it’s generally easier to call
gtk_widget_grab_default() on the widget. Before making a widget
the default widget, you must call gtk_widget_set_can_default() on
the widget you’d like to make the default.


```pony
fun box set_default(
  default_widget_pony: GtkWidget val)
: None val
```
#### Parameters

*   default_widget_pony: [GtkWidget](gtk3-GtkWidget.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_default_geometry
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L1021)</span>


Like gtk_window_set_default_size(), but @width and @height are interpreted
in terms of the base size and increment set with
gtk_window_set_geometry_hints.


```pony
fun box set_default_geometry(
  width_pony: I32 val,
  height_pony: I32 val)
: None val
```
#### Parameters

*   width_pony: [I32](builtin-I32.md) val
*   height_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_default_size
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L1029)</span>


Sets the default size of a window. If the window’s “natural” size
(its size request) is larger than the default, the default will be
ignored. More generally, if the default size does not obey the
geometry hints for the window (gtk_window_set_geometry_hints() can
be used to set these explicitly), the default size will be clamped
to the nearest permitted size.

Unlike gtk_widget_set_size_request(), which sets a size request for
a widget and thus would keep users from shrinking the window, this
function only sets the initial size, just as if the user had
resized the window themselves. Users can still shrink the window
again as they normally would. Setting a default size of -1 means to
use the “natural” default size (the size request of the window).

For more control over a window’s initial size and how resizing works,
investigate gtk_window_set_geometry_hints().

For some uses, gtk_window_resize() is a more appropriate function.
gtk_window_resize() changes the current size of the window, rather
than the size to be used on initial display. gtk_window_resize() always
affects the window itself, not the geometry widget.

The default size of a window only affects the first time a window is
shown; if a window is hidden and re-shown, it will remember the size
it had prior to hiding, rather than using the default size.

Windows can’t actually be 0x0 in size, they must be at least 1x1, but
passing 0 for @width and @height is OK, resulting in a 1x1 default size.

If you use this function to reestablish a previously saved window size,
note that the appropriate size to save is the one returned by
gtk_window_get_size(). Using the window allocation directly will not
work in all circumstances and can lead to growing or shrinking windows.


```pony
fun box set_default_size(
  width_pony: I32 val,
  height_pony: I32 val)
: None val
```
#### Parameters

*   width_pony: [I32](builtin-I32.md) val
*   height_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_deletable
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L1067)</span>


By default, windows have a close button in the window frame. Some
[window managers][gtk-X11-arch] allow GTK+ to
disable this button. If you set the deletable property to %FALSE
using this function, GTK+ will do its best to convince the window
manager not to show a close button. Depending on the system, this
function may not have any effect when called on a window that is
already visible, so you should call it before calling gtk_widget_show().

On Windows, this function always works, since there’s no window manager
policy involved.


```pony
fun box set_deletable(
  setting_pony: Bool val)
: None val
```
#### Parameters

*   setting_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_destroy_with_parent
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L1082)</span>


If @setting is %TRUE, then destroying the transient parent of @window
will also destroy @window itself. This is useful for dialogs that
shouldn’t persist beyond the lifetime of the main window they're
associated with, for example.


```pony
fun box set_destroy_with_parent(
  setting_pony: Bool val)
: None val
```
#### Parameters

*   setting_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_focus
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L1091)</span>


If @focus is not the current focus widget, and is focusable, sets
it as the focus widget for the window. If @focus is %NULL, unsets
the focus widget for this window. To set the focus to a particular
widget in the toplevel, it is usually more convenient to use
gtk_widget_grab_focus() instead of this function.


```pony
fun box set_focus(
  focus_pony: GtkWidget val)
: None val
```
#### Parameters

*   focus_pony: [GtkWidget](gtk3-GtkWidget.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_focus_on_map
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L1101)</span>


Windows may set a hint asking the desktop environment not to receive
the input focus when the window is mapped.  This function sets this
hint.


```pony
fun box set_focus_on_map(
  setting_pony: Bool val)
: None val
```
#### Parameters

*   setting_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_focus_visible
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L1109)</span>


Sets the #GtkWindow:focus-visible property.


```pony
fun box set_focus_visible(
  setting_pony: Bool val)
: None val
```
#### Parameters

*   setting_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_geometry_hints
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L1115)</span>


    This function sets up hints about how a window can be resized by
the user.  You can set a minimum and maximum size; allowed resize
increments (e.g. for xterm, you can only resize by the size of a
character); aspect ratios; and more. See the #GdkGeometry struct.

    {:doh, %{argctype: "GdkGeometry*", argname: "geometry", argtype: "Gdk.Geometry", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkWindowHints", argname: "geom_mask", argtype: "Gdk.WindowHints", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_geometry_hints()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_gravity
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L1127)</span>


    Window gravity defines the meaning of coordinates passed to
gtk_window_move(). See gtk_window_move() and #GdkGravity for
more details.

The default window gravity is #GDK_GRAVITY_NORTH_WEST which will
typically “do what you mean.”

    {:doh, %{argctype: "GdkGravity", argname: "gravity", argtype: "Gdk.Gravity", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_gravity()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### set_has_resize_grip
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L1140)</span>


Sets whether @window has a corner resize grip.

Note that the resize grip is only shown if the window
is actually resizable and not maximized. Use
gtk_window_resize_grip_is_visible() to find out if the
resize grip is currently shown.


```pony
fun box set_has_resize_grip(
  value_pony: Bool val)
: None val
```
#### Parameters

*   value_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_has_user_ref_count
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L1151)</span>


Tells GTK+ whether to drop its extra reference to the window
when gtk_widget_destroy() is called.

This function is only exported for the benefit of language
bindings which may need to keep the window alive until their
wrapper object is garbage collected. There is no justification
for ever calling this function in an application.


```pony
fun box set_has_user_ref_count(
  setting_pony: Bool val)
: None val
```
#### Parameters

*   setting_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_hide_titlebar_when_maximized
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L1163)</span>


If @setting is %TRUE, then @window will request that it’s titlebar
should be hidden when maximized.
This is useful for windows that don’t convey any information other
than the application name in the titlebar, to put the available
screen space to better use. If the underlying window system does not
support the request, the setting will not have any effect.

Note that custom titlebars set with gtk_window_set_titlebar() are
not affected by this. The application is in full control of their
content and visibility anyway.


```pony
fun box set_hide_titlebar_when_maximized(
  setting_pony: Bool val)
: None val
```
#### Parameters

*   setting_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_icon
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L1178)</span>


    Sets up the icon representing a #GtkWindow. This icon is used when
the window is minimized (also known as iconified).  Some window
managers or desktop environments may also place it in the window
frame, or display it in other contexts. On others, the icon is not
used at all, so your mileage may vary.

The icon should be provided in whatever size it was naturally
drawn; that is, don’t scale the image before passing it to
GTK+. Scaling is postponed until the last minute, when the desired
final size is known, to allow best quality.

If you have your icon hand-drawn in multiple sizes, use
gtk_window_set_icon_list(). Then the best size will be used.

This function is equivalent to calling gtk_window_set_icon_list()
with a 1-element list.

See also gtk_window_set_default_icon_list() to set the icon
for all windows in your application in one go.

    {:doh, %{argctype: "GdkPixbuf*", argname: "icon", argtype: "GdkPixbuf.Pixbuf", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_icon()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_icon_from_file
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L1204)</span>


    Sets the icon for @window.
Warns on failure if @err is %NULL.

This function is equivalent to calling gtk_window_set_icon()
with a pixbuf created by loading the image from @filename.

    {:doh, %{argctype: "const gchar*", argname: "filename", argtype: "filename", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_icon_from_file()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_icon_list
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L1216)</span>


    Sets up the icon representing a #GtkWindow. The icon is used when
the window is minimized (also known as iconified).  Some window
managers or desktop environments may also place it in the window
frame, or display it in other contexts. On others, the icon is not
used at all, so your mileage may vary.

gtk_window_set_icon_list() allows you to pass in the same icon in
several hand-drawn sizes. The list should contain the natural sizes
your icon is available in; that is, don’t scale the image before
passing it to GTK+. Scaling is postponed until the last minute,
when the desired final size is known, to allow best quality.

By passing several sizes, you may improve the final image quality
of the icon, by reducing or eliminating automatic image scaling.

Recommended sizes to provide: 16x16, 32x32, 48x48 at minimum, and
larger images (64x64, 128x128) if you have them.

See also gtk_window_set_default_icon_list() to set the icon
for all windows in your application in one go.

Note that transient windows (those who have been set transient for another
window using gtk_window_set_transient_for()) will inherit their
icon from their transient parent. So there’s no need to explicitly
set the icon on transient windows.

    {:doh, %{argctype: "GList*", argname: "list", argtype: "GLib.List", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_icon_list()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_icon_name
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L1248)</span>


    Sets the icon for the window from a named themed icon.
See the docs for #GtkIconTheme for more details.
On some platforms, the window icon is not used at all.

Note that this has nothing to do with the WM_ICON_NAME
property which is mentioned in the ICCCM.

    {:doh, %{argctype: "const gchar*", argname: "name", argtype: "utf8", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_icon_name()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### set_keep_above
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L1261)</span>


Asks to keep @window above, so that it stays on top. Note that
you shouldn’t assume the window is definitely above afterward,
because other entities (e.g. the user or
[window manager][gtk-X11-arch]) could not keep it above,
and not all window managers support keeping windows above. But
normally the window will end kept above. Just don’t write code
that crashes if not.

It’s permitted to call this function before showing a window,
in which case the window will be kept above when it appears onscreen
initially.

You can track the above state via the “window-state-event” signal
on #GtkWidget.

Note that, according to the
[Extended Window Manager Hints Specification](http://www.freedesktop.org/Standards/wm-spec),
the above state is mainly meant for user preferences and should not
be used by applications e.g. for drawing attention to their
dialogs.


```pony
fun box set_keep_above(
  setting_pony: Bool val)
: None val
```
#### Parameters

*   setting_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_keep_below
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L1286)</span>


Asks to keep @window below, so that it stays in bottom. Note that
you shouldn’t assume the window is definitely below afterward,
because other entities (e.g. the user or
[window manager][gtk-X11-arch]) could not keep it below,
and not all window managers support putting windows below. But
normally the window will be kept below. Just don’t write code
that crashes if not.

It’s permitted to call this function before showing a window,
in which case the window will be kept below when it appears onscreen
initially.

You can track the below state via the “window-state-event” signal
on #GtkWidget.

Note that, according to the
[Extended Window Manager Hints Specification](http://www.freedesktop.org/Standards/wm-spec),
the above state is mainly meant for user preferences and should not
be used by applications e.g. for drawing attention to their
dialogs.


```pony
fun box set_keep_below(
  setting_pony: Bool val)
: None val
```
#### Parameters

*   setting_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_mnemonic_modifier
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L1311)</span>


    Sets the mnemonic modifier for this window.

    {:doh, %{argctype: "GdkModifierType", argname: "modifier", argtype: "Gdk.ModifierType", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_mnemonic_modifier()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### set_mnemonics_visible
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L1319)</span>


Sets the #GtkWindow:mnemonics-visible property.


```pony
fun box set_mnemonics_visible(
  setting_pony: Bool val)
: None val
```
#### Parameters

*   setting_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_modal
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L1325)</span>


Sets a window modal or non-modal. Modal windows prevent interaction
with other windows in the same application. To keep modal dialogs
on top of main application windows, use
gtk_window_set_transient_for() to make the dialog transient for the
parent; most [window managers][gtk-X11-arch]
will then disallow lowering the dialog below the parent.


```pony
fun box set_modal(
  modal_pony: Bool val)
: None val
```
#### Parameters

*   modal_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_opacity
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L1336)</span>


    Request the windowing system to make @window partially transparent,
with opacity 0 being fully transparent and 1 fully opaque. (Values
of the opacity parameter are clamped to the [0,1] range.) On X11
this has any effect only on X screens with a compositing manager
running. See gtk_widget_is_composited(). On Windows it should work
always.

Note that setting a window’s opacity after the window has been
shown causes it to flicker once on Windows.

    {:doh, %{argctype: "gdouble", argname: "opacity", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_opacity()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_position
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L1352)</span>


    Sets a position constraint for this window. If the old or new
constraint is %GTK_WIN_POS_CENTER_ALWAYS, this will also cause
the window to be repositioned to satisfy the new constraint.

    {:doh, %{argctype: "GtkWindowPosition", argname: "position", argtype: "WindowPosition", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_position()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### set_resizable
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L1362)</span>


Sets whether the user can resize a window. Windows are user resizable
by default.


```pony
fun box set_resizable(
  resizable_pony: Bool val)
: None val
```
#### Parameters

*   resizable_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_role
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L1369)</span>


    This function is only useful on X11, not with other GTK+ targets.

In combination with the window title, the window role allows a
[window manager][gtk-X11-arch] to identify "the
same" window when an application is restarted. So for example you
might set the “toolbox” role on your app’s toolbox window, so that
when the user restarts their session, the window manager can put
the toolbox back in the same place.

If a window already has a unique title, you don’t need to set the
role, since the WM can use the title to identify the window when
restoring the session.

    {:doh, %{argctype: "const gchar*", argname: "role", argtype: "utf8", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_role()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_screen
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L1388)</span>


    Sets the #GdkScreen where the @window is displayed; if
the window is already mapped, it will be unmapped, and
then remapped on the new screen.

    {:doh, %{argctype: "GdkScreen*", argname: "screen", argtype: "Gdk.Screen", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_screen()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### set_skip_pager_hint
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L1398)</span>


Windows may set a hint asking the desktop environment not to display
the window in the pager. This function sets this hint.
(A "pager" is any desktop navigation tool such as a workspace
switcher that displays a thumbnail representation of the windows
on the screen.)


```pony
fun box set_skip_pager_hint(
  setting_pony: Bool val)
: None val
```
#### Parameters

*   setting_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_skip_taskbar_hint
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L1408)</span>


Windows may set a hint asking the desktop environment not to display
the window in the task bar. This function sets this hint.


```pony
fun box set_skip_taskbar_hint(
  setting_pony: Bool val)
: None val
```
#### Parameters

*   setting_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_startup_id
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L1415)</span>


    Startup notification identifiers are used by desktop environment to
track application startup, to provide user feedback and other
features. This function changes the corresponding property on the
underlying GdkWindow. Normally, startup identifier is managed
automatically and you should only use this function in special cases
like transferring focus from other processes. You should use this
function before calling gtk_window_present() or any equivalent
function generating a window map event.

This function is only useful on X11, not with other GTK+ targets.

    {:doh, %{argctype: "const gchar*", argname: "startup_id", argtype: "utf8", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_startup_id()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_title
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L1432)</span>


    Sets the title of the #GtkWindow. The title of a window will be
displayed in its title bar; on the X Window System, the title bar
is rendered by the [window manager][gtk-X11-arch],
so exactly how the title appears to users may vary
according to a user’s exact configuration. The title should help a
user distinguish this window from other windows they may have
open. A good title might include the application name and current
document filename, for example.

    {:doh, %{argctype: "const gchar*", argname: "title", argtype: "utf8", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_title()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### set_titlebar
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L1447)</span>


Sets a custom titlebar for @window.

A typical widget used here is #GtkHeaderBar, as it provides various features
expected of a titlebar while allowing the addition of child widgets to it.

If you set a custom titlebar, GTK+ will do its best to convince
the window manager not to put its own titlebar on the window.
Depending on the system, this function may not work for a window
that is already visible, so you set the titlebar before calling
gtk_widget_show().


```pony
fun box set_titlebar(
  titlebar_pony: GtkWidget val)
: None val
```
#### Parameters

*   titlebar_pony: [GtkWidget](gtk3-GtkWidget.md) val

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_transient_for
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L1462)</span>


    Dialog windows should be set transient for the main application
window they were spawned from. This allows
[window managers][gtk-X11-arch] to e.g. keep the
dialog on top of the main window, or center the dialog over the
main window. gtk_dialog_new_with_buttons() and other convenience
functions in GTK+ will sometimes call
gtk_window_set_transient_for() on your behalf.

Passing %NULL for @parent unsets the current transient window.

On Wayland, this function can also be used to attach a new
#GTK_WINDOW_POPUP to a #GTK_WINDOW_TOPLEVEL parent already mapped
on screen so that the #GTK_WINDOW_POPUP will be created as a
subsurface-based window #GDK_WINDOW_SUBSURFACE which can be
positioned at will relatively to the #GTK_WINDOW_TOPLEVEL surface.

On Windows, this function puts the child window on top of the parent,
much as the window manager would have done on X.

    {:doh, %{argctype: "GtkWindow*", argname: "parent", argtype: "Window", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_transient_for()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_type_hint
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L1487)</span>


    By setting the type hint for the window, you allow the window
manager to decorate and handle the window in a way which is
suitable to the function of the window in your application.

This function should be called before the window becomes visible.

gtk_dialog_new_with_buttons() and other convenience functions in GTK+
will sometimes call gtk_window_set_type_hint() on your behalf.

    {:doh, %{argctype: "GdkWindowTypeHint", argname: "hint", argtype: "Gdk.WindowTypeHint", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_type_hint()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### set_urgency_hint
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L1502)</span>


Windows may set a hint asking the desktop environment to draw
the users attention to the window. This function sets this hint.


```pony
fun box set_urgency_hint(
  setting_pony: Bool val)
: None val
```
#### Parameters

*   setting_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_wmclass
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L1509)</span>


    Don’t use this function. It sets the X Window System “class” and
“name” hints for a window.  According to the ICCCM, you should
always set these to the same value for all windows in an
application, and GTK+ sets them to that value by default, so calling
this function is sort of pointless. However, you may want to call
gtk_window_set_role() on each window in your application, for the
benefit of the session manager. Setting the role allows the window
manager to restore window positions when loading a saved session.

    {:doh, %{argctype: "const gchar*", argname: "wmclass_name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "wmclass_class", argtype: "utf8", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_wmclass()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### stick
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L1525)</span>


Asks to stick @window, which means that it will appear on all user
desktops. Note that you shouldn’t assume the window is definitely
stuck afterward, because other entities (e.g. the user or
[window manager][gtk-X11-arch] could unstick it
again, and some window managers do not support sticking
windows. But normally the window will end up stuck. Just don't
write code that crashes if not.

It’s permitted to call this function before showing a window.

You can track stickiness via the “window-state-event” signal
on #GtkWidget.


```pony
fun box stick()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### unfullscreen
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L1542)</span>


Asks to toggle off the fullscreen state for @window. Note that you
shouldn’t assume the window is definitely not full screen
afterward, because other entities (e.g. the user or
[window manager][gtk-X11-arch]) could fullscreen it
again, and not all window managers honor requests to unfullscreen
windows. But normally the window will end up restored to its normal
state. Just don’t write code that crashes if not.

You can track the fullscreen state via the “window-state-event” signal
on #GtkWidget.


```pony
fun box unfullscreen()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### unmaximize
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L1557)</span>


Asks to unmaximize @window. Note that you shouldn’t assume the
window is definitely unmaximized afterward, because other entities
(e.g. the user or [window manager][gtk-X11-arch])
could maximize it again, and not all window
managers honor requests to unmaximize. But normally the window will
end up unmaximized. Just don’t write code that crashes if not.

You can track maximization via the “window-state-event” signal
on #GtkWidget.


```pony
fun box unmaximize()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### unstick
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L1571)</span>


Asks to unstick @window, which means that it will appear on only
one of the user’s desktops. Note that you shouldn’t assume the
window is definitely unstuck afterward, because other entities
(e.g. the user or [window manager][gtk-X11-arch]) could
stick it again. But normally the window will
end up stuck. Just don’t write code that crashes if not.

You can track stickiness via the “window-state-event” signal
on #GtkWidget.


```pony
fun box unstick()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### add



```pony
fun box add(
  childwidget: GtkWidget val)
: None val
```
#### Parameters

*   childwidget: [GtkWidget](gtk3-GtkWidget.md) val

#### Returns

* [None](builtin-None.md) val

---

### show_all



```pony
fun box show_all()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### destroy



```pony
fun box destroy()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### signal_connect\[V: [Any](builtin-Any.md) #share\]



```pony
fun box signal_connect[V: Any #share](
  detailed_signal: String val,
  c_handler: @{(GObjectREF, V)}[V] val,
  data: V)
: U64 val
```
#### Parameters

*   detailed_signal: [String](builtin-String.md) val
*   c_handler: @{(GObjectREF, V)}[V] val
*   data: V

#### Returns

* [U64](builtin-U64.md) val

---

