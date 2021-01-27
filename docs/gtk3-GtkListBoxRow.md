# GtkListBoxRow
<span class="source-link">[[Source]](src/gtk3/GtkListBoxRow.md#L6)</span>
```pony
class ref GtkListBoxRow is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkListBoxRow.md#L10)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkListBoxRow ref^
```

#### Returns

* [GtkListBoxRow](gtk3-GtkListBoxRow.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkListBoxRow.md#L13)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkListBoxRow ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkListBoxRow](gtk3-GtkListBoxRow.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkListBoxRow.md#L17)</span>


```pony
new ref create()
: GtkListBoxRow ref^
```

#### Returns

* [GtkListBoxRow](gtk3-GtkListBoxRow.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkListBoxRow.md#L7)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkListBoxRow.md#L9)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### changed
<span class="source-link">[[Source]](src/gtk3/GtkListBoxRow.md#L21)</span>


```pony
fun box changed()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### get_activatable
<span class="source-link">[[Source]](src/gtk3/GtkListBoxRow.md#L24)</span>


```pony
fun box get_activatable()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_index
<span class="source-link">[[Source]](src/gtk3/GtkListBoxRow.md#L34)</span>


```pony
fun box get_index()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### get_selectable
<span class="source-link">[[Source]](src/gtk3/GtkListBoxRow.md#L37)</span>


```pony
fun box get_selectable()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### is_selected
<span class="source-link">[[Source]](src/gtk3/GtkListBoxRow.md#L40)</span>


```pony
fun box is_selected()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### set_activatable
<span class="source-link">[[Source]](src/gtk3/GtkListBoxRow.md#L43)</span>


```pony
fun box set_activatable(
  activatable_pony: Bool val)
: None val
```
#### Parameters

*   activatable_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_selectable
<span class="source-link">[[Source]](src/gtk3/GtkListBoxRow.md#L50)</span>


```pony
fun box set_selectable(
  selectable_pony: Bool val)
: None val
```
#### Parameters

*   selectable_pony: [Bool](builtin-Bool.md) val

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

