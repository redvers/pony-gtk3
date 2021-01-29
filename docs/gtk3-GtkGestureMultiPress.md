# GtkGestureMultiPress
<span class="source-link">[[Source]](src/gtk3/GtkGestureMultiPress.md#L6)</span>

#GtkGestureMultiPress is a #GtkGesture implementation able to recognize
multiple clicks on a nearby zone, which can be listened for through the
#GtkGestureMultiPress::pressed signal. Whenever time or distance between
clicks exceed the GTK+ defaults, #GtkGestureMultiPress::stopped is emitted,
and the click counter is reset.

Callers may also restrict the area that is considered valid for a >1
touch/button press through gtk_gesture_multi_press_set_area(), so any
click happening outside that area is considered to be a first click of
its own.


```pony
class val GtkGestureMultiPress is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkGestureMultiPress.md#L23)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkGestureMultiPress val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkGestureMultiPress](gtk3-GtkGestureMultiPress.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkGestureMultiPress.md#L26)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkGestureMultiPress val^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkGestureMultiPress](gtk3-GtkGestureMultiPress.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkGestureMultiPress.md#L29)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkGestureMultiPress val^
```

#### Returns

* [GtkGestureMultiPress](gtk3-GtkGestureMultiPress.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkGestureMultiPress.md#L33)</span>


```pony
new val create(
  widget_pony: GtkWidget val)
: GtkGestureMultiPress val^
```
#### Parameters

*   widget_pony: [GtkWidget](gtk3-GtkWidget.md) val

#### Returns

* [GtkGestureMultiPress](gtk3-GtkGestureMultiPress.md) val^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkGestureMultiPress.md#L19)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkGestureMultiPress.md#L21)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_area
<span class="source-link">[[Source]](src/gtk3/GtkGestureMultiPress.md#L37)</span>


    If an area was set through gtk_gesture_multi_press_set_area(),
this function will return %TRUE and fill in @rect with the
press area. See gtk_gesture_multi_press_set_area() for more
details on what the press area represents.

    {:doh, %{argctype: "GdkRectangle*", argname: "rect", argtype: "Gdk.Rectangle", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_area()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_area
<span class="source-link">[[Source]](src/gtk3/GtkGestureMultiPress.md#L48)</span>


    If @rect is non-%NULL, the press area will be checked to be
confined within the rectangle, otherwise the button count
will be reset so the press is seen as being the first one.
If @rect is %NULL, the area will be reset to an unrestricted
state.

Note: The rectangle is only used to determine whether any
non-first click falls within the expected area. This is not
akin to an input shape.

    {:doh, %{argctype: "const GdkRectangle*", argname: "rect", argtype: "Gdk.Rectangle", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_area()
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

