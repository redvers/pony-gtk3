# GtkExpander
<span class="source-link">[[Source]](src/gtk3/GtkExpander.md#L6)</span>
```pony
class ref GtkExpander is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkExpander.md#L10)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkExpander ref^
```

#### Returns

* [GtkExpander](gtk3-GtkExpander.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkExpander.md#L13)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkExpander ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkExpander](gtk3-GtkExpander.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkExpander.md#L17)</span>


```pony
new ref create(
  label_pony: String val)
: GtkExpander ref^
```
#### Parameters

*   label_pony: [String](builtin-String.md) val

#### Returns

* [GtkExpander](gtk3-GtkExpander.md) ref^

---

### new_with_mnemonic
<span class="source-link">[[Source]](src/gtk3/GtkExpander.md#L20)</span>


```pony
new ref new_with_mnemonic(
  label_pony: String val)
: GtkExpander ref^
```
#### Parameters

*   label_pony: [String](builtin-String.md) val

#### Returns

* [GtkExpander](gtk3-GtkExpander.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkExpander.md#L7)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkExpander.md#L9)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### get_expanded
<span class="source-link">[[Source]](src/gtk3/GtkExpander.md#L24)</span>


```pony
fun box get_expanded()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_label
<span class="source-link">[[Source]](src/gtk3/GtkExpander.md#L27)</span>


```pony
fun box get_label()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_label_fill
<span class="source-link">[[Source]](src/gtk3/GtkExpander.md#L32)</span>


```pony
fun box get_label_fill()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_resize_toplevel
<span class="source-link">[[Source]](src/gtk3/GtkExpander.md#L42)</span>


```pony
fun box get_resize_toplevel()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_spacing
<span class="source-link">[[Source]](src/gtk3/GtkExpander.md#L45)</span>


```pony
fun box get_spacing()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### get_use_markup
<span class="source-link">[[Source]](src/gtk3/GtkExpander.md#L48)</span>


```pony
fun box get_use_markup()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_use_underline
<span class="source-link">[[Source]](src/gtk3/GtkExpander.md#L51)</span>


```pony
fun box get_use_underline()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### set_expanded
<span class="source-link">[[Source]](src/gtk3/GtkExpander.md#L54)</span>


```pony
fun box set_expanded(
  expanded_pony: Bool val)
: None val
```
#### Parameters

*   expanded_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_label_fill
<span class="source-link">[[Source]](src/gtk3/GtkExpander.md#L61)</span>


```pony
fun box set_label_fill(
  label_fill_pony: Bool val)
: None val
```
#### Parameters

*   label_fill_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_resize_toplevel
<span class="source-link">[[Source]](src/gtk3/GtkExpander.md#L68)</span>


```pony
fun box set_resize_toplevel(
  resize_toplevel_pony: Bool val)
: None val
```
#### Parameters

*   resize_toplevel_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_spacing
<span class="source-link">[[Source]](src/gtk3/GtkExpander.md#L71)</span>


```pony
fun box set_spacing(
  spacing_pony: I32 val)
: None val
```
#### Parameters

*   spacing_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_use_markup
<span class="source-link">[[Source]](src/gtk3/GtkExpander.md#L74)</span>


```pony
fun box set_use_markup(
  use_markup_pony: Bool val)
: None val
```
#### Parameters

*   use_markup_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_use_underline
<span class="source-link">[[Source]](src/gtk3/GtkExpander.md#L77)</span>


```pony
fun box set_use_underline(
  use_underline_pony: Bool val)
: None val
```
#### Parameters

*   use_underline_pony: [Bool](builtin-Bool.md) val

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

