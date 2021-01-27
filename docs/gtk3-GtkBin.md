# GtkBin
<span class="source-link">[[Source]](src/gtk3/GtkBin.md#L6)</span>

The #GtkBin widget is a container with just one child.
It is not very useful itself, but it is useful for deriving subclasses,
since it provides common code needed for handling a single child widget.

Many GTK+ widgets are subclasses of #GtkBin, including #GtkWindow,
#GtkButton, #GtkFrame, #GtkHandleBox or #GtkScrolledWindow.


```pony
class ref GtkBin is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkBin.md#L18)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkBin ref^
```

#### Returns

* [GtkBin](gtk3-GtkBin.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkBin.md#L21)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkBin ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkBin](gtk3-GtkBin.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkBin.md#L15)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkBin.md#L17)</span>


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

