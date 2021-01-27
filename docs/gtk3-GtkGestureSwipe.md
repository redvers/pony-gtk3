# GtkGestureSwipe
<span class="source-link">[[Source]](src/gtk3/GtkGestureSwipe.md#L6)</span>

#GtkGestureSwipe is a #GtkGesture implementation able to recognize
swipes, after a press/move/.../move/release sequence happens, the
#GtkGestureSwipe::swipe signal will be emitted, providing the velocity
and directionality of the sequence at the time it was lifted.

If the velocity is desired in intermediate points,
gtk_gesture_swipe_get_velocity() can be called on eg. a
#GtkGesture::update handler.

All velocities are reported in pixels/sec units.


```pony
class ref GtkGestureSwipe is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkGestureSwipe.md#L22)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkGestureSwipe ref^
```

#### Returns

* [GtkGestureSwipe](gtk3-GtkGestureSwipe.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkGestureSwipe.md#L25)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkGestureSwipe ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkGestureSwipe](gtk3-GtkGestureSwipe.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkGestureSwipe.md#L29)</span>


```pony
new ref create(
  widget_pony: GtkWidget ref)
: GtkGestureSwipe ref^
```
#### Parameters

*   widget_pony: [GtkWidget](gtk3-GtkWidget.md) ref

#### Returns

* [GtkGestureSwipe](gtk3-GtkGestureSwipe.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkGestureSwipe.md#L19)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkGestureSwipe.md#L21)</span>


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

