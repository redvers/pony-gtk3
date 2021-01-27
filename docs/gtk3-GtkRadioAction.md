# GtkRadioAction
<span class="source-link">[[Source]](src/gtk3/GtkRadioAction.md#L6)</span>
```pony
class ref GtkRadioAction is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkRadioAction.md#L10)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkRadioAction ref^
```

#### Returns

* [GtkRadioAction](gtk3-GtkRadioAction.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkRadioAction.md#L13)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkRadioAction ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkRadioAction](gtk3-GtkRadioAction.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkRadioAction.md#L17)</span>


```pony
new ref create(
  name_pony: String val,
  label_pony: String val,
  tooltip_pony: String val,
  stock_id_pony: String val,
  value_pony: I32 val)
: GtkRadioAction ref^
```
#### Parameters

*   name_pony: [String](builtin-String.md) val
*   label_pony: [String](builtin-String.md) val
*   tooltip_pony: [String](builtin-String.md) val
*   stock_id_pony: [String](builtin-String.md) val
*   value_pony: [I32](builtin-I32.md) val

#### Returns

* [GtkRadioAction](gtk3-GtkRadioAction.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkRadioAction.md#L7)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkRadioAction.md#L9)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### get_current_value
<span class="source-link">[[Source]](src/gtk3/GtkRadioAction.md#L21)</span>


```pony
fun box get_current_value()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### set_current_value
<span class="source-link">[[Source]](src/gtk3/GtkRadioAction.md#L35)</span>


```pony
fun box set_current_value(
  current_value_pony: I32 val)
: None val
```
#### Parameters

*   current_value_pony: [I32](builtin-I32.md) val

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

