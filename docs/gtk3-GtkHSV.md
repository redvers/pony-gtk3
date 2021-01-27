# GtkHSV
<span class="source-link">[[Source]](src/gtk3/GtkHSV.md#L6)</span>
```pony
class ref GtkHSV is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkHSV.md#L10)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkHSV ref^
```

#### Returns

* [GtkHSV](gtk3-GtkHSV.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkHSV.md#L13)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkHSV ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkHSV](gtk3-GtkHSV.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkHSV.md#L17)</span>


```pony
new ref create()
: GtkHSV ref^
```

#### Returns

* [GtkHSV](gtk3-GtkHSV.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkHSV.md#L7)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkHSV.md#L9)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### is_adjusting
<span class="source-link">[[Source]](src/gtk3/GtkHSV.md#L32)</span>


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

### set_metrics
<span class="source-link">[[Source]](src/gtk3/GtkHSV.md#L47)</span>


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

