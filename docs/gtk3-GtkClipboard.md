# GtkClipboard
<span class="source-link">[[Source]](src/gtk3/GtkClipboard.md#L6)</span>
```pony
class ref GtkClipboard is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkClipboard.md#L10)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkClipboard ref^
```

#### Returns

* [GtkClipboard](gtk3-GtkClipboard.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkClipboard.md#L13)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkClipboard ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkClipboard](gtk3-GtkClipboard.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkClipboard.md#L7)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkClipboard.md#L9)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### clear
<span class="source-link">[[Source]](src/gtk3/GtkClipboard.md#L19)</span>


```pony
fun box clear()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### store
<span class="source-link">[[Source]](src/gtk3/GtkClipboard.md#L101)</span>


```pony
fun box store()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### wait_is_image_available
<span class="source-link">[[Source]](src/gtk3/GtkClipboard.md#L144)</span>


```pony
fun box wait_is_image_available()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### wait_is_text_available
<span class="source-link">[[Source]](src/gtk3/GtkClipboard.md#L155)</span>


```pony
fun box wait_is_text_available()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### wait_is_uris_available
<span class="source-link">[[Source]](src/gtk3/GtkClipboard.md#L158)</span>


```pony
fun box wait_is_uris_available()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

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

