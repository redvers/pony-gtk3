# GtkStyle
<span class="source-link">[[Source]](src/gtk3/GtkStyle.md#L6)</span>

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


```pony
class val GtkStyle is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkStyle.md#L29)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkStyle val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkStyle](gtk3-GtkStyle.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkStyle.md#L32)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkStyle val^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkStyle](gtk3-GtkStyle.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkStyle.md#L35)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkStyle val^
```

#### Returns

* [GtkStyle](gtk3-GtkStyle.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkStyle.md#L39)</span>


```pony
new val create()
: GtkStyle val^
```

#### Returns

* [GtkStyle](gtk3-GtkStyle.md) val^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkStyle.md#L25)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkStyle.md#L27)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### pony_NOT_IMPLEMENTED_YET_apply_default_background
<span class="source-link">[[Source]](src/gtk3/GtkStyle.md#L43)</span>


    No provided documentation

    {:doh, %{argctype: "cairo_t*", argname: "cr", argtype: "cairo.Context", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkWindow*", argname: "window", argtype: "Gdk.Window", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkStateType", argname: "state_type", argtype: "StateType", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_apply_default_background()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_attach
<span class="source-link">[[Source]](src/gtk3/GtkStyle.md#L53)</span>


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
{:txo, "notpresent"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_attach()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_copy
<span class="source-link">[[Source]](src/gtk3/GtkStyle.md#L73)</span>


    Creates a copy of the passed in #GtkStyle object.

    {:argctype, "GtkStyle*"}
{:argname, "rv"}
{:argtype, "Style"}
{:paramtype, :param}
{:txo, "full"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_copy()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### detach
<span class="source-link">[[Source]](src/gtk3/GtkStyle.md#L85)</span>


Detaches a style from a window. If the style is not attached
to any windows anymore, it is unrealized. See gtk_style_attach().


```pony
fun box detach()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get
<span class="source-link">[[Source]](src/gtk3/GtkStyle.md#L92)</span>


    Gets the values of a multiple style properties for @widget_type
from @style.

    {:doh, %{argctype: "GType", argname: "widget_type", argtype: "GType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "first_property_name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "", argname: "...", argtype: "", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_style_property
<span class="source-link">[[Source]](src/gtk3/GtkStyle.md#L103)</span>


    Queries the value of a style property corresponding to a
widget class is in the given style.

    {:doh, %{argctype: "GType", argname: "widget_type", argtype: "GType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "property_name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GValue*", argname: "value", argtype: "GObject.Value", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_style_property()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_valist
<span class="source-link">[[Source]](src/gtk3/GtkStyle.md#L114)</span>


    Non-vararg variant of gtk_style_get().
Used primarily by language bindings.

    {:doh, %{argctype: "GType", argname: "widget_type", argtype: "GType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "first_property_name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "va_list", argname: "var_args", argtype: "va_list", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_valist()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### has_context
<span class="source-link">[[Source]](src/gtk3/GtkStyle.md#L125)</span>


Returns whether @style has an associated #GtkStyleContext.


```pony
fun box has_context()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### pony_NOT_IMPLEMENTED_YET_lookup_color
<span class="source-link">[[Source]](src/gtk3/GtkStyle.md#L131)</span>


    Looks up @color_name in the style’s logical color mappings,
filling in @color and returning %TRUE if found, otherwise
returning %FALSE. Do not cache the found mapping, because
it depends on the #GtkStyle and might change when a theme
switch occurs.

    {:doh, %{argctype: "const gchar*", argname: "color_name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkColor*", argname: "color", argtype: "Gdk.Color", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_lookup_color()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_lookup_icon_set
<span class="source-link">[[Source]](src/gtk3/GtkStyle.md#L144)</span>


    Looks up @stock_id in the icon factories associated with @style
and the default icon factory, returning an icon set if found,
otherwise %NULL.

    {:argctype, "GtkIconSet*"}
{:argname, "rv"}
{:argtype, "IconSet"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_lookup_icon_set()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_render_icon
<span class="source-link">[[Source]](src/gtk3/GtkStyle.md#L158)</span>


    Renders the icon specified by @source at the given @size
according to the given parameters and returns the result in a
pixbuf.

    {:argctype, "GdkPixbuf*"}
{:argname, "rv"}
{:argtype, "GdkPixbuf.Pixbuf"}
{:paramtype, :param}
{:txo, "full"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_render_icon()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_background
<span class="source-link">[[Source]](src/gtk3/GtkStyle.md#L172)</span>


    Sets the background of @window to the background color or pixmap
specified by @style for the given state.

    {:doh, %{argctype: "GdkWindow*", argname: "window", argtype: "Gdk.Window", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkStateType", argname: "state_type", argtype: "StateType", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_background()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### show_all
<span class="source-link">[[Source]](src/gtk3/GtkWidget.md#L4)</span>


```pony
fun box show_all()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### destroy
<span class="source-link">[[Source]](src/gtk3/GtkWidget.md#L7)</span>


```pony
fun box destroy()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### signal_connect\[V: [Any](builtin-Any.md) #share\]
<span class="source-link">[[Source]](src/gtk3/GtkWidget.md#L10)</span>


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

