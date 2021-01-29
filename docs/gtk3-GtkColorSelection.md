# GtkColorSelection
<span class="source-link">[[Source]](src/gtk3/GtkColorSelection.md#L6)</span>

No documentation provided


```pony
class val GtkColorSelection is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkColorSelection.md#L14)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkColorSelection val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkColorSelection](gtk3-GtkColorSelection.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkColorSelection.md#L17)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkColorSelection val^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkColorSelection](gtk3-GtkColorSelection.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkColorSelection.md#L20)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkColorSelection val^
```

#### Returns

* [GtkColorSelection](gtk3-GtkColorSelection.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkColorSelection.md#L24)</span>


```pony
new val create()
: GtkColorSelection val^
```

#### Returns

* [GtkColorSelection](gtk3-GtkColorSelection.md) val^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkColorSelection.md#L10)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkColorSelection.md#L12)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_current_alpha
<span class="source-link">[[Source]](src/gtk3/GtkColorSelection.md#L28)</span>


    Returns the current alpha value.

    {:argctype, "guint16"}
{:argname, "rv"}
{:argtype, "guint16"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_current_alpha()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_current_color
<span class="source-link">[[Source]](src/gtk3/GtkColorSelection.md#L40)</span>


    Sets @color to be the current color in the GtkColorSelection widget.

    {:doh, %{argctype: "GdkColor*", argname: "color", argtype: "Gdk.Color", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_current_color()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_current_rgba
<span class="source-link">[[Source]](src/gtk3/GtkColorSelection.md#L48)</span>


    Sets @rgba to be the current color in the GtkColorSelection widget.

    {:doh, %{argctype: "GdkRGBA*", argname: "rgba", argtype: "Gdk.RGBA", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_current_rgba()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### get_has_opacity_control
<span class="source-link">[[Source]](src/gtk3/GtkColorSelection.md#L56)</span>


Determines whether the colorsel has an opacity control.


```pony
fun box get_has_opacity_control()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_has_palette
<span class="source-link">[[Source]](src/gtk3/GtkColorSelection.md#L62)</span>


Determines whether the color selector has a color palette.


```pony
fun box get_has_palette()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_previous_alpha
<span class="source-link">[[Source]](src/gtk3/GtkColorSelection.md#L68)</span>


    Returns the previous alpha value.

    {:argctype, "guint16"}
{:argname, "rv"}
{:argtype, "guint16"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_previous_alpha()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_previous_color
<span class="source-link">[[Source]](src/gtk3/GtkColorSelection.md#L80)</span>


    Fills @color in with the original color value.

    {:doh, %{argctype: "GdkColor*", argname: "color", argtype: "Gdk.Color", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_previous_color()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_previous_rgba
<span class="source-link">[[Source]](src/gtk3/GtkColorSelection.md#L88)</span>


    Fills @rgba in with the original color value.

    {:doh, %{argctype: "GdkRGBA*", argname: "rgba", argtype: "Gdk.RGBA", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_previous_rgba()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### is_adjusting
<span class="source-link">[[Source]](src/gtk3/GtkColorSelection.md#L96)</span>


Gets the current state of the @colorsel.


```pony
fun box is_adjusting()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_current_alpha
<span class="source-link">[[Source]](src/gtk3/GtkColorSelection.md#L102)</span>


    Sets the current opacity to be @alpha.

The first time this is called, it will also set
the original opacity to be @alpha too.

    {:doh, %{argctype: "guint16", argname: "alpha", argtype: "guint16", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_current_alpha()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_current_color
<span class="source-link">[[Source]](src/gtk3/GtkColorSelection.md#L113)</span>


    Sets the current color to be @color.

The first time this is called, it will also set
the original color to be @color too.

    {:doh, %{argctype: "const GdkColor*", argname: "color", argtype: "Gdk.Color", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_current_color()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_current_rgba
<span class="source-link">[[Source]](src/gtk3/GtkColorSelection.md#L124)</span>


    Sets the current color to be @rgba.

The first time this is called, it will also set
the original color to be @rgba too.

    {:doh, %{argctype: "const GdkRGBA*", argname: "rgba", argtype: "Gdk.RGBA", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_current_rgba()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### set_has_opacity_control
<span class="source-link">[[Source]](src/gtk3/GtkColorSelection.md#L135)</span>


Sets the @colorsel to use or not use opacity.


```pony
fun box set_has_opacity_control(
  has_opacity_pony: Bool val)
: None val
```
#### Parameters

*   has_opacity_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_has_palette
<span class="source-link">[[Source]](src/gtk3/GtkColorSelection.md#L141)</span>


Shows and hides the palette based upon the value of @has_palette.


```pony
fun box set_has_palette(
  has_palette_pony: Bool val)
: None val
```
#### Parameters

*   has_palette_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_previous_alpha
<span class="source-link">[[Source]](src/gtk3/GtkColorSelection.md#L147)</span>


    Sets the “previous” alpha to be @alpha.

This function should be called with some hesitations,
as it might seem confusing to have that alpha change.

    {:doh, %{argctype: "guint16", argname: "alpha", argtype: "guint16", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_previous_alpha()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_previous_color
<span class="source-link">[[Source]](src/gtk3/GtkColorSelection.md#L158)</span>


    Sets the “previous” color to be @color.

This function should be called with some hesitations,
as it might seem confusing to have that color change.
Calling gtk_color_selection_set_current_color() will also
set this color the first time it is called.

    {:doh, %{argctype: "const GdkColor*", argname: "color", argtype: "Gdk.Color", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_previous_color()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_previous_rgba
<span class="source-link">[[Source]](src/gtk3/GtkColorSelection.md#L171)</span>


    Sets the “previous” color to be @rgba.

This function should be called with some hesitations,
as it might seem confusing to have that color change.
Calling gtk_color_selection_set_current_rgba() will also
set this color the first time it is called.

    {:doh, %{argctype: "const GdkRGBA*", argname: "rgba", argtype: "Gdk.RGBA", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_previous_rgba()
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

