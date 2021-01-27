# GtkFlowBox
<span class="source-link">[[Source]](src/gtk3/GtkFlowBox.md#L6)</span>
```pony
class ref GtkFlowBox is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkFlowBox.md#L10)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkFlowBox ref^
```

#### Returns

* [GtkFlowBox](gtk3-GtkFlowBox.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkFlowBox.md#L13)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkFlowBox ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkFlowBox](gtk3-GtkFlowBox.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkFlowBox.md#L17)</span>


```pony
new ref create()
: GtkFlowBox ref^
```

#### Returns

* [GtkFlowBox](gtk3-GtkFlowBox.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkFlowBox.md#L7)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkFlowBox.md#L9)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### get_activate_on_single_click
<span class="source-link">[[Source]](src/gtk3/GtkFlowBox.md#L28)</span>


Returns whether children activate on single clicks.


```pony
fun box get_activate_on_single_click()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_column_spacing
<span class="source-link">[[Source]](src/gtk3/GtkFlowBox.md#L48)</span>


Gets the horizontal spacing.


```pony
fun box get_column_spacing()
: U32 val
```

#### Returns

* [U32](builtin-U32.md) val

---

### get_homogeneous
<span class="source-link">[[Source]](src/gtk3/GtkFlowBox.md#L54)</span>


Returns whether the box is homogeneous (all children are the
same size). See gtk_box_set_homogeneous().


```pony
fun box get_homogeneous()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_max_children_per_line
<span class="source-link">[[Source]](src/gtk3/GtkFlowBox.md#L61)</span>


Gets the maximum number of children per line.


```pony
fun box get_max_children_per_line()
: U32 val
```

#### Returns

* [U32](builtin-U32.md) val

---

### get_min_children_per_line
<span class="source-link">[[Source]](src/gtk3/GtkFlowBox.md#L67)</span>


Gets the minimum number of children per line.


```pony
fun box get_min_children_per_line()
: U32 val
```

#### Returns

* [U32](builtin-U32.md) val

---

### get_row_spacing
<span class="source-link">[[Source]](src/gtk3/GtkFlowBox.md#L73)</span>


Gets the vertical spacing.


```pony
fun box get_row_spacing()
: U32 val
```

#### Returns

* [U32](builtin-U32.md) val

---

### invalidate_filter
<span class="source-link">[[Source]](src/gtk3/GtkFlowBox.md#L97)</span>


Updates the filtering for all children.

Call this function when the result of the filter
function on the @box is changed due ot an external
factor. For instance, this would be used if the
filter function just looked for a specific search
term, and the entry with the string has changed.


```pony
fun box invalidate_filter()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### invalidate_sort
<span class="source-link">[[Source]](src/gtk3/GtkFlowBox.md#L109)</span>


Updates the sorting for all children.

Call this when the result of the sort function on
@box is changed due to an external factor.


```pony
fun box invalidate_sort()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### select_all
<span class="source-link">[[Source]](src/gtk3/GtkFlowBox.md#L118)</span>


Select all children of @box, if the selection
mode allows it.


```pony
fun box select_all()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### set_activate_on_single_click
<span class="source-link">[[Source]](src/gtk3/GtkFlowBox.md#L134)</span>


If @single is %TRUE, children will be activated when you click
on them, otherwise you need to double-click.


```pony
fun box set_activate_on_single_click(
  single_pony: Bool val)
: None val
```
#### Parameters

*   single_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_column_spacing
<span class="source-link">[[Source]](src/gtk3/GtkFlowBox.md#L141)</span>


Sets the horizontal space to add between children.
See the #GtkFlowBox:column-spacing property.


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

### set_homogeneous
<span class="source-link">[[Source]](src/gtk3/GtkFlowBox.md#L158)</span>


Sets the #GtkFlowBox:homogeneous property of @box, controlling
whether or not all children of @box are given equal space
in the box.


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

### set_max_children_per_line
<span class="source-link">[[Source]](src/gtk3/GtkFlowBox.md#L166)</span>


Sets the maximum number of children to request and
allocate space for in @box’s orientation.

Setting the maximum number of children per line
limits the overall natural size request to be no more
than @n_children children long in the given orientation.


```pony
fun box set_max_children_per_line(
  n_children_pony: U32 val)
: None val
```
#### Parameters

*   n_children_pony: [U32](builtin-U32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_min_children_per_line
<span class="source-link">[[Source]](src/gtk3/GtkFlowBox.md#L177)</span>


Sets the minimum number of children to line up
in @box’s orientation before flowing.


```pony
fun box set_min_children_per_line(
  n_children_pony: U32 val)
: None val
```
#### Parameters

*   n_children_pony: [U32](builtin-U32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_row_spacing
<span class="source-link">[[Source]](src/gtk3/GtkFlowBox.md#L184)</span>


Sets the vertical space to add between children.
See the #GtkFlowBox:row-spacing property.


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

### unselect_all
<span class="source-link">[[Source]](src/gtk3/GtkFlowBox.md#L205)</span>


Unselect all children of @box, if the selection
mode allows it.


```pony
fun box unselect_all()
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

