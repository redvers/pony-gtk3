# GtkSpinButton
<span class="source-link">[[Source]](src/gtk3/GtkSpinButton.md#L6)</span>
```pony
class ref GtkSpinButton is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkSpinButton.md#L10)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkSpinButton ref^
```

#### Returns

* [GtkSpinButton](gtk3-GtkSpinButton.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkSpinButton.md#L13)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkSpinButton ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkSpinButton](gtk3-GtkSpinButton.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkSpinButton.md#L17)</span>


```pony
new ref create(
  adjustment_pony: GtkAdjustment ref,
  climb_rate_pony: F64 val,
  digits_pony: U32 val)
: GtkSpinButton ref^
```
#### Parameters

*   adjustment_pony: [GtkAdjustment](gtk3-GtkAdjustment.md) ref
*   climb_rate_pony: [F64](builtin-F64.md) val
*   digits_pony: [U32](builtin-U32.md) val

#### Returns

* [GtkSpinButton](gtk3-GtkSpinButton.md) ref^

---

### new_with_range
<span class="source-link">[[Source]](src/gtk3/GtkSpinButton.md#L20)</span>


```pony
new ref new_with_range(
  min_pony: F64 val,
  max_pony: F64 val,
  step_pony: F64 val)
: GtkSpinButton ref^
```
#### Parameters

*   min_pony: [F64](builtin-F64.md) val
*   max_pony: [F64](builtin-F64.md) val
*   step_pony: [F64](builtin-F64.md) val

#### Returns

* [GtkSpinButton](gtk3-GtkSpinButton.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkSpinButton.md#L7)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkSpinButton.md#L9)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### get_digits
<span class="source-link">[[Source]](src/gtk3/GtkSpinButton.md#L36)</span>


```pony
fun box get_digits()
: U32 val
```

#### Returns

* [U32](builtin-U32.md) val

---

### get_numeric
<span class="source-link">[[Source]](src/gtk3/GtkSpinButton.md#L44)</span>


```pony
fun box get_numeric()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_snap_to_ticks
<span class="source-link">[[Source]](src/gtk3/GtkSpinButton.md#L52)</span>


```pony
fun box get_snap_to_ticks()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_value_as_int
<span class="source-link">[[Source]](src/gtk3/GtkSpinButton.md#L69)</span>


```pony
fun box get_value_as_int()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### get_wrap
<span class="source-link">[[Source]](src/gtk3/GtkSpinButton.md#L72)</span>


```pony
fun box get_wrap()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### set_digits
<span class="source-link">[[Source]](src/gtk3/GtkSpinButton.md#L79)</span>


```pony
fun box set_digits(
  digits_pony: U32 val)
: None val
```
#### Parameters

*   digits_pony: [U32](builtin-U32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_numeric
<span class="source-link">[[Source]](src/gtk3/GtkSpinButton.md#L87)</span>


```pony
fun box set_numeric(
  numeric_pony: Bool val)
: None val
```
#### Parameters

*   numeric_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_snap_to_ticks
<span class="source-link">[[Source]](src/gtk3/GtkSpinButton.md#L95)</span>


```pony
fun box set_snap_to_ticks(
  snap_to_ticks_pony: Bool val)
: None val
```
#### Parameters

*   snap_to_ticks_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_wrap
<span class="source-link">[[Source]](src/gtk3/GtkSpinButton.md#L106)</span>


```pony
fun box set_wrap(
  wrap_pony: Bool val)
: None val
```
#### Parameters

*   wrap_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### update
<span class="source-link">[[Source]](src/gtk3/GtkSpinButton.md#L114)</span>


```pony
fun box update()
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
<span class="source-link">[[Source]](src/gtk3/GtkWidget.md#L10)</span>


```pony
fun box destroy()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### signal_connect\[V: [Any](builtin-Any.md) #share\]
<span class="source-link">[[Source]](src/gtk3/GtkWidget.md#L13)</span>


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

