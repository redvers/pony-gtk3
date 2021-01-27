# GtkCellRenderer
<span class="source-link">[[Source]](src/gtk3/GtkCellRenderer.md#L6)</span>

The #GtkCellRenderer is a base class of a set of objects used for
rendering a cell to a #cairo_t.  These objects are used primarily by
the #GtkTreeView widget, though they aren’t tied to them in any
specific way.  It is worth noting that #GtkCellRenderer is not a
#GtkWidget and cannot be treated as such.

The primary use of a #GtkCellRenderer is for drawing a certain graphical
elements on a #cairo_t. Typically, one cell renderer is used to
draw many cells on the screen.  To this extent, it isn’t expected that a
CellRenderer keep any permanent state around.  Instead, any state is set
just prior to use using #GObjects property system.  Then, the
cell is measured using gtk_cell_renderer_get_size(). Finally, the cell
is rendered in the correct location using gtk_cell_renderer_render().

There are a number of rules that must be followed when writing a new
#GtkCellRenderer.  First and foremost, it’s important that a certain set
of properties will always yield a cell renderer of the same size,
barring a #GtkStyle change.  The #GtkCellRenderer also has a number of
generic properties that are expected to be honored by all children.

Beyond merely rendering a cell, cell renderers can optionally
provide active user interface elements. A cell renderer can be
“activatable” like #GtkCellRendererToggle,
which toggles when it gets activated by a mouse click, or it can be
“editable” like #GtkCellRendererText, which
allows the user to edit the text using a widget implementing the
#GtkCellEditable interface, e.g. #GtkEntry.
To make a cell renderer activatable or editable, you have to
implement the #GtkCellRendererClass.activate or
#GtkCellRendererClass.start_editing virtual functions, respectively.

Many properties of #GtkCellRenderer and its subclasses have a
corresponding “set” property, e.g. “cell-background-set” corresponds
to “cell-background”. These “set” properties reflect whether a property
has been set or not. You should not set them independently.


```pony
class ref GtkCellRenderer is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkCellRenderer.md#L47)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkCellRenderer ref^
```

#### Returns

* [GtkCellRenderer](gtk3-GtkCellRenderer.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkCellRenderer.md#L50)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkCellRenderer ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkCellRenderer](gtk3-GtkCellRenderer.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkCellRenderer.md#L44)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkCellRenderer.md#L46)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### get_sensitive
<span class="source-link">[[Source]](src/gtk3/GtkCellRenderer.md#L124)</span>


Returns the cell renderer’s sensitivity.


```pony
fun box get_sensitive()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_visible
<span class="source-link">[[Source]](src/gtk3/GtkCellRenderer.md#L146)</span>


Returns the cell renderer’s visibility.


```pony
fun box get_visible()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### is_activatable
<span class="source-link">[[Source]](src/gtk3/GtkCellRenderer.md#L152)</span>


Checks whether the cell renderer can do something when activated.


```pony
fun box is_activatable()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### set_fixed_size
<span class="source-link">[[Source]](src/gtk3/GtkCellRenderer.md#L171)</span>


Sets the renderer size to be explicit, independent of the properties set.


```pony
fun box set_fixed_size(
  width_pony: I32 val,
  height_pony: I32 val)
: None val
```
#### Parameters

*   width_pony: [I32](builtin-I32.md) val
*   height_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_padding
<span class="source-link">[[Source]](src/gtk3/GtkCellRenderer.md#L177)</span>


Sets the renderer’s padding.


```pony
fun box set_padding(
  xpad_pony: I32 val,
  ypad_pony: I32 val)
: None val
```
#### Parameters

*   xpad_pony: [I32](builtin-I32.md) val
*   ypad_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_sensitive
<span class="source-link">[[Source]](src/gtk3/GtkCellRenderer.md#L183)</span>


Sets the cell renderer’s sensitivity.


```pony
fun box set_sensitive(
  sensitive_pony: Bool val)
: None val
```
#### Parameters

*   sensitive_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_visible
<span class="source-link">[[Source]](src/gtk3/GtkCellRenderer.md#L189)</span>


Sets the cell renderer’s visibility.


```pony
fun box set_visible(
  visible_pony: Bool val)
: None val
```
#### Parameters

*   visible_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### stop_editing
<span class="source-link">[[Source]](src/gtk3/GtkCellRenderer.md#L202)</span>


Informs the cell renderer that the editing is stopped.
If @canceled is %TRUE, the cell renderer will emit the
#GtkCellRenderer::editing-canceled signal.

This function should be called by cell renderer implementations
in response to the #GtkCellEditable::editing-done signal of
#GtkCellEditable.


```pony
fun box stop_editing(
  canceled_pony: Bool val)
: None val
```
#### Parameters

*   canceled_pony: [Bool](builtin-Bool.md) val

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

