# GtkCellRendererSpinner
<span class="source-link">[[Source]](src/gtk3/GtkCellRendererSpinner.md#L6)</span>

GtkCellRendererSpinner renders a spinning animation in a cell, very
similar to #GtkSpinner. It can often be used as an alternative
to a #GtkCellRendererProgress for displaying indefinite activity,
instead of actual progress.

To start the animation in a cell, set the #GtkCellRendererSpinner:active
property to %TRUE and increment the #GtkCellRendererSpinner:pulse property
at regular intervals. The usual way to set the cell renderer properties
for each cell is to bind them to columns in your tree model using e.g.
gtk_tree_view_column_add_attribute().


```pony
class ref GtkCellRendererSpinner is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkCellRendererSpinner.md#L22)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkCellRendererSpinner ref^
```

#### Returns

* [GtkCellRendererSpinner](gtk3-GtkCellRendererSpinner.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkCellRendererSpinner.md#L25)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkCellRendererSpinner ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkCellRendererSpinner](gtk3-GtkCellRendererSpinner.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkCellRendererSpinner.md#L29)</span>


```pony
new ref create()
: GtkCellRendererSpinner ref^
```

#### Returns

* [GtkCellRendererSpinner](gtk3-GtkCellRendererSpinner.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkCellRendererSpinner.md#L19)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkCellRendererSpinner.md#L21)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

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

