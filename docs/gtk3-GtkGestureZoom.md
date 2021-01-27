# GtkGestureZoom
<span class="source-link">[[Source]](src/gtk3/GtkGestureZoom.md#L6)</span>

#GtkGestureZoom is a #GtkGesture implementation able to recognize
pinch/zoom gestures, whenever the distance between both tracked
sequences changes, the #GtkGestureZoom::scale-changed signal is
emitted to report the scale factor.


```pony
class ref GtkGestureZoom is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkGestureZoom.md#L16)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkGestureZoom ref^
```

#### Returns

* [GtkGestureZoom](gtk3-GtkGestureZoom.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkGestureZoom.md#L19)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkGestureZoom ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkGestureZoom](gtk3-GtkGestureZoom.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkGestureZoom.md#L23)</span>


```pony
new ref create(
  widget_pony: GtkWidget ref)
: GtkGestureZoom ref^
```
#### Parameters

*   widget_pony: [GtkWidget](gtk3-GtkWidget.md) ref

#### Returns

* [GtkGestureZoom](gtk3-GtkGestureZoom.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkGestureZoom.md#L13)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkGestureZoom.md#L15)</span>


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

