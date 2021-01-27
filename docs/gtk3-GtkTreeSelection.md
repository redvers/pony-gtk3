# GtkTreeSelection
<span class="source-link">[[Source]](src/gtk3/GtkTreeSelection.md#L6)</span>
```pony
class ref GtkTreeSelection is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkTreeSelection.md#L10)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkTreeSelection ref^
```

#### Returns

* [GtkTreeSelection](gtk3-GtkTreeSelection.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkTreeSelection.md#L13)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkTreeSelection ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkTreeSelection](gtk3-GtkTreeSelection.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkTreeSelection.md#L7)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkTreeSelection.md#L9)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### count_selected_rows
<span class="source-link">[[Source]](src/gtk3/GtkTreeSelection.md#L19)</span>


Returns the number of rows that have been selected in @tree.


```pony
fun box count_selected_rows()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### select_all
<span class="source-link">[[Source]](src/gtk3/GtkTreeSelection.md#L73)</span>


Selects all the nodes. @selection must be set to #GTK_SELECTION_MULTIPLE
mode.


```pony
fun box select_all()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### unselect_all
<span class="source-link">[[Source]](src/gtk3/GtkTreeSelection.md#L108)</span>


Unselects all the nodes.


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

