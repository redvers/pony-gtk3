# GtkListBoxRow
<span class="source-link">[[Source]](src/gtk3/GtkListBoxRow.md#L6)</span>
```pony
class ref GtkListBoxRow is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkListBoxRow.md#L10)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkListBoxRow ref^
```

#### Returns

* [GtkListBoxRow](gtk3-GtkListBoxRow.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkListBoxRow.md#L13)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkListBoxRow ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkListBoxRow](gtk3-GtkListBoxRow.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkListBoxRow.md#L17)</span>


```pony
new ref create()
: GtkListBoxRow ref^
```

#### Returns

* [GtkListBoxRow](gtk3-GtkListBoxRow.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkListBoxRow.md#L7)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkListBoxRow.md#L9)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### changed
<span class="source-link">[[Source]](src/gtk3/GtkListBoxRow.md#L21)</span>


Marks @row as changed, causing any state that depends on this
to be updated. This affects sorting, filtering and headers.

Note that calls to this method must be in sync with the data
used for the row functions. For instance, if the list is
mirroring some external data set, and *two* rows changed in the
external data set then when you call gtk_list_box_row_changed()
on the first row the sort function must only read the new data
for the first of the two changed rows, otherwise the resorting
of the rows will be wrong.

This generally means that if you don’t fully control the data
model you have to duplicate the data that affects the listbox
row functions into the row widgets themselves. Another alternative
is to call gtk_list_box_invalidate_sort() on any model change,
but that is more expensive.


```pony
fun box changed()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### get_activatable
<span class="source-link">[[Source]](src/gtk3/GtkListBoxRow.md#L42)</span>


Gets the value of the #GtkListBoxRow:activatable property
for this row.


```pony
fun box get_activatable()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_index
<span class="source-link">[[Source]](src/gtk3/GtkListBoxRow.md#L56)</span>


Gets the current index of the @row in its #GtkListBox container.


```pony
fun box get_index()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### get_selectable
<span class="source-link">[[Source]](src/gtk3/GtkListBoxRow.md#L62)</span>


Gets the value of the #GtkListBoxRow:selectable property
for this row.


```pony
fun box get_selectable()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### is_selected
<span class="source-link">[[Source]](src/gtk3/GtkListBoxRow.md#L69)</span>


Returns whether the child is currently selected in its
#GtkListBox container.


```pony
fun box is_selected()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### set_activatable
<span class="source-link">[[Source]](src/gtk3/GtkListBoxRow.md#L76)</span>


Set the #GtkListBoxRow:activatable property for this row.


```pony
fun box set_activatable(
  activatable_pony: Bool val)
: None val
```
#### Parameters

*   activatable_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_selectable
<span class="source-link">[[Source]](src/gtk3/GtkListBoxRow.md#L86)</span>


Set the #GtkListBoxRow:selectable property for this row.


```pony
fun box set_selectable(
  selectable_pony: Bool val)
: None val
```
#### Parameters

*   selectable_pony: [Bool](builtin-Bool.md) val

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

