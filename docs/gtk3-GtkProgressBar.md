# GtkProgressBar
<span class="source-link">[[Source]](src/gtk3/GtkProgressBar.md#L6)</span>
```pony
class ref GtkProgressBar is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkProgressBar.md#L10)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkProgressBar ref^
```

#### Returns

* [GtkProgressBar](gtk3-GtkProgressBar.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkProgressBar.md#L13)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkProgressBar ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkProgressBar](gtk3-GtkProgressBar.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkProgressBar.md#L17)</span>


```pony
new ref create()
: GtkProgressBar ref^
```

#### Returns

* [GtkProgressBar](gtk3-GtkProgressBar.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkProgressBar.md#L7)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkProgressBar.md#L9)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### get_inverted
<span class="source-link">[[Source]](src/gtk3/GtkProgressBar.md#L35)</span>


```pony
fun box get_inverted()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_show_text
<span class="source-link">[[Source]](src/gtk3/GtkProgressBar.md#L45)</span>


```pony
fun box get_show_text()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_text
<span class="source-link">[[Source]](src/gtk3/GtkProgressBar.md#L48)</span>


```pony
fun box get_text()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### pulse
<span class="source-link">[[Source]](src/gtk3/GtkProgressBar.md#L53)</span>


```pony
fun box pulse()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### set_inverted
<span class="source-link">[[Source]](src/gtk3/GtkProgressBar.md#L64)</span>


```pony
fun box set_inverted(
  inverted_pony: Bool val)
: None val
```
#### Parameters

*   inverted_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_show_text
<span class="source-link">[[Source]](src/gtk3/GtkProgressBar.md#L71)</span>


```pony
fun box set_show_text(
  show_text_pony: Bool val)
: None val
```
#### Parameters

*   show_text_pony: [Bool](builtin-Bool.md) val

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

