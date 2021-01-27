# GtkNotebookPageAccessible
<span class="source-link">[[Source]](src/gtk3/GtkNotebookPageAccessible.md#L6)</span>

No documentation provided


```pony
class ref GtkNotebookPageAccessible is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkNotebookPageAccessible.md#L13)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkNotebookPageAccessible ref^
```

#### Returns

* [GtkNotebookPageAccessible](gtk3-GtkNotebookPageAccessible.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkNotebookPageAccessible.md#L16)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkNotebookPageAccessible ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkNotebookPageAccessible](gtk3-GtkNotebookPageAccessible.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkNotebookPageAccessible.md#L20)</span>


```pony
new ref create(
  notebook_pony: GtkNotebookAccessible ref,
  child_pony: GtkWidget ref)
: GtkNotebookPageAccessible ref^
```
#### Parameters

*   notebook_pony: [GtkNotebookAccessible](gtk3-GtkNotebookAccessible.md) ref
*   child_pony: [GtkWidget](gtk3-GtkWidget.md) ref

#### Returns

* [GtkNotebookPageAccessible](gtk3-GtkNotebookPageAccessible.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkNotebookPageAccessible.md#L10)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkNotebookPageAccessible.md#L12)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### invalidate
<span class="source-link">[[Source]](src/gtk3/GtkNotebookPageAccessible.md#L24)</span>


No provided documentation


```pony
fun box invalidate()
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

