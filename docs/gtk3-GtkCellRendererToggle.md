# GtkCellRendererToggle
<span class="source-link">[[Source]](src/gtk3/GtkCellRendererToggle.md#L6)</span>
```pony
class ref GtkCellRendererToggle is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkCellRendererToggle.md#L10)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkCellRendererToggle ref^
```

#### Returns

* [GtkCellRendererToggle](gtk3-GtkCellRendererToggle.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkCellRendererToggle.md#L13)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkCellRendererToggle ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkCellRendererToggle](gtk3-GtkCellRendererToggle.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkCellRendererToggle.md#L17)</span>


```pony
new ref create()
: GtkCellRendererToggle ref^
```

#### Returns

* [GtkCellRendererToggle](gtk3-GtkCellRendererToggle.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkCellRendererToggle.md#L7)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkCellRendererToggle.md#L9)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### get_activatable
<span class="source-link">[[Source]](src/gtk3/GtkCellRendererToggle.md#L21)</span>


```pony
fun box get_activatable()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_active
<span class="source-link">[[Source]](src/gtk3/GtkCellRendererToggle.md#L24)</span>


```pony
fun box get_active()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_radio
<span class="source-link">[[Source]](src/gtk3/GtkCellRendererToggle.md#L27)</span>


```pony
fun box get_radio()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### set_activatable
<span class="source-link">[[Source]](src/gtk3/GtkCellRendererToggle.md#L30)</span>


```pony
fun box set_activatable(
  setting_pony: Bool val)
: None val
```
#### Parameters

*   setting_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_active
<span class="source-link">[[Source]](src/gtk3/GtkCellRendererToggle.md#L33)</span>


```pony
fun box set_active(
  setting_pony: Bool val)
: None val
```
#### Parameters

*   setting_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_radio
<span class="source-link">[[Source]](src/gtk3/GtkCellRendererToggle.md#L36)</span>


```pony
fun box set_radio(
  radio_pony: Bool val)
: None val
```
#### Parameters

*   radio_pony: [Bool](builtin-Bool.md) val

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

