# GtkGrid
<span class="source-link">[[Source]](src/gtk3/GtkGrid.md#L6)</span>
```pony
class ref GtkGrid is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkGrid.md#L10)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkGrid ref^
```

#### Returns

* [GtkGrid](gtk3-GtkGrid.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkGrid.md#L13)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkGrid ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkGrid](gtk3-GtkGrid.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkGrid.md#L17)</span>


```pony
new ref create()
: GtkGrid ref^
```

#### Returns

* [GtkGrid](gtk3-GtkGrid.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkGrid.md#L7)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkGrid.md#L9)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### get_baseline_row
<span class="source-link">[[Source]](src/gtk3/GtkGrid.md#L31)</span>


```pony
fun box get_baseline_row()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### get_column_homogeneous
<span class="source-link">[[Source]](src/gtk3/GtkGrid.md#L41)</span>


```pony
fun box get_column_homogeneous()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_column_spacing
<span class="source-link">[[Source]](src/gtk3/GtkGrid.md#L44)</span>


```pony
fun box get_column_spacing()
: U32 val
```

#### Returns

* [U32](builtin-U32.md) val

---

### get_row_homogeneous
<span class="source-link">[[Source]](src/gtk3/GtkGrid.md#L54)</span>


```pony
fun box get_row_homogeneous()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_row_spacing
<span class="source-link">[[Source]](src/gtk3/GtkGrid.md#L57)</span>


```pony
fun box get_row_spacing()
: U32 val
```

#### Returns

* [U32](builtin-U32.md) val

---

### insert_column
<span class="source-link">[[Source]](src/gtk3/GtkGrid.md#L60)</span>


```pony
fun box insert_column(
  position_pony: I32 val)
: None val
```
#### Parameters

*   position_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### insert_row
<span class="source-link">[[Source]](src/gtk3/GtkGrid.md#L68)</span>


```pony
fun box insert_row(
  position_pony: I32 val)
: None val
```
#### Parameters

*   position_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### remove_column
<span class="source-link">[[Source]](src/gtk3/GtkGrid.md#L71)</span>


```pony
fun box remove_column(
  position_pony: I32 val)
: None val
```
#### Parameters

*   position_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### remove_row
<span class="source-link">[[Source]](src/gtk3/GtkGrid.md#L74)</span>


```pony
fun box remove_row(
  position_pony: I32 val)
: None val
```
#### Parameters

*   position_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_baseline_row
<span class="source-link">[[Source]](src/gtk3/GtkGrid.md#L77)</span>


```pony
fun box set_baseline_row(
  row_pony: I32 val)
: None val
```
#### Parameters

*   row_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_column_homogeneous
<span class="source-link">[[Source]](src/gtk3/GtkGrid.md#L80)</span>


```pony
fun box set_column_homogeneous(
  homogeneous_pony: Bool val)
: None val
```
#### Parameters

*   homogeneous_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_column_spacing
<span class="source-link">[[Source]](src/gtk3/GtkGrid.md#L83)</span>


```pony
fun box set_column_spacing(
  spacing_pony: U32 val)
: None val
```
#### Parameters

*   spacing_pony: [U32](builtin-U32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_row_homogeneous
<span class="source-link">[[Source]](src/gtk3/GtkGrid.md#L90)</span>


```pony
fun box set_row_homogeneous(
  homogeneous_pony: Bool val)
: None val
```
#### Parameters

*   homogeneous_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_row_spacing
<span class="source-link">[[Source]](src/gtk3/GtkGrid.md#L93)</span>


```pony
fun box set_row_spacing(
  spacing_pony: U32 val)
: None val
```
#### Parameters

*   spacing_pony: [U32](builtin-U32.md) val

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

