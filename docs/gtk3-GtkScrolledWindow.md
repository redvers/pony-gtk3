# GtkScrolledWindow
<span class="source-link">[[Source]](src/gtk3/GtkScrolledWindow.md#L6)</span>
```pony
class ref GtkScrolledWindow is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkScrolledWindow.md#L10)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkScrolledWindow ref^
```

#### Returns

* [GtkScrolledWindow](gtk3-GtkScrolledWindow.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkScrolledWindow.md#L13)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkScrolledWindow ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkScrolledWindow](gtk3-GtkScrolledWindow.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkScrolledWindow.md#L17)</span>


```pony
new ref create(
  hadjustment_pony: GtkAdjustment ref,
  vadjustment_pony: GtkAdjustment ref)
: GtkScrolledWindow ref^
```
#### Parameters

*   hadjustment_pony: [GtkAdjustment](gtk3-GtkAdjustment.md) ref
*   vadjustment_pony: [GtkAdjustment](gtk3-GtkAdjustment.md) ref

#### Returns

* [GtkScrolledWindow](gtk3-GtkScrolledWindow.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkScrolledWindow.md#L7)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkScrolledWindow.md#L9)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### get_capture_button_press
<span class="source-link">[[Source]](src/gtk3/GtkScrolledWindow.md#L25)</span>


```pony
fun box get_capture_button_press()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_kinetic_scrolling
<span class="source-link">[[Source]](src/gtk3/GtkScrolledWindow.md#L42)</span>


```pony
fun box get_kinetic_scrolling()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_max_content_height
<span class="source-link">[[Source]](src/gtk3/GtkScrolledWindow.md#L45)</span>


```pony
fun box get_max_content_height()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### get_max_content_width
<span class="source-link">[[Source]](src/gtk3/GtkScrolledWindow.md#L48)</span>


```pony
fun box get_max_content_width()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### get_min_content_height
<span class="source-link">[[Source]](src/gtk3/GtkScrolledWindow.md#L51)</span>


```pony
fun box get_min_content_height()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### get_min_content_width
<span class="source-link">[[Source]](src/gtk3/GtkScrolledWindow.md#L54)</span>


```pony
fun box get_min_content_width()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### get_overlay_scrolling
<span class="source-link">[[Source]](src/gtk3/GtkScrolledWindow.md#L57)</span>


```pony
fun box get_overlay_scrolling()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_propagate_natural_height
<span class="source-link">[[Source]](src/gtk3/GtkScrolledWindow.md#L72)</span>


```pony
fun box get_propagate_natural_height()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_propagate_natural_width
<span class="source-link">[[Source]](src/gtk3/GtkScrolledWindow.md#L75)</span>


```pony
fun box get_propagate_natural_width()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### set_capture_button_press
<span class="source-link">[[Source]](src/gtk3/GtkScrolledWindow.md#L99)</span>


```pony
fun box set_capture_button_press(
  capture_button_press_pony: Bool val)
: None val
```
#### Parameters

*   capture_button_press_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_kinetic_scrolling
<span class="source-link">[[Source]](src/gtk3/GtkScrolledWindow.md#L106)</span>


```pony
fun box set_kinetic_scrolling(
  kinetic_scrolling_pony: Bool val)
: None val
```
#### Parameters

*   kinetic_scrolling_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_max_content_height
<span class="source-link">[[Source]](src/gtk3/GtkScrolledWindow.md#L109)</span>


```pony
fun box set_max_content_height(
  height_pony: I32 val)
: None val
```
#### Parameters

*   height_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_max_content_width
<span class="source-link">[[Source]](src/gtk3/GtkScrolledWindow.md#L112)</span>


```pony
fun box set_max_content_width(
  width_pony: I32 val)
: None val
```
#### Parameters

*   width_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_min_content_height
<span class="source-link">[[Source]](src/gtk3/GtkScrolledWindow.md#L115)</span>


```pony
fun box set_min_content_height(
  height_pony: I32 val)
: None val
```
#### Parameters

*   height_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_min_content_width
<span class="source-link">[[Source]](src/gtk3/GtkScrolledWindow.md#L118)</span>


```pony
fun box set_min_content_width(
  width_pony: I32 val)
: None val
```
#### Parameters

*   width_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_overlay_scrolling
<span class="source-link">[[Source]](src/gtk3/GtkScrolledWindow.md#L121)</span>


```pony
fun box set_overlay_scrolling(
  overlay_scrolling_pony: Bool val)
: None val
```
#### Parameters

*   overlay_scrolling_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_propagate_natural_height
<span class="source-link">[[Source]](src/gtk3/GtkScrolledWindow.md#L133)</span>


```pony
fun box set_propagate_natural_height(
  propagate_pony: Bool val)
: None val
```
#### Parameters

*   propagate_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_propagate_natural_width
<span class="source-link">[[Source]](src/gtk3/GtkScrolledWindow.md#L136)</span>


```pony
fun box set_propagate_natural_width(
  propagate_pony: Bool val)
: None val
```
#### Parameters

*   propagate_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### unset_placement
<span class="source-link">[[Source]](src/gtk3/GtkScrolledWindow.md#L147)</span>


```pony
fun box unset_placement()
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

