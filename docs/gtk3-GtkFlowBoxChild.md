# GtkFlowBoxChild
<span class="source-link">[[Source]](src/gtk3/GtkFlowBoxChild.md#L6)</span>

No documentation provided


```pony
class ref GtkFlowBoxChild is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkFlowBoxChild.md#L13)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkFlowBoxChild ref^
```

#### Returns

* [GtkFlowBoxChild](gtk3-GtkFlowBoxChild.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkFlowBoxChild.md#L16)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkFlowBoxChild ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkFlowBoxChild](gtk3-GtkFlowBoxChild.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkFlowBoxChild.md#L20)</span>


```pony
new ref create()
: GtkFlowBoxChild ref^
```

#### Returns

* [GtkFlowBoxChild](gtk3-GtkFlowBoxChild.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkFlowBoxChild.md#L10)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkFlowBoxChild.md#L12)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### changed
<span class="source-link">[[Source]](src/gtk3/GtkFlowBoxChild.md#L24)</span>


Marks @child as changed, causing any state that depends on this
to be updated. This affects sorting and filtering.

Note that calls to this method must be in sync with the data
used for the sorting and filtering functions. For instance, if
the list is mirroring some external data set, and *two* children
changed in the external data set when you call
gtk_flow_box_child_changed() on the first child, the sort function
must only read the new data for the first of the two changed
children, otherwise the resorting of the children will be wrong.

This generally means that if you don’t fully control the data
model, you have to duplicate the data that affects the sorting
and filtering functions into the widgets themselves. Another
alternative is to call gtk_flow_box_invalidate_sort() on any
model change, but that is more expensive.


```pony
fun box changed()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### get_index
<span class="source-link">[[Source]](src/gtk3/GtkFlowBoxChild.md#L45)</span>


Gets the current index of the @child in its #GtkFlowBox container.


```pony
fun box get_index()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### is_selected
<span class="source-link">[[Source]](src/gtk3/GtkFlowBoxChild.md#L51)</span>


Returns whether the @child is currently selected in its
#GtkFlowBox container.


```pony
fun box is_selected()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

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

