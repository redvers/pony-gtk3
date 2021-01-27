# GtkHPaned
<span class="source-link">[[Source]](src/gtk3/GtkHPaned.md#L6)</span>

The HPaned widget is a container widget with two
children arranged horizontally. The division between
the two panes is adjustable by the user by dragging
a handle. See #GtkPaned for details.

GtkHPaned has been deprecated, use #GtkPaned instead.


```pony
class ref GtkHPaned is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkHPaned.md#L18)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkHPaned ref^
```

#### Returns

* [GtkHPaned](gtk3-GtkHPaned.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkHPaned.md#L21)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkHPaned ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkHPaned](gtk3-GtkHPaned.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkHPaned.md#L25)</span>


```pony
new ref create()
: GtkHPaned ref^
```

#### Returns

* [GtkHPaned](gtk3-GtkHPaned.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkHPaned.md#L15)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkHPaned.md#L17)</span>


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

