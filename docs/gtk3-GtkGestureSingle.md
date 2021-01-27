# GtkGestureSingle
<span class="source-link">[[Source]](src/gtk3/GtkGestureSingle.md#L6)</span>
```pony
class ref GtkGestureSingle is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkGestureSingle.md#L10)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkGestureSingle ref^
```

#### Returns

* [GtkGestureSingle](gtk3-GtkGestureSingle.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkGestureSingle.md#L13)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkGestureSingle ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkGestureSingle](gtk3-GtkGestureSingle.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkGestureSingle.md#L7)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkGestureSingle.md#L9)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### get_button
<span class="source-link">[[Source]](src/gtk3/GtkGestureSingle.md#L19)</span>


Returns the button number @gesture listens for, or 0 if @gesture
reacts to any button press.


```pony
fun box get_button()
: U32 val
```

#### Returns

* [U32](builtin-U32.md) val

---

### get_current_button
<span class="source-link">[[Source]](src/gtk3/GtkGestureSingle.md#L26)</span>


Returns the button number currently interacting with @gesture, or 0 if there
is none.


```pony
fun box get_current_button()
: U32 val
```

#### Returns

* [U32](builtin-U32.md) val

---

### get_exclusive
<span class="source-link">[[Source]](src/gtk3/GtkGestureSingle.md#L40)</span>


Gets whether a gesture is exclusive. For more information, see
gtk_gesture_single_set_exclusive().


```pony
fun box get_exclusive()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_touch_only
<span class="source-link">[[Source]](src/gtk3/GtkGestureSingle.md#L47)</span>


Returns %TRUE if the gesture is only triggered by touch events.


```pony
fun box get_touch_only()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### set_button
<span class="source-link">[[Source]](src/gtk3/GtkGestureSingle.md#L53)</span>


Sets the button number @gesture listens to. If non-0, every
button press from a different button number will be ignored.
Touch events implicitly match with button 1.


```pony
fun box set_button(
  button_pony: U32 val)
: None val
```
#### Parameters

*   button_pony: [U32](builtin-U32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_exclusive
<span class="source-link">[[Source]](src/gtk3/GtkGestureSingle.md#L61)</span>


Sets whether @gesture is exclusive. An exclusive gesture will
only handle pointer and "pointer emulated" touch events, so at
any given time, there is only one sequence able to interact with
those.


```pony
fun box set_exclusive(
  exclusive_pony: Bool val)
: None val
```
#### Parameters

*   exclusive_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_touch_only
<span class="source-link">[[Source]](src/gtk3/GtkGestureSingle.md#L70)</span>


If @touch_only is %TRUE, @gesture will only handle events of type
#GDK_TOUCH_BEGIN, #GDK_TOUCH_UPDATE or #GDK_TOUCH_END. If %FALSE,
mouse events will be handled too.


```pony
fun box set_touch_only(
  touch_only_pony: Bool val)
: None val
```
#### Parameters

*   touch_only_pony: [Bool](builtin-Bool.md) val

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

