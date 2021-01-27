# GtkColorSelection
<span class="source-link">[[Source]](src/gtk3/GtkColorSelection.md#L6)</span>
```pony
class ref GtkColorSelection is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkColorSelection.md#L10)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkColorSelection ref^
```

#### Returns

* [GtkColorSelection](gtk3-GtkColorSelection.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkColorSelection.md#L13)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkColorSelection ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkColorSelection](gtk3-GtkColorSelection.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkColorSelection.md#L17)</span>


```pony
new ref create()
: GtkColorSelection ref^
```

#### Returns

* [GtkColorSelection](gtk3-GtkColorSelection.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkColorSelection.md#L7)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkColorSelection.md#L9)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### get_has_opacity_control
<span class="source-link">[[Source]](src/gtk3/GtkColorSelection.md#L36)</span>


```pony
fun box get_has_opacity_control()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_has_palette
<span class="source-link">[[Source]](src/gtk3/GtkColorSelection.md#L39)</span>


```pony
fun box get_has_palette()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### is_adjusting
<span class="source-link">[[Source]](src/gtk3/GtkColorSelection.md#L57)</span>


```pony
fun box is_adjusting()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### set_has_opacity_control
<span class="source-link">[[Source]](src/gtk3/GtkColorSelection.md#L72)</span>


```pony
fun box set_has_opacity_control(
  has_opacity_pony: Bool val)
: None val
```
#### Parameters

*   has_opacity_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_has_palette
<span class="source-link">[[Source]](src/gtk3/GtkColorSelection.md#L75)</span>


```pony
fun box set_has_palette(
  has_palette_pony: Bool val)
: None val
```
#### Parameters

*   has_palette_pony: [Bool](builtin-Bool.md) val

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

