# GtkTextBuffer
<span class="source-link">[[Source]](src/gtk3/GtkTextBuffer.md#L6)</span>
```pony
class ref GtkTextBuffer is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkTextBuffer.md#L10)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkTextBuffer ref^
```

#### Returns

* [GtkTextBuffer](gtk3-GtkTextBuffer.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkTextBuffer.md#L13)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkTextBuffer ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkTextBuffer](gtk3-GtkTextBuffer.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkTextBuffer.md#L17)</span>


```pony
new ref create(
  table_pony: GtkTextTagTable ref)
: GtkTextBuffer ref^
```
#### Parameters

*   table_pony: [GtkTextTagTable](gtk3-GtkTextTagTable.md) ref

#### Returns

* [GtkTextBuffer](gtk3-GtkTextBuffer.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkTextBuffer.md#L7)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkTextBuffer.md#L9)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### begin_user_action
<span class="source-link">[[Source]](src/gtk3/GtkTextBuffer.md#L46)</span>


```pony
fun box begin_user_action()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### delete_selection
<span class="source-link">[[Source]](src/gtk3/GtkTextBuffer.md#L96)</span>


```pony
fun box delete_selection(
  interactive_pony: Bool val,
  default_editable_pony: Bool val)
: Bool val
```
#### Parameters

*   interactive_pony: [Bool](builtin-Bool.md) val
*   default_editable_pony: [Bool](builtin-Bool.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

### end_user_action
<span class="source-link">[[Source]](src/gtk3/GtkTextBuffer.md#L115)</span>


```pony
fun box end_user_action()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### get_char_count
<span class="source-link">[[Source]](src/gtk3/GtkTextBuffer.md#L123)</span>


```pony
fun box get_char_count()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### get_has_selection
<span class="source-link">[[Source]](src/gtk3/GtkTextBuffer.md#L144)</span>


```pony
fun box get_has_selection()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_line_count
<span class="source-link">[[Source]](src/gtk3/GtkTextBuffer.md#L180)</span>


```pony
fun box get_line_count()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### get_modified
<span class="source-link">[[Source]](src/gtk3/GtkTextBuffer.md#L190)</span>


```pony
fun box get_modified()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### set_modified
<span class="source-link">[[Source]](src/gtk3/GtkTextBuffer.md#L383)</span>


```pony
fun box set_modified(
  setting_pony: Bool val)
: None val
```
#### Parameters

*   setting_pony: [Bool](builtin-Bool.md) val

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

