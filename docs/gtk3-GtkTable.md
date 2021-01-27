# GtkTable
<span class="source-link">[[Source]](src/gtk3/GtkTable.md#L6)</span>
```pony
class ref GtkTable is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkTable.md#L10)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkTable ref^
```

#### Returns

* [GtkTable](gtk3-GtkTable.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkTable.md#L13)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkTable ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkTable](gtk3-GtkTable.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkTable.md#L17)</span>


```pony
new ref create(
  rows_pony: U32 val,
  columns_pony: U32 val,
  homogeneous_pony: Bool val)
: GtkTable ref^
```
#### Parameters

*   rows_pony: [U32](builtin-U32.md) val
*   columns_pony: [U32](builtin-U32.md) val
*   homogeneous_pony: [Bool](builtin-Bool.md) val

#### Returns

* [GtkTable](gtk3-GtkTable.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkTable.md#L7)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkTable.md#L9)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### get_col_spacing
<span class="source-link">[[Source]](src/gtk3/GtkTable.md#L31)</span>


Gets the amount of space between column @col, and
column @col + 1. See gtk_table_set_col_spacing().


```pony
fun box get_col_spacing(
  column_pony: U32 val)
: U32 val
```
#### Parameters

*   column_pony: [U32](builtin-U32.md) val

#### Returns

* [U32](builtin-U32.md) val

---

### get_default_col_spacing
<span class="source-link">[[Source]](src/gtk3/GtkTable.md#L38)</span>


Gets the default column spacing for the table. This is
the spacing that will be used for newly added columns.
(See gtk_table_set_col_spacings())


```pony
fun box get_default_col_spacing()
: U32 val
```

#### Returns

* [U32](builtin-U32.md) val

---

### get_default_row_spacing
<span class="source-link">[[Source]](src/gtk3/GtkTable.md#L46)</span>


Gets the default row spacing for the table. This is
the spacing that will be used for newly added rows.
(See gtk_table_set_row_spacings())


```pony
fun box get_default_row_spacing()
: U32 val
```

#### Returns

* [U32](builtin-U32.md) val

---

### get_homogeneous
<span class="source-link">[[Source]](src/gtk3/GtkTable.md#L54)</span>


Returns whether the table cells are all constrained to the same
width and height. (See gtk_table_set_homogeneous ())


```pony
fun box get_homogeneous()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_row_spacing
<span class="source-link">[[Source]](src/gtk3/GtkTable.md#L61)</span>


Gets the amount of space between row @row, and
row @row + 1. See gtk_table_set_row_spacing().


```pony
fun box get_row_spacing(
  row_pony: U32 val)
: U32 val
```
#### Parameters

*   row_pony: [U32](builtin-U32.md) val

#### Returns

* [U32](builtin-U32.md) val

---

### resize
<span class="source-link">[[Source]](src/gtk3/GtkTable.md#L73)</span>


If you need to change a table’s size after
it has been created, this function allows you to do so.


```pony
fun box resize(
  rows_pony: U32 val,
  columns_pony: U32 val)
: None val
```
#### Parameters

*   rows_pony: [U32](builtin-U32.md) val
*   columns_pony: [U32](builtin-U32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_col_spacing
<span class="source-link">[[Source]](src/gtk3/GtkTable.md#L80)</span>


Alters the amount of space between a given table column and the following
column.


```pony
fun box set_col_spacing(
  column_pony: U32 val,
  spacing_pony: U32 val)
: None val
```
#### Parameters

*   column_pony: [U32](builtin-U32.md) val
*   spacing_pony: [U32](builtin-U32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_col_spacings
<span class="source-link">[[Source]](src/gtk3/GtkTable.md#L87)</span>


Sets the space between every column in @table equal to @spacing.


```pony
fun box set_col_spacings(
  spacing_pony: U32 val)
: None val
```
#### Parameters

*   spacing_pony: [U32](builtin-U32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_homogeneous
<span class="source-link">[[Source]](src/gtk3/GtkTable.md#L93)</span>


Changes the homogenous property of table cells, ie. whether all cells are
an equal size or not.


```pony
fun box set_homogeneous(
  homogeneous_pony: Bool val)
: None val
```
#### Parameters

*   homogeneous_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_row_spacing
<span class="source-link">[[Source]](src/gtk3/GtkTable.md#L100)</span>


Changes the space between a given table row and the subsequent row.


```pony
fun box set_row_spacing(
  row_pony: U32 val,
  spacing_pony: U32 val)
: None val
```
#### Parameters

*   row_pony: [U32](builtin-U32.md) val
*   spacing_pony: [U32](builtin-U32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_row_spacings
<span class="source-link">[[Source]](src/gtk3/GtkTable.md#L106)</span>


Sets the space between every row in @table equal to @spacing.


```pony
fun box set_row_spacings(
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

