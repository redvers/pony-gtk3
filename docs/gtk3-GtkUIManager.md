# GtkUIManager
<span class="source-link">[[Source]](src/gtk3/GtkUIManager.md#L6)</span>
```pony
class ref GtkUIManager is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkUIManager.md#L10)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkUIManager ref^
```

#### Returns

* [GtkUIManager](gtk3-GtkUIManager.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkUIManager.md#L13)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkUIManager ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkUIManager](gtk3-GtkUIManager.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkUIManager.md#L17)</span>


```pony
new ref create()
: GtkUIManager ref^
```

#### Returns

* [GtkUIManager](gtk3-GtkUIManager.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkUIManager.md#L7)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkUIManager.md#L9)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### ensure_update
<span class="source-link">[[Source]](src/gtk3/GtkUIManager.md#L41)</span>


```pony
fun box ensure_update()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### get_add_tearoffs
<span class="source-link">[[Source]](src/gtk3/GtkUIManager.md#L65)</span>


```pony
fun box get_add_tearoffs()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### new_merge_id
<span class="source-link">[[Source]](src/gtk3/GtkUIManager.md#L93)</span>


```pony
fun box new_merge_id()
: U32 val
```

#### Returns

* [U32](builtin-U32.md) val

---

### remove_ui
<span class="source-link">[[Source]](src/gtk3/GtkUIManager.md#L100)</span>


```pony
fun box remove_ui(
  merge_id_pony: U32 val)
: None val
```
#### Parameters

*   merge_id_pony: [U32](builtin-U32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_add_tearoffs
<span class="source-link">[[Source]](src/gtk3/GtkUIManager.md#L103)</span>


```pony
fun box set_add_tearoffs(
  add_tearoffs_pony: Bool val)
: None val
```
#### Parameters

*   add_tearoffs_pony: [Bool](builtin-Bool.md) val

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

