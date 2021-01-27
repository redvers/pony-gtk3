# GtkGrid
<span class="source-link">[[Source]](src/gtk3/GtkGrid.md#L6)</span>

GtkGrid is a container which arranges its child widgets in
rows and columns, with arbitrary positions and horizontal/vertical spans.

Children are added using gtk_grid_attach(). They can span multiple
rows or columns. It is also possible to add a child next to an
existing child, using gtk_grid_attach_next_to(). The behaviour of
GtkGrid when several children occupy the same grid cell is undefined.

GtkGrid can be used like a #GtkBox by just using gtk_container_add(),
which will place children next to each other in the direction determined
by the #GtkOrientable:orientation property. However, if all you want is a
single row or column, then #GtkBox is the preferred widget.

# CSS nodes

GtkGrid uses a single CSS node with name grid.


```pony
class ref GtkGrid is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkGrid.md#L28)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkGrid ref^
```

#### Returns

* [GtkGrid](gtk3-GtkGrid.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkGrid.md#L31)</span>


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
<span class="source-link">[[Source]](src/gtk3/GtkGrid.md#L35)</span>


```pony
new ref create()
: GtkGrid ref^
```

#### Returns

* [GtkGrid](gtk3-GtkGrid.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkGrid.md#L25)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkGrid.md#L27)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### get_baseline_row
<span class="source-link">[[Source]](src/gtk3/GtkGrid.md#L49)</span>


Returns which row defines the global baseline of @grid.


```pony
fun box get_baseline_row()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### get_column_homogeneous
<span class="source-link">[[Source]](src/gtk3/GtkGrid.md#L62)</span>


Returns whether all columns of @grid have the same width.


```pony
fun box get_column_homogeneous()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_column_spacing
<span class="source-link">[[Source]](src/gtk3/GtkGrid.md#L68)</span>


Returns the amount of space between the columns of @grid.


```pony
fun box get_column_spacing()
: U32 val
```

#### Returns

* [U32](builtin-U32.md) val

---

### get_row_homogeneous
<span class="source-link">[[Source]](src/gtk3/GtkGrid.md#L81)</span>


Returns whether all rows of @grid have the same height.


```pony
fun box get_row_homogeneous()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_row_spacing
<span class="source-link">[[Source]](src/gtk3/GtkGrid.md#L87)</span>


Returns the amount of space between the rows of @grid.


```pony
fun box get_row_spacing()
: U32 val
```

#### Returns

* [U32](builtin-U32.md) val

---

### insert_column
<span class="source-link">[[Source]](src/gtk3/GtkGrid.md#L93)</span>


Inserts a column at the specified position.

Children which are attached at or to the right of this position
are moved one column to the right. Children which span across this
position are grown to span the new column.


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
<span class="source-link">[[Source]](src/gtk3/GtkGrid.md#L108)</span>


Inserts a row at the specified position.

Children which are attached at or below this position
are moved one row down. Children which span across this
position are grown to span the new row.


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
<span class="source-link">[[Source]](src/gtk3/GtkGrid.md#L118)</span>


Removes a column from the grid.

Children that are placed in this column are removed,
spanning children that overlap this column have their
width reduced by one, and children after the column
are moved to the left.


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
<span class="source-link">[[Source]](src/gtk3/GtkGrid.md#L129)</span>


Removes a row from the grid.

Children that are placed in this row are removed,
spanning children that overlap this row have their
height reduced by one, and children below the row
are moved up.


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
<span class="source-link">[[Source]](src/gtk3/GtkGrid.md#L140)</span>


Sets which row defines the global baseline for the entire grid.
Each row in the grid can have its own local baseline, but only
one of those is global, meaning it will be the baseline in the
parent of the @grid.


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
<span class="source-link">[[Source]](src/gtk3/GtkGrid.md#L149)</span>


Sets whether all columns of @grid will have the same width.


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
<span class="source-link">[[Source]](src/gtk3/GtkGrid.md#L155)</span>


Sets the amount of space between columns of @grid.


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
<span class="source-link">[[Source]](src/gtk3/GtkGrid.md#L165)</span>


Sets whether all rows of @grid will have the same height.


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
<span class="source-link">[[Source]](src/gtk3/GtkGrid.md#L171)</span>


Sets the amount of space between rows of @grid.


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

