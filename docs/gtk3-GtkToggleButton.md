# GtkToggleButton
<span class="source-link">[[Source]](src/gtk3/GtkToggleButton.md#L6)</span>
```pony
class ref GtkToggleButton is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkToggleButton.md#L10)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkToggleButton ref^
```

#### Returns

* [GtkToggleButton](gtk3-GtkToggleButton.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkToggleButton.md#L13)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkToggleButton ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkToggleButton](gtk3-GtkToggleButton.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkToggleButton.md#L17)</span>


```pony
new ref create()
: GtkToggleButton ref^
```

#### Returns

* [GtkToggleButton](gtk3-GtkToggleButton.md) ref^

---

### new_with_label
<span class="source-link">[[Source]](src/gtk3/GtkToggleButton.md#L20)</span>


```pony
new ref new_with_label(
  label_pony: String val)
: GtkToggleButton ref^
```
#### Parameters

*   label_pony: [String](builtin-String.md) val

#### Returns

* [GtkToggleButton](gtk3-GtkToggleButton.md) ref^

---

### new_with_mnemonic
<span class="source-link">[[Source]](src/gtk3/GtkToggleButton.md#L23)</span>


```pony
new ref new_with_mnemonic(
  label_pony: String val)
: GtkToggleButton ref^
```
#### Parameters

*   label_pony: [String](builtin-String.md) val

#### Returns

* [GtkToggleButton](gtk3-GtkToggleButton.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkToggleButton.md#L7)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkToggleButton.md#L9)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### get_active
<span class="source-link">[[Source]](src/gtk3/GtkToggleButton.md#L27)</span>


```pony
fun box get_active()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_inconsistent
<span class="source-link">[[Source]](src/gtk3/GtkToggleButton.md#L30)</span>


```pony
fun box get_inconsistent()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_mode
<span class="source-link">[[Source]](src/gtk3/GtkToggleButton.md#L33)</span>


```pony
fun box get_mode()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### set_active
<span class="source-link">[[Source]](src/gtk3/GtkToggleButton.md#L36)</span>


```pony
fun box set_active(
  is_active_pony: Bool val)
: None val
```
#### Parameters

*   is_active_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_inconsistent
<span class="source-link">[[Source]](src/gtk3/GtkToggleButton.md#L39)</span>


```pony
fun box set_inconsistent(
  setting_pony: Bool val)
: None val
```
#### Parameters

*   setting_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_mode
<span class="source-link">[[Source]](src/gtk3/GtkToggleButton.md#L42)</span>


```pony
fun box set_mode(
  draw_indicator_pony: Bool val)
: None val
```
#### Parameters

*   draw_indicator_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### toggled
<span class="source-link">[[Source]](src/gtk3/GtkToggleButton.md#L45)</span>


```pony
fun box toggled()
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

