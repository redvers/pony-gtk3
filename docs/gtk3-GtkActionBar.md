# GtkActionBar
<span class="source-link">[[Source]](src/gtk3/GtkActionBar.md#L6)</span>

GtkActionBar is designed to present contextual actions. It is
expected to be displayed below the content and expand horizontally
to fill the area.

It allows placing children at the start or the end. In addition, it
contains an internal centered box which is centered with respect to
the full width of the box, even if the children at either side take
up different amounts of space.

# CSS nodes

GtkActionBar has a single CSS node with name actionbar.


```pony
class ref GtkActionBar is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkActionBar.md#L24)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkActionBar ref^
```

#### Returns

* [GtkActionBar](gtk3-GtkActionBar.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkActionBar.md#L27)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkActionBar ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkActionBar](gtk3-GtkActionBar.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkActionBar.md#L31)</span>


```pony
new ref create()
: GtkActionBar ref^
```

#### Returns

* [GtkActionBar](gtk3-GtkActionBar.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkActionBar.md#L21)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkActionBar.md#L23)</span>


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

