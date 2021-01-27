# GtkTextView
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L6)</span>
```pony
class ref GtkTextView is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L10)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkTextView ref^
```

#### Returns

* [GtkTextView](gtk3-GtkTextView.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L13)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkTextView ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkTextView](gtk3-GtkTextView.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L17)</span>


```pony
new ref create()
: GtkTextView ref^
```

#### Returns

* [GtkTextView](gtk3-GtkTextView.md) ref^

---

### new_with_buffer
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L20)</span>


```pony
new ref new_with_buffer(
  buffer_pony: GtkTextBuffer ref)
: GtkTextView ref^
```
#### Parameters

*   buffer_pony: [GtkTextBuffer](gtk3-GtkTextBuffer.md) ref

#### Returns

* [GtkTextView](gtk3-GtkTextView.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L7)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L9)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### get_accepts_tab
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L56)</span>


```pony
fun box get_accepts_tab()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_bottom_margin
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L63)</span>


```pony
fun box get_bottom_margin()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### get_cursor_visible
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L79)</span>


```pony
fun box get_cursor_visible()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_editable
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L89)</span>


```pony
fun box get_editable()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_indent
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L99)</span>


```pony
fun box get_indent()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### get_left_margin
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L137)</span>


```pony
fun box get_left_margin()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### get_monospace
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L151)</span>


```pony
fun box get_monospace()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_overwrite
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L154)</span>


```pony
fun box get_overwrite()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_pixels_above_lines
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L157)</span>


```pony
fun box get_pixels_above_lines()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### get_pixels_below_lines
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L160)</span>


```pony
fun box get_pixels_below_lines()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### get_pixels_inside_wrap
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L163)</span>


```pony
fun box get_pixels_inside_wrap()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### get_right_margin
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L166)</span>


```pony
fun box get_right_margin()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### get_top_margin
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L176)</span>


```pony
fun box get_top_margin()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### place_cursor_onscreen
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L227)</span>


```pony
fun box place_cursor_onscreen()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### reset_cursor_blink
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L230)</span>


```pony
fun box reset_cursor_blink()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### reset_im_context
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L233)</span>


```pony
fun box reset_im_context()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### set_accepts_tab
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L254)</span>


```pony
fun box set_accepts_tab(
  accepts_tab_pony: Bool val)
: None val
```
#### Parameters

*   accepts_tab_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_bottom_margin
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L261)</span>


```pony
fun box set_bottom_margin(
  bottom_margin_pony: I32 val)
: None val
```
#### Parameters

*   bottom_margin_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_cursor_visible
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L268)</span>


```pony
fun box set_cursor_visible(
  setting_pony: Bool val)
: None val
```
#### Parameters

*   setting_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_editable
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L271)</span>


```pony
fun box set_editable(
  setting_pony: Bool val)
: None val
```
#### Parameters

*   setting_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_indent
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L274)</span>


```pony
fun box set_indent(
  indent_pony: I32 val)
: None val
```
#### Parameters

*   indent_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_left_margin
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L289)</span>


```pony
fun box set_left_margin(
  left_margin_pony: I32 val)
: None val
```
#### Parameters

*   left_margin_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_monospace
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L292)</span>


```pony
fun box set_monospace(
  monospace_pony: Bool val)
: None val
```
#### Parameters

*   monospace_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_overwrite
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L295)</span>


```pony
fun box set_overwrite(
  overwrite_pony: Bool val)
: None val
```
#### Parameters

*   overwrite_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_pixels_above_lines
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L298)</span>


```pony
fun box set_pixels_above_lines(
  pixels_above_lines_pony: I32 val)
: None val
```
#### Parameters

*   pixels_above_lines_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_pixels_below_lines
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L301)</span>


```pony
fun box set_pixels_below_lines(
  pixels_below_lines_pony: I32 val)
: None val
```
#### Parameters

*   pixels_below_lines_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_pixels_inside_wrap
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L304)</span>


```pony
fun box set_pixels_inside_wrap(
  pixels_inside_wrap_pony: I32 val)
: None val
```
#### Parameters

*   pixels_inside_wrap_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_right_margin
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L307)</span>


```pony
fun box set_right_margin(
  right_margin_pony: I32 val)
: None val
```
#### Parameters

*   right_margin_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_top_margin
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L314)</span>


```pony
fun box set_top_margin(
  top_margin_pony: I32 val)
: None val
```
#### Parameters

*   top_margin_pony: [I32](builtin-I32.md) val

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

