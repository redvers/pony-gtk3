# GtkImageMenuItem
<span class="source-link">[[Source]](src/gtk3/GtkImageMenuItem.md#L6)</span>
```pony
class ref GtkImageMenuItem is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkImageMenuItem.md#L10)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkImageMenuItem ref^
```

#### Returns

* [GtkImageMenuItem](gtk3-GtkImageMenuItem.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkImageMenuItem.md#L13)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkImageMenuItem ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkImageMenuItem](gtk3-GtkImageMenuItem.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkImageMenuItem.md#L17)</span>


```pony
new ref create()
: GtkImageMenuItem ref^
```

#### Returns

* [GtkImageMenuItem](gtk3-GtkImageMenuItem.md) ref^

---

### new_from_stock
<span class="source-link">[[Source]](src/gtk3/GtkImageMenuItem.md#L20)</span>


```pony
new ref new_from_stock(
  stock_id_pony: String val,
  accel_group_pony: GtkAccelGroup ref)
: GtkImageMenuItem ref^
```
#### Parameters

*   stock_id_pony: [String](builtin-String.md) val
*   accel_group_pony: [GtkAccelGroup](gtk3-GtkAccelGroup.md) ref

#### Returns

* [GtkImageMenuItem](gtk3-GtkImageMenuItem.md) ref^

---

### new_with_label
<span class="source-link">[[Source]](src/gtk3/GtkImageMenuItem.md#L23)</span>


```pony
new ref new_with_label(
  label_pony: String val)
: GtkImageMenuItem ref^
```
#### Parameters

*   label_pony: [String](builtin-String.md) val

#### Returns

* [GtkImageMenuItem](gtk3-GtkImageMenuItem.md) ref^

---

### new_with_mnemonic
<span class="source-link">[[Source]](src/gtk3/GtkImageMenuItem.md#L26)</span>


```pony
new ref new_with_mnemonic(
  label_pony: String val)
: GtkImageMenuItem ref^
```
#### Parameters

*   label_pony: [String](builtin-String.md) val

#### Returns

* [GtkImageMenuItem](gtk3-GtkImageMenuItem.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkImageMenuItem.md#L7)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkImageMenuItem.md#L9)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### get_always_show_image
<span class="source-link">[[Source]](src/gtk3/GtkImageMenuItem.md#L30)</span>


```pony
fun box get_always_show_image()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_use_stock
<span class="source-link">[[Source]](src/gtk3/GtkImageMenuItem.md#L40)</span>


```pony
fun box get_use_stock()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### set_always_show_image
<span class="source-link">[[Source]](src/gtk3/GtkImageMenuItem.md#L47)</span>


```pony
fun box set_always_show_image(
  always_show_pony: Bool val)
: None val
```
#### Parameters

*   always_show_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_use_stock
<span class="source-link">[[Source]](src/gtk3/GtkImageMenuItem.md#L54)</span>


```pony
fun box set_use_stock(
  use_stock_pony: Bool val)
: None val
```
#### Parameters

*   use_stock_pony: [Bool](builtin-Bool.md) val

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

