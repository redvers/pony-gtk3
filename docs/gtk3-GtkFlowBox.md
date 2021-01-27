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


```pony
fun box get_activate_on_single_click()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_column_spacing
<span class="source-link">[[Source]](src/gtk3/GtkFlowBox.md#L45)</span>


```pony
fun box get_column_spacing()
: U32 val
```

#### Returns

* [U32](builtin-U32.md) val

---

### get_homogeneous
<span class="source-link">[[Source]](src/gtk3/GtkFlowBox.md#L48)</span>


```pony
fun box get_homogeneous()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_max_children_per_line
<span class="source-link">[[Source]](src/gtk3/GtkFlowBox.md#L51)</span>


```pony
fun box get_max_children_per_line()
: U32 val
```

#### Returns

* [U32](builtin-U32.md) val

---

### get_min_children_per_line
<span class="source-link">[[Source]](src/gtk3/GtkFlowBox.md#L54)</span>


```pony
fun box get_min_children_per_line()
: U32 val
```

#### Returns

* [U32](builtin-U32.md) val

---

### get_row_spacing
<span class="source-link">[[Source]](src/gtk3/GtkFlowBox.md#L57)</span>


```pony
fun box get_row_spacing()
: U32 val
```

#### Returns

* [U32](builtin-U32.md) val

---

### invalidate_filter
<span class="source-link">[[Source]](src/gtk3/GtkFlowBox.md#L78)</span>


```pony
fun box invalidate_filter()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### invalidate_sort
<span class="source-link">[[Source]](src/gtk3/GtkFlowBox.md#L81)</span>


```pony
fun box invalidate_sort()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### select_all
<span class="source-link">[[Source]](src/gtk3/GtkFlowBox.md#L84)</span>


```pony
fun box select_all()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### set_activate_on_single_click
<span class="source-link">[[Source]](src/gtk3/GtkFlowBox.md#L96)</span>


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
<span class="source-link">[[Source]](src/gtk3/GtkFlowBox.md#L99)</span>


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
<span class="source-link">[[Source]](src/gtk3/GtkFlowBox.md#L112)</span>


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
<span class="source-link">[[Source]](src/gtk3/GtkFlowBox.md#L115)</span>


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
<span class="source-link">[[Source]](src/gtk3/GtkFlowBox.md#L118)</span>


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
<span class="source-link">[[Source]](src/gtk3/GtkFlowBox.md#L121)</span>


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
<span class="source-link">[[Source]](src/gtk3/GtkFlowBox.md#L138)</span>


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

