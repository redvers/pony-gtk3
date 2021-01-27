# GtkCellRenderer
<span class="source-link">[[Source]](src/gtk3/GtkCellRenderer.md#L6)</span>
```pony
class ref GtkCellRenderer is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkCellRenderer.md#L10)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkCellRenderer ref^
```

#### Returns

* [GtkCellRenderer](gtk3-GtkCellRenderer.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkCellRenderer.md#L13)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkCellRenderer ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkCellRenderer](gtk3-GtkCellRenderer.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkCellRenderer.md#L7)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkCellRenderer.md#L9)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### get_sensitive
<span class="source-link">[[Source]](src/gtk3/GtkCellRenderer.md#L87)</span>


```pony
fun box get_sensitive()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_visible
<span class="source-link">[[Source]](src/gtk3/GtkCellRenderer.md#L106)</span>


```pony
fun box get_visible()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### is_activatable
<span class="source-link">[[Source]](src/gtk3/GtkCellRenderer.md#L109)</span>


```pony
fun box is_activatable()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### set_fixed_size
<span class="source-link">[[Source]](src/gtk3/GtkCellRenderer.md#L125)</span>


```pony
fun box set_fixed_size(
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

### set_padding
<span class="source-link">[[Source]](src/gtk3/GtkCellRenderer.md#L128)</span>


```pony
fun box set_padding(
  xpad_pony: I32 val,
  ypad_pony: I32 val)
: None val
```
#### Parameters

*   xpad_pony: [I32](builtin-I32.md) val
*   ypad_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_sensitive
<span class="source-link">[[Source]](src/gtk3/GtkCellRenderer.md#L131)</span>


```pony
fun box set_sensitive(
  sensitive_pony: Bool val)
: None val
```
#### Parameters

*   sensitive_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_visible
<span class="source-link">[[Source]](src/gtk3/GtkCellRenderer.md#L134)</span>


```pony
fun box set_visible(
  visible_pony: Bool val)
: None val
```
#### Parameters

*   visible_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### stop_editing
<span class="source-link">[[Source]](src/gtk3/GtkCellRenderer.md#L144)</span>


```pony
fun box stop_editing(
  canceled_pony: Bool val)
: None val
```
#### Parameters

*   canceled_pony: [Bool](builtin-Bool.md) val

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

