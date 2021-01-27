# GtkToggleToolButton
<span class="source-link">[[Source]](src/gtk3/GtkToggleToolButton.md#L6)</span>
```pony
class ref GtkToggleToolButton is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkToggleToolButton.md#L10)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkToggleToolButton ref^
```

#### Returns

* [GtkToggleToolButton](gtk3-GtkToggleToolButton.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkToggleToolButton.md#L13)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkToggleToolButton ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkToggleToolButton](gtk3-GtkToggleToolButton.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkToggleToolButton.md#L17)</span>


```pony
new ref create()
: GtkToggleToolButton ref^
```

#### Returns

* [GtkToggleToolButton](gtk3-GtkToggleToolButton.md) ref^

---

### new_from_stock
<span class="source-link">[[Source]](src/gtk3/GtkToggleToolButton.md#L20)</span>


```pony
new ref new_from_stock(
  stock_id_pony: String val)
: GtkToggleToolButton ref^
```
#### Parameters

*   stock_id_pony: [String](builtin-String.md) val

#### Returns

* [GtkToggleToolButton](gtk3-GtkToggleToolButton.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkToggleToolButton.md#L7)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkToggleToolButton.md#L9)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### get_active
<span class="source-link">[[Source]](src/gtk3/GtkToggleToolButton.md#L24)</span>


```pony
fun box get_active()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### set_active
<span class="source-link">[[Source]](src/gtk3/GtkToggleToolButton.md#L27)</span>


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

