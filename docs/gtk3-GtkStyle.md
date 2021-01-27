# GtkStyle
<span class="source-link">[[Source]](src/gtk3/GtkStyle.md#L6)</span>
```pony
class ref GtkStyle is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkStyle.md#L10)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkStyle ref^
```

#### Returns

* [GtkStyle](gtk3-GtkStyle.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkStyle.md#L13)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkStyle ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkStyle](gtk3-GtkStyle.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkStyle.md#L17)</span>


```pony
new ref create()
: GtkStyle ref^
```

#### Returns

* [GtkStyle](gtk3-GtkStyle.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkStyle.md#L7)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkStyle.md#L9)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### detach
<span class="source-link">[[Source]](src/gtk3/GtkStyle.md#L41)</span>


```pony
fun box detach()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### has_context
<span class="source-link">[[Source]](src/gtk3/GtkStyle.md#L62)</span>


```pony
fun box has_context()
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

