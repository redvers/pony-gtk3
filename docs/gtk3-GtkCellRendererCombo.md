# GtkCellRendererCombo
<span class="source-link">[[Source]](src/gtk3/GtkCellRendererCombo.md#L6)</span>

#GtkCellRendererCombo renders text in a cell like #GtkCellRendererText from
which it is derived. But while #GtkCellRendererText offers a simple entry to
edit the text, #GtkCellRendererCombo offers a #GtkComboBox
widget to edit the text. The values to display in the combo box are taken from
the tree model specified in the #GtkCellRendererCombo:model property.

The combo cell renderer takes care of adding a text cell renderer to the combo
box and sets it to display the column specified by its
#GtkCellRendererCombo:text-column property. Further properties of the combo box
can be set in a handler for the #GtkCellRenderer::editing-started signal.

The #GtkCellRendererCombo cell renderer was added in GTK+ 2.6.


```pony
class ref GtkCellRendererCombo is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkCellRendererCombo.md#L24)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkCellRendererCombo ref^
```

#### Returns

* [GtkCellRendererCombo](gtk3-GtkCellRendererCombo.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkCellRendererCombo.md#L27)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkCellRendererCombo ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkCellRendererCombo](gtk3-GtkCellRendererCombo.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkCellRendererCombo.md#L31)</span>


```pony
new ref create()
: GtkCellRendererCombo ref^
```

#### Returns

* [GtkCellRendererCombo](gtk3-GtkCellRendererCombo.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkCellRendererCombo.md#L21)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkCellRendererCombo.md#L23)</span>


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

