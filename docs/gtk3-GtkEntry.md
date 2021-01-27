# GtkEntry
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L6)</span>
```pony
class ref GtkEntry is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L10)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkEntry ref^
```

#### Returns

* [GtkEntry](gtk3-GtkEntry.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L13)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkEntry ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkEntry](gtk3-GtkEntry.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L17)</span>


```pony
new ref create()
: GtkEntry ref^
```

#### Returns

* [GtkEntry](gtk3-GtkEntry.md) ref^

---

### new_with_buffer
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L20)</span>


```pony
new ref new_with_buffer(
  buffer_pony: GtkEntryBuffer ref)
: GtkEntry ref^
```
#### Parameters

*   buffer_pony: [GtkEntryBuffer](gtk3-GtkEntryBuffer.md) ref

#### Returns

* [GtkEntry](gtk3-GtkEntry.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L7)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L9)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### get_activates_default
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L24)</span>


```pony
fun box get_activates_default()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_current_icon_drag_source
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L55)</span>


```pony
fun box get_current_icon_drag_source()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### get_has_frame
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L65)</span>


```pony
fun box get_has_frame()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_icon_at_pos
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L77)</span>


```pony
fun box get_icon_at_pos(
  x_pony: I32 val,
  y_pony: I32 val)
: I32 val
```
#### Parameters

*   x_pony: [I32](builtin-I32.md) val
*   y_pony: [I32](builtin-I32.md) val

#### Returns

* [I32](builtin-I32.md) val

---

### get_max_length
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L167)</span>


```pony
fun box get_max_length()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### get_max_width_chars
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L170)</span>


```pony
fun box get_max_width_chars()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### get_overwrite_mode
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L173)</span>


```pony
fun box get_overwrite_mode()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_placeholder_text
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L176)</span>


```pony
fun box get_placeholder_text()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_text
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L202)</span>


```pony
fun box get_text()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_visibility
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L218)</span>


```pony
fun box get_visibility()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_width_chars
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L221)</span>


```pony
fun box get_width_chars()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### grab_focus_without_selecting
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L224)</span>


```pony
fun box grab_focus_without_selecting()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### layout_index_to_text_index
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L231)</span>


```pony
fun box layout_index_to_text_index(
  layout_index_pony: I32 val)
: I32 val
```
#### Parameters

*   layout_index_pony: [I32](builtin-I32.md) val

#### Returns

* [I32](builtin-I32.md) val

---

### progress_pulse
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L234)</span>


```pony
fun box progress_pulse()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### reset_im_context
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L237)</span>


```pony
fun box reset_im_context()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### set_activates_default
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L240)</span>


```pony
fun box set_activates_default(
  setting_pony: Bool val)
: None val
```
#### Parameters

*   setting_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_has_frame
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L263)</span>


```pony
fun box set_has_frame(
  setting_pony: Bool val)
: None val
```
#### Parameters

*   setting_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_max_length
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L326)</span>


```pony
fun box set_max_length(
  max_pony: I32 val)
: None val
```
#### Parameters

*   max_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_max_width_chars
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L329)</span>


```pony
fun box set_max_width_chars(
  n_chars_pony: I32 val)
: None val
```
#### Parameters

*   n_chars_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_overwrite_mode
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L332)</span>


```pony
fun box set_overwrite_mode(
  overwrite_pony: Bool val)
: None val
```
#### Parameters

*   overwrite_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_visibility
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L355)</span>


```pony
fun box set_visibility(
  visible_pony: Bool val)
: None val
```
#### Parameters

*   visible_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_width_chars
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L358)</span>


```pony
fun box set_width_chars(
  n_chars_pony: I32 val)
: None val
```
#### Parameters

*   n_chars_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### text_index_to_layout_index
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L361)</span>


```pony
fun box text_index_to_layout_index(
  text_index_pony: I32 val)
: I32 val
```
#### Parameters

*   text_index_pony: [I32](builtin-I32.md) val

#### Returns

* [I32](builtin-I32.md) val

---

### unset_invisible_char
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L364)</span>


```pony
fun box unset_invisible_char()
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

