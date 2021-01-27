# GtkSpinner
<span class="source-link">[[Source]](src/gtk3/GtkSpinner.md#L6)</span>

A GtkSpinner widget displays an icon-size spinning animation.
It is often used as an alternative to a #GtkProgressBar for
displaying indefinite activity, instead of actual progress.

To start the animation, use gtk_spinner_start(), to stop it
use gtk_spinner_stop().

# CSS nodes

GtkSpinner has a single CSS node with the name spinner. When the animation is
active, the :checked pseudoclass is added to this node.


```pony
class ref GtkSpinner is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkSpinner.md#L23)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkSpinner ref^
```

#### Returns

* [GtkSpinner](gtk3-GtkSpinner.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkSpinner.md#L26)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkSpinner ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkSpinner](gtk3-GtkSpinner.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkSpinner.md#L30)</span>


```pony
new ref create()
: GtkSpinner ref^
```

#### Returns

* [GtkSpinner](gtk3-GtkSpinner.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkSpinner.md#L20)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkSpinner.md#L22)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### start
<span class="source-link">[[Source]](src/gtk3/GtkSpinner.md#L34)</span>


Starts the animation of the spinner.


```pony
fun box start()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### stop
<span class="source-link">[[Source]](src/gtk3/GtkSpinner.md#L40)</span>


Stops the animation of the spinner.


```pony
fun box stop()
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

