# GtkListBox
<span class="source-link">[[Source]](src/gtk3/GtkListBox.md#L6)</span>
```pony
class ref GtkListBox is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkListBox.md#L10)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkListBox ref^
```

#### Returns

* [GtkListBox](gtk3-GtkListBox.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkListBox.md#L13)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkListBox ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkListBox](gtk3-GtkListBox.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkListBox.md#L17)</span>


```pony
new ref create()
: GtkListBox ref^
```

#### Returns

* [GtkListBox](gtk3-GtkListBox.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkListBox.md#L7)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkListBox.md#L9)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### drag_unhighlight_row
<span class="source-link">[[Source]](src/gtk3/GtkListBox.md#L32)</span>


```pony
fun box drag_unhighlight_row()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### get_activate_on_single_click
<span class="source-link">[[Source]](src/gtk3/GtkListBox.md#L35)</span>


```pony
fun box get_activate_on_single_click()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### invalidate_filter
<span class="source-link">[[Source]](src/gtk3/GtkListBox.md#L84)</span>


```pony
fun box invalidate_filter()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### invalidate_headers
<span class="source-link">[[Source]](src/gtk3/GtkListBox.md#L87)</span>


```pony
fun box invalidate_headers()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### invalidate_sort
<span class="source-link">[[Source]](src/gtk3/GtkListBox.md#L90)</span>


```pony
fun box invalidate_sort()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### select_all
<span class="source-link">[[Source]](src/gtk3/GtkListBox.md#L97)</span>


```pony
fun box select_all()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### set_activate_on_single_click
<span class="source-link">[[Source]](src/gtk3/GtkListBox.md#L109)</span>


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

### unselect_all
<span class="source-link">[[Source]](src/gtk3/GtkListBox.md#L142)</span>


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

