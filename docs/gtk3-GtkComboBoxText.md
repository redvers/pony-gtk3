# GtkComboBoxText
<span class="source-link">[[Source]](src/gtk3/GtkComboBoxText.md#L6)</span>
```pony
class ref GtkComboBoxText is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkComboBoxText.md#L10)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkComboBoxText ref^
```

#### Returns

* [GtkComboBoxText](gtk3-GtkComboBoxText.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkComboBoxText.md#L13)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkComboBoxText ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkComboBoxText](gtk3-GtkComboBoxText.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkComboBoxText.md#L17)</span>


```pony
new ref create()
: GtkComboBoxText ref^
```

#### Returns

* [GtkComboBoxText](gtk3-GtkComboBoxText.md) ref^

---

### new_with_entry
<span class="source-link">[[Source]](src/gtk3/GtkComboBoxText.md#L20)</span>


```pony
new ref new_with_entry()
: GtkComboBoxText ref^
```

#### Returns

* [GtkComboBoxText](gtk3-GtkComboBoxText.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkComboBoxText.md#L7)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkComboBoxText.md#L9)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### remove
<span class="source-link">[[Source]](src/gtk3/GtkComboBoxText.md#L58)</span>


```pony
fun box remove(
  position_pony: I32 val)
: None val
```
#### Parameters

*   position_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### remove_all
<span class="source-link">[[Source]](src/gtk3/GtkComboBoxText.md#L61)</span>


```pony
fun box remove_all()
: None val
```

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

