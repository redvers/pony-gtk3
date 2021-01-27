# GtkHScale
<span class="source-link">[[Source]](src/gtk3/GtkHScale.md#L6)</span>

The #GtkHScale widget is used to allow the user to select a value using
a horizontal slider. To create one, use gtk_hscale_new_with_range().

The position to show the current value, and the number of decimal places
shown can be set using the parent #GtkScale class’s functions.

GtkHScale has been deprecated, use #GtkScale instead.


```pony
class ref GtkHScale is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkHScale.md#L19)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkHScale ref^
```

#### Returns

* [GtkHScale](gtk3-GtkHScale.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkHScale.md#L22)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkHScale ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkHScale](gtk3-GtkHScale.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkHScale.md#L26)</span>


```pony
new ref create(
  adjustment_pony: GtkAdjustment ref)
: GtkHScale ref^
```
#### Parameters

*   adjustment_pony: [GtkAdjustment](gtk3-GtkAdjustment.md) ref

#### Returns

* [GtkHScale](gtk3-GtkHScale.md) ref^

---

### new_with_range
<span class="source-link">[[Source]](src/gtk3/GtkHScale.md#L29)</span>


```pony
new ref new_with_range(
  min_pony: F64 val,
  max_pony: F64 val,
  step_pony: F64 val)
: GtkHScale ref^
```
#### Parameters

*   min_pony: [F64](builtin-F64.md) val
*   max_pony: [F64](builtin-F64.md) val
*   step_pony: [F64](builtin-F64.md) val

#### Returns

* [GtkHScale](gtk3-GtkHScale.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkHScale.md#L16)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkHScale.md#L18)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

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

