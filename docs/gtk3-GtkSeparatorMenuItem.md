# GtkSeparatorMenuItem
<span class="source-link">[[Source]](src/gtk3/GtkSeparatorMenuItem.md#L6)</span>

The #GtkSeparatorMenuItem is a separator used to group
items within a menu. It displays a horizontal line with a shadow to
make it appear sunken into the interface.

# CSS nodes

GtkSeparatorMenuItem has a single CSS node with name separator.


```pony
class ref GtkSeparatorMenuItem is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkSeparatorMenuItem.md#L19)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkSeparatorMenuItem ref^
```

#### Returns

* [GtkSeparatorMenuItem](gtk3-GtkSeparatorMenuItem.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkSeparatorMenuItem.md#L22)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkSeparatorMenuItem ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkSeparatorMenuItem](gtk3-GtkSeparatorMenuItem.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkSeparatorMenuItem.md#L26)</span>


```pony
new ref create()
: GtkSeparatorMenuItem ref^
```

#### Returns

* [GtkSeparatorMenuItem](gtk3-GtkSeparatorMenuItem.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkSeparatorMenuItem.md#L16)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkSeparatorMenuItem.md#L18)</span>


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

