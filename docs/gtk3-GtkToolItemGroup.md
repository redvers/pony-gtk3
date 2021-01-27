# GtkToolItemGroup
<span class="source-link">[[Source]](src/gtk3/GtkToolItemGroup.md#L6)</span>

A #GtkToolItemGroup is used together with #GtkToolPalette to add
#GtkToolItems to a palette like container with different
categories and drag and drop support.

# CSS nodes

GtkToolItemGroup has a single CSS node named toolitemgroup.


```pony
class ref GtkToolItemGroup is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkToolItemGroup.md#L19)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkToolItemGroup ref^
```

#### Returns

* [GtkToolItemGroup](gtk3-GtkToolItemGroup.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkToolItemGroup.md#L22)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkToolItemGroup ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkToolItemGroup](gtk3-GtkToolItemGroup.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkToolItemGroup.md#L26)</span>


```pony
new ref create(
  label_pony: String val)
: GtkToolItemGroup ref^
```
#### Parameters

*   label_pony: [String](builtin-String.md) val

#### Returns

* [GtkToolItemGroup](gtk3-GtkToolItemGroup.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkToolItemGroup.md#L16)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkToolItemGroup.md#L18)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### get_collapsed
<span class="source-link">[[Source]](src/gtk3/GtkToolItemGroup.md#L30)</span>


Gets whether @group is collapsed or expanded.


```pony
fun box get_collapsed()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_label
<span class="source-link">[[Source]](src/gtk3/GtkToolItemGroup.md#L61)</span>


Gets the label of @group.


```pony
fun box get_label()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_n_items
<span class="source-link">[[Source]](src/gtk3/GtkToolItemGroup.md#L76)</span>


Gets the number of tool items in @group.


```pony
fun box get_n_items()
: U32 val
```

#### Returns

* [U32](builtin-U32.md) val

---

### set_collapsed
<span class="source-link">[[Source]](src/gtk3/GtkToolItemGroup.md#L93)</span>


Sets whether the @group should be collapsed or expanded.


```pony
fun box set_collapsed(
  collapsed_pony: Bool val)
: None val
```
#### Parameters

*   collapsed_pony: [Bool](builtin-Bool.md) val

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
<span class="source-link">[[Source]](src/gtk3/GtkWidget.md#L7)</span>


```pony
fun box destroy()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### signal_connect\[V: [Any](builtin-Any.md) #share\]
<span class="source-link">[[Source]](src/gtk3/GtkWidget.md#L10)</span>


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

