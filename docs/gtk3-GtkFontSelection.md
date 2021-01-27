# GtkFontSelection
<span class="source-link">[[Source]](src/gtk3/GtkFontSelection.md#L6)</span>
```pony
class ref GtkFontSelection is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkFontSelection.md#L10)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkFontSelection ref^
```

#### Returns

* [GtkFontSelection](gtk3-GtkFontSelection.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkFontSelection.md#L13)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkFontSelection ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkFontSelection](gtk3-GtkFontSelection.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkFontSelection.md#L17)</span>


```pony
new ref create()
: GtkFontSelection ref^
```

#### Returns

* [GtkFontSelection](gtk3-GtkFontSelection.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkFontSelection.md#L7)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkFontSelection.md#L9)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### get_preview_text
<span class="source-link">[[Source]](src/gtk3/GtkFontSelection.md#L63)</span>


```pony
fun box get_preview_text()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_size
<span class="source-link">[[Source]](src/gtk3/GtkFontSelection.md#L68)</span>


```pony
fun box get_size()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

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

