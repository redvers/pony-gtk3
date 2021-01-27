# GtkMenuItem
<span class="source-link">[[Source]](src/gtk3/GtkMenuItem.md#L6)</span>
```pony
class ref GtkMenuItem is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkMenuItem.md#L10)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkMenuItem ref^
```

#### Returns

* [GtkMenuItem](gtk3-GtkMenuItem.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkMenuItem.md#L13)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkMenuItem ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkMenuItem](gtk3-GtkMenuItem.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkMenuItem.md#L17)</span>


```pony
new ref create()
: GtkMenuItem ref^
```

#### Returns

* [GtkMenuItem](gtk3-GtkMenuItem.md) ref^

---

### new_with_label
<span class="source-link">[[Source]](src/gtk3/GtkMenuItem.md#L20)</span>


```pony
new ref new_with_label(
  label_pony: String val)
: GtkMenuItem ref^
```
#### Parameters

*   label_pony: [String](builtin-String.md) val

#### Returns

* [GtkMenuItem](gtk3-GtkMenuItem.md) ref^

---

### new_with_mnemonic
<span class="source-link">[[Source]](src/gtk3/GtkMenuItem.md#L23)</span>


```pony
new ref new_with_mnemonic(
  label_pony: String val)
: GtkMenuItem ref^
```
#### Parameters

*   label_pony: [String](builtin-String.md) val

#### Returns

* [GtkMenuItem](gtk3-GtkMenuItem.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkMenuItem.md#L7)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkMenuItem.md#L9)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### activate
<span class="source-link">[[Source]](src/gtk3/GtkMenuItem.md#L27)</span>


```pony
fun box activate()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### deselect
<span class="source-link">[[Source]](src/gtk3/GtkMenuItem.md#L30)</span>


```pony
fun box deselect()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### get_accel_path
<span class="source-link">[[Source]](src/gtk3/GtkMenuItem.md#L33)</span>


```pony
fun box get_accel_path()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_label
<span class="source-link">[[Source]](src/gtk3/GtkMenuItem.md#L38)</span>


```pony
fun box get_label()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_reserve_indicator
<span class="source-link">[[Source]](src/gtk3/GtkMenuItem.md#L43)</span>


```pony
fun box get_reserve_indicator()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_right_justified
<span class="source-link">[[Source]](src/gtk3/GtkMenuItem.md#L46)</span>


```pony
fun box get_right_justified()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_use_underline
<span class="source-link">[[Source]](src/gtk3/GtkMenuItem.md#L56)</span>


```pony
fun box get_use_underline()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### select
<span class="source-link">[[Source]](src/gtk3/GtkMenuItem.md#L59)</span>


```pony
fun box select()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### set_reserve_indicator
<span class="source-link">[[Source]](src/gtk3/GtkMenuItem.md#L70)</span>


```pony
fun box set_reserve_indicator(
  reserve_pony: Bool val)
: None val
```
#### Parameters

*   reserve_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_right_justified
<span class="source-link">[[Source]](src/gtk3/GtkMenuItem.md#L73)</span>


```pony
fun box set_right_justified(
  right_justified_pony: Bool val)
: None val
```
#### Parameters

*   right_justified_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_use_underline
<span class="source-link">[[Source]](src/gtk3/GtkMenuItem.md#L80)</span>


```pony
fun box set_use_underline(
  setting_pony: Bool val)
: None val
```
#### Parameters

*   setting_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### toggle_size_allocate
<span class="source-link">[[Source]](src/gtk3/GtkMenuItem.md#L83)</span>


```pony
fun box toggle_size_allocate(
  allocation_pony: I32 val)
: None val
```
#### Parameters

*   allocation_pony: [I32](builtin-I32.md) val

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

