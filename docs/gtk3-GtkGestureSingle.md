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


```pony
fun box get_button()
: U32 val
```

#### Returns

* [U32](builtin-U32.md) val

---

### get_current_button
<span class="source-link">[[Source]](src/gtk3/GtkGestureSingle.md#L22)</span>


```pony
fun box get_current_button()
: U32 val
```

#### Returns

* [U32](builtin-U32.md) val

---

### get_exclusive
<span class="source-link">[[Source]](src/gtk3/GtkGestureSingle.md#L32)</span>


```pony
fun box get_exclusive()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_touch_only
<span class="source-link">[[Source]](src/gtk3/GtkGestureSingle.md#L35)</span>


```pony
fun box get_touch_only()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### set_button
<span class="source-link">[[Source]](src/gtk3/GtkGestureSingle.md#L38)</span>


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
<span class="source-link">[[Source]](src/gtk3/GtkGestureSingle.md#L41)</span>


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
<span class="source-link">[[Source]](src/gtk3/GtkGestureSingle.md#L44)</span>


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
<span class="source-link">[[Source]](src/gtk3/GtkWidget.md#L10)</span>


```pony
fun box destroy()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### signal_connect\[V: [Any](builtin-Any.md) #share\]
<span class="source-link">[[Source]](src/gtk3/GtkWidget.md#L13)</span>


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

