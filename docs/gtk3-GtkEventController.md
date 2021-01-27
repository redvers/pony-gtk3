# GtkEventController
<span class="source-link">[[Source]](src/gtk3/GtkEventController.md#L6)</span>

#GtkEventController is a base, low-level implementation for event
controllers. Those react to a series of #GdkEvents, and possibly trigger
actions as a consequence of those.


```pony
class ref GtkEventController is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkEventController.md#L15)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkEventController ref^
```

#### Returns

* [GtkEventController](gtk3-GtkEventController.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkEventController.md#L18)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkEventController ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkEventController](gtk3-GtkEventController.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkEventController.md#L12)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkEventController.md#L14)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### reset
<span class="source-link">[[Source]](src/gtk3/GtkEventController.md#L42)</span>


Resets the @controller to a clean state. Every interaction
the controller did through #GtkEventController::handle-event
will be dropped at this point.


```pony
fun box reset()
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

