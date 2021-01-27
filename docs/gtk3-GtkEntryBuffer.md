# GtkEntryBuffer
<span class="source-link">[[Source]](src/gtk3/GtkEntryBuffer.md#L6)</span>
```pony
class ref GtkEntryBuffer is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkEntryBuffer.md#L10)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkEntryBuffer ref^
```

#### Returns

* [GtkEntryBuffer](gtk3-GtkEntryBuffer.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkEntryBuffer.md#L13)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkEntryBuffer ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkEntryBuffer](gtk3-GtkEntryBuffer.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkEntryBuffer.md#L17)</span>


```pony
new ref create(
  initial_chars_pony: String val,
  n_initial_chars_pony: I32 val)
: GtkEntryBuffer ref^
```
#### Parameters

*   initial_chars_pony: [String](builtin-String.md) val
*   n_initial_chars_pony: [I32](builtin-I32.md) val

#### Returns

* [GtkEntryBuffer](gtk3-GtkEntryBuffer.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkEntryBuffer.md#L7)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkEntryBuffer.md#L9)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### delete_text
<span class="source-link">[[Source]](src/gtk3/GtkEntryBuffer.md#L21)</span>


```pony
fun box delete_text(
  position_pony: U32 val,
  n_chars_pony: I32 val)
: U32 val
```
#### Parameters

*   position_pony: [U32](builtin-U32.md) val
*   n_chars_pony: [I32](builtin-I32.md) val

#### Returns

* [U32](builtin-U32.md) val

---

### emit_deleted_text
<span class="source-link">[[Source]](src/gtk3/GtkEntryBuffer.md#L24)</span>


```pony
fun box emit_deleted_text(
  position_pony: U32 val,
  n_chars_pony: U32 val)
: None val
```
#### Parameters

*   position_pony: [U32](builtin-U32.md) val
*   n_chars_pony: [U32](builtin-U32.md) val

#### Returns

* [None](builtin-None.md) val

---

### get_length
<span class="source-link">[[Source]](src/gtk3/GtkEntryBuffer.md#L38)</span>


```pony
fun box get_length()
: U32 val
```

#### Returns

* [U32](builtin-U32.md) val

---

### get_max_length
<span class="source-link">[[Source]](src/gtk3/GtkEntryBuffer.md#L41)</span>


```pony
fun box get_max_length()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### get_text
<span class="source-link">[[Source]](src/gtk3/GtkEntryBuffer.md#L44)</span>


```pony
fun box get_text()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### set_max_length
<span class="source-link">[[Source]](src/gtk3/GtkEntryBuffer.md#L53)</span>


```pony
fun box set_max_length(
  max_length_pony: I32 val)
: None val
```
#### Parameters

*   max_length_pony: [I32](builtin-I32.md) val

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

