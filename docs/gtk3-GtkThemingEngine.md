# GtkThemingEngine
<span class="source-link">[[Source]](src/gtk3/GtkThemingEngine.md#L6)</span>

#GtkThemingEngine was the object used for rendering themed content
in GTK+ widgets. It used to allow overriding GTK+'s default
implementation of rendering functions by allowing engines to be
loaded as modules.

#GtkThemingEngine has been deprecated in GTK+ 3.14 and will be
ignored for rendering. The advancements in CSS theming are good
enough to allow themers to achieve their goals without the need
to modify source code.


```pony
class val GtkThemingEngine is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkThemingEngine.md#L22)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkThemingEngine val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkThemingEngine](gtk3-GtkThemingEngine.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkThemingEngine.md#L25)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkThemingEngine val^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkThemingEngine](gtk3-GtkThemingEngine.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkThemingEngine.md#L28)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkThemingEngine val^
```

#### Returns

* [GtkThemingEngine](gtk3-GtkThemingEngine.md) val^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkThemingEngine.md#L18)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkThemingEngine.md#L20)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### pony_NOT_IMPLEMENTED_YET_get
<span class="source-link">[[Source]](src/gtk3/GtkThemingEngine.md#L34)</span>


    Retrieves several style property values that apply to the currently
rendered element.

    {:doh, %{argctype: "GtkStateFlags", argname: "state", argtype: "StateFlags", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "", argname: "...", argtype: "", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_background_color
<span class="source-link">[[Source]](src/gtk3/GtkThemingEngine.md#L44)</span>


    Gets the background color for a given state.

    {:doh, %{argctype: "GtkStateFlags", argname: "state", argtype: "StateFlags", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkRGBA*", argname: "color", argtype: "Gdk.RGBA", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_background_color()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_border
<span class="source-link">[[Source]](src/gtk3/GtkThemingEngine.md#L53)</span>


    Gets the border for a given state as a #GtkBorder.

    {:doh, %{argctype: "GtkStateFlags", argname: "state", argtype: "StateFlags", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkBorder*", argname: "border", argtype: "Border", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_border()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_border_color
<span class="source-link">[[Source]](src/gtk3/GtkThemingEngine.md#L62)</span>


    Gets the border color for a given state.

    {:doh, %{argctype: "GtkStateFlags", argname: "state", argtype: "StateFlags", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkRGBA*", argname: "color", argtype: "Gdk.RGBA", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_border_color()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_color
<span class="source-link">[[Source]](src/gtk3/GtkThemingEngine.md#L71)</span>


    Gets the foreground color for a given state.

    {:doh, %{argctype: "GtkStateFlags", argname: "state", argtype: "StateFlags", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkRGBA*", argname: "color", argtype: "Gdk.RGBA", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_color()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_direction
<span class="source-link">[[Source]](src/gtk3/GtkThemingEngine.md#L80)</span>


    Returns the widget direction used for rendering.

    {:argctype, "GtkTextDirection"}
{:argname, "rv"}
{:argtype, "TextDirection"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_direction()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_font
<span class="source-link">[[Source]](src/gtk3/GtkThemingEngine.md#L92)</span>


    Returns the font description for a given state.

    {:argctype, "const PangoFontDescription*"}
{:argname, "rv"}
{:argtype, "Pango.FontDescription"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_font()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_junction_sides
<span class="source-link">[[Source]](src/gtk3/GtkThemingEngine.md#L104)</span>


    Returns the widget direction used for rendering.

    {:argctype, "GtkJunctionSides"}
{:argname, "rv"}
{:argtype, "JunctionSides"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_junction_sides()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_margin
<span class="source-link">[[Source]](src/gtk3/GtkThemingEngine.md#L116)</span>


    Gets the margin for a given state as a #GtkBorder.

    {:doh, %{argctype: "GtkStateFlags", argname: "state", argtype: "StateFlags", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkBorder*", argname: "margin", argtype: "Border", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_margin()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_padding
<span class="source-link">[[Source]](src/gtk3/GtkThemingEngine.md#L125)</span>


    Gets the padding for a given state as a #GtkBorder.

    {:doh, %{argctype: "GtkStateFlags", argname: "state", argtype: "StateFlags", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkBorder*", argname: "padding", argtype: "Border", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_padding()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_path
<span class="source-link">[[Source]](src/gtk3/GtkThemingEngine.md#L134)</span>


    Returns the widget path used for style matching.

    {:argctype, "const GtkWidgetPath*"}
{:argname, "rv"}
{:argtype, "WidgetPath"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_path()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_property
<span class="source-link">[[Source]](src/gtk3/GtkThemingEngine.md#L146)</span>


    Gets a property value as retrieved from the style settings that apply
to the currently rendered element.

    {:doh, %{argctype: "const gchar*", argname: "property", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkStateFlags", argname: "state", argtype: "StateFlags", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GValue*", argname: "value", argtype: "GObject.Value", paramtype: :param, txo: "full"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_property()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_screen
<span class="source-link">[[Source]](src/gtk3/GtkThemingEngine.md#L157)</span>


    Returns the #GdkScreen to which @engine currently rendering to.

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

### pony_NOT_IMPLEMENTED_YET_get_state
<span class="source-link">[[Source]](src/gtk3/GtkThemingEngine.md#L169)</span>


    returns the state used when rendering.

    {:argctype, "GtkStateFlags"}
{:argname, "rv"}
{:argtype, "StateFlags"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_state()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_style
<span class="source-link">[[Source]](src/gtk3/GtkThemingEngine.md#L181)</span>


    Retrieves several widget style properties from @engine according
to the currently rendered content’s style.

    {:doh, %{argctype: "", argname: "...", argtype: "", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_style()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_style_property
<span class="source-link">[[Source]](src/gtk3/GtkThemingEngine.md#L190)</span>


    Gets the value for a widget style property.

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

### pony_NOT_IMPLEMENTED_YET_get_style_valist
<span class="source-link">[[Source]](src/gtk3/GtkThemingEngine.md#L199)</span>


    Retrieves several widget style properties from @engine according to the
currently rendered content’s style.

    {:doh, %{argctype: "va_list", argname: "args", argtype: "va_list", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_style_valist()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_valist
<span class="source-link">[[Source]](src/gtk3/GtkThemingEngine.md#L208)</span>


    Retrieves several style property values that apply to the currently
rendered element.

    {:doh, %{argctype: "GtkStateFlags", argname: "state", argtype: "StateFlags", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "va_list", argname: "args", argtype: "va_list", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_valist()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_has_class
<span class="source-link">[[Source]](src/gtk3/GtkThemingEngine.md#L218)</span>


    Returns %TRUE if the currently rendered contents have
defined the given class name.

    {:doh, %{argctype: "const gchar*", argname: "style_class", argtype: "utf8", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_has_class()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_has_region
<span class="source-link">[[Source]](src/gtk3/GtkThemingEngine.md#L227)</span>


    Returns %TRUE if the currently rendered contents have the
region defined. If @flags_return is not %NULL, it is set
to the flags affecting the region.

    {:doh, %{argctype: "const gchar*", argname: "style_region", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkRegionFlags*", argname: "flags", argtype: "RegionFlags", paramtype: :param, txo: "full"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_has_region()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_lookup_color
<span class="source-link">[[Source]](src/gtk3/GtkThemingEngine.md#L238)</span>


    Looks up and resolves a color name in the current style’s color map.

    {:doh, %{argctype: "const gchar*", argname: "color_name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkRGBA*", argname: "color", argtype: "Gdk.RGBA", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_lookup_color()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_state_is_running
<span class="source-link">[[Source]](src/gtk3/GtkThemingEngine.md#L247)</span>


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


```pony
fun box pony_NOT_IMPLEMENTED_YET_state_is_running()
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

