# GtkGestureDrag
<span class="source-link">[[Source]](src/gtk3/GtkGestureDrag.md#L6)</span>

#GtkGestureDrag is a #GtkGesture implementation that recognizes drag
operations. The drag operation itself can be tracked throught the
#GtkGestureDrag::drag-begin, #GtkGestureDrag::drag-update and
#GtkGestureDrag::drag-end signals, or the relevant coordinates be
extracted through gtk_gesture_drag_get_offset() and
gtk_gesture_drag_get_start_point().


```pony
class val GtkGestureDrag is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkGestureDrag.md#L19)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkGestureDrag val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkGestureDrag](gtk3-GtkGestureDrag.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkGestureDrag.md#L22)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkGestureDrag val^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkGestureDrag](gtk3-GtkGestureDrag.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkGestureDrag.md#L25)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkGestureDrag val^
```

#### Returns

* [GtkGestureDrag](gtk3-GtkGestureDrag.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkGestureDrag.md#L29)</span>


```pony
new val create(
  widget_pony: GtkWidget val)
: GtkGestureDrag val^
```
#### Parameters

*   widget_pony: [GtkWidget](gtk3-GtkWidget.md) val

#### Returns

* [GtkGestureDrag](gtk3-GtkGestureDrag.md) val^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkGestureDrag.md#L15)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkGestureDrag.md#L17)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_offset
<span class="source-link">[[Source]](src/gtk3/GtkGestureDrag.md#L33)</span>


    If the @gesture is active, this function returns %TRUE and
fills in @x and @y with the coordinates of the current point,
as an offset to the starting drag point.

    {:doh, %{argctype: "gdouble*", argname: "x", argtype: "gdouble", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gdouble*", argname: "y", argtype: "gdouble", paramtype: :param, txo: "full"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_offset()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_start_point
<span class="source-link">[[Source]](src/gtk3/GtkGestureDrag.md#L44)</span>


    If the @gesture is active, this function returns %TRUE
and fills in @x and @y with the drag start coordinates,
in window-relative coordinates.

    {:doh, %{argctype: "gdouble*", argname: "x", argtype: "gdouble", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gdouble*", argname: "y", argtype: "gdouble", paramtype: :param, txo: "full"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_start_point()
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

