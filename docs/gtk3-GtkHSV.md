# GtkHSV
<span class="source-link">[[Source]](src/gtk3/GtkHSV.md#L6)</span>

#GtkHSV is the “color wheel” part of a complete color selector widget.
It allows to select a color by determining its HSV components in an
intuitive way. Moving the selection around the outer ring changes the hue,
and moving the selection point inside the inner triangle changes value and
saturation.

#GtkHSV has been deprecated together with #GtkColorSelection, where
it was used.


```pony
class val GtkHSV is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkHSV.md#L21)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkHSV val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkHSV](gtk3-GtkHSV.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkHSV.md#L24)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkHSV val^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkHSV](gtk3-GtkHSV.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkHSV.md#L27)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkHSV val^
```

#### Returns

* [GtkHSV](gtk3-GtkHSV.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkHSV.md#L31)</span>


```pony
new val create()
: GtkHSV val^
```

#### Returns

* [GtkHSV](gtk3-GtkHSV.md) val^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkHSV.md#L17)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkHSV.md#L19)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_color
<span class="source-link">[[Source]](src/gtk3/GtkHSV.md#L35)</span>


    Queries the current color in an HSV color selector.
Returned values will be in the [0.0, 1.0] range.

    {:doh, %{argctype: "gdouble*", argname: "h", argtype: "gdouble", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gdouble*", argname: "s", argtype: "gdouble", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gdouble*", argname: "v", argtype: "gdouble", paramtype: :param, txo: "full"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_color()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_metrics
<span class="source-link">[[Source]](src/gtk3/GtkHSV.md#L46)</span>


    Queries the size and ring width of an HSV color selector.

    {:doh, %{argctype: "gint*", argname: "size", argtype: "gint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gint*", argname: "ring_width", argtype: "gint", paramtype: :param, txo: "full"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_metrics()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### is_adjusting
<span class="source-link">[[Source]](src/gtk3/GtkHSV.md#L55)</span>


An HSV color selector can be said to be adjusting if multiple rapid
changes are being made to its value, for example, when the user is
adjusting the value with the mouse. This function queries whether
the HSV color selector is being adjusted or not.


```pony
fun box is_adjusting()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_color
<span class="source-link">[[Source]](src/gtk3/GtkHSV.md#L64)</span>


    Sets the current color in an HSV color selector.
Color component values must be in the [0.0, 1.0] range.

    {:doh, %{argctype: "double", argname: "h", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "double", argname: "s", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "double", argname: "v", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_color()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### set_metrics
<span class="source-link">[[Source]](src/gtk3/GtkHSV.md#L75)</span>


Sets the size and ring width of an HSV color selector.


```pony
fun box set_metrics(
  size_pony: I32 val,
  ring_width_pony: I32 val)
: None val
```
#### Parameters

*   size_pony: [I32](builtin-I32.md) val
*   ring_width_pony: [I32](builtin-I32.md) val

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

