# GtkLabel
<span class="source-link">[[Source]](src/gtk3/GtkLabel.md#L6)</span>
```pony
class ref GtkLabel is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkLabel.md#L10)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkLabel ref^
```

#### Returns

* [GtkLabel](gtk3-GtkLabel.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkLabel.md#L13)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkLabel ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkLabel](gtk3-GtkLabel.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkLabel.md#L17)</span>


```pony
new ref create(
  str_pony: String val)
: GtkLabel ref^
```
#### Parameters

*   str_pony: [String](builtin-String.md) val

#### Returns

* [GtkLabel](gtk3-GtkLabel.md) ref^

---

### new_with_mnemonic
<span class="source-link">[[Source]](src/gtk3/GtkLabel.md#L20)</span>


```pony
new ref new_with_mnemonic(
  str_pony: String val)
: GtkLabel ref^
```
#### Parameters

*   str_pony: [String](builtin-String.md) val

#### Returns

* [GtkLabel](gtk3-GtkLabel.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkLabel.md#L7)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkLabel.md#L9)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### get_current_uri
<span class="source-link">[[Source]](src/gtk3/GtkLabel.md#L38)</span>


```pony
fun box get_current_uri()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_label
<span class="source-link">[[Source]](src/gtk3/GtkLabel.md#L57)</span>


```pony
fun box get_label()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_line_wrap
<span class="source-link">[[Source]](src/gtk3/GtkLabel.md#L74)</span>


```pony
fun box get_line_wrap()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_lines
<span class="source-link">[[Source]](src/gtk3/GtkLabel.md#L84)</span>


```pony
fun box get_lines()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### get_max_width_chars
<span class="source-link">[[Source]](src/gtk3/GtkLabel.md#L87)</span>


```pony
fun box get_max_width_chars()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### get_mnemonic_keyval
<span class="source-link">[[Source]](src/gtk3/GtkLabel.md#L90)</span>


```pony
fun box get_mnemonic_keyval()
: U32 val
```

#### Returns

* [U32](builtin-U32.md) val

---

### get_selectable
<span class="source-link">[[Source]](src/gtk3/GtkLabel.md#L100)</span>


```pony
fun box get_selectable()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_single_line_mode
<span class="source-link">[[Source]](src/gtk3/GtkLabel.md#L108)</span>


```pony
fun box get_single_line_mode()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_text
<span class="source-link">[[Source]](src/gtk3/GtkLabel.md#L111)</span>


```pony
fun box get_text()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_track_visited_links
<span class="source-link">[[Source]](src/gtk3/GtkLabel.md#L116)</span>


```pony
fun box get_track_visited_links()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_use_markup
<span class="source-link">[[Source]](src/gtk3/GtkLabel.md#L119)</span>


```pony
fun box get_use_markup()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_use_underline
<span class="source-link">[[Source]](src/gtk3/GtkLabel.md#L122)</span>


```pony
fun box get_use_underline()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_width_chars
<span class="source-link">[[Source]](src/gtk3/GtkLabel.md#L125)</span>


```pony
fun box get_width_chars()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### select_region
<span class="source-link">[[Source]](src/gtk3/GtkLabel.md#L142)</span>


```pony
fun box select_region(
  start_offset_pony: I32 val,
  end_offset_pony: I32 val)
: None val
```
#### Parameters

*   start_offset_pony: [I32](builtin-I32.md) val
*   end_offset_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_line_wrap
<span class="source-link">[[Source]](src/gtk3/GtkLabel.md#L165)</span>


```pony
fun box set_line_wrap(
  wrap_pony: Bool val)
: None val
```
#### Parameters

*   wrap_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_lines
<span class="source-link">[[Source]](src/gtk3/GtkLabel.md#L172)</span>


```pony
fun box set_lines(
  lines_pony: I32 val)
: None val
```
#### Parameters

*   lines_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_max_width_chars
<span class="source-link">[[Source]](src/gtk3/GtkLabel.md#L183)</span>


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

### set_selectable
<span class="source-link">[[Source]](src/gtk3/GtkLabel.md#L194)</span>


```pony
fun box set_selectable(
  setting_pony: Bool val)
: None val
```
#### Parameters

*   setting_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_single_line_mode
<span class="source-link">[[Source]](src/gtk3/GtkLabel.md#L197)</span>


```pony
fun box set_single_line_mode(
  single_line_mode_pony: Bool val)
: None val
```
#### Parameters

*   single_line_mode_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_track_visited_links
<span class="source-link">[[Source]](src/gtk3/GtkLabel.md#L208)</span>


```pony
fun box set_track_visited_links(
  track_links_pony: Bool val)
: None val
```
#### Parameters

*   track_links_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_use_markup
<span class="source-link">[[Source]](src/gtk3/GtkLabel.md#L211)</span>


```pony
fun box set_use_markup(
  setting_pony: Bool val)
: None val
```
#### Parameters

*   setting_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_use_underline
<span class="source-link">[[Source]](src/gtk3/GtkLabel.md#L214)</span>


```pony
fun box set_use_underline(
  setting_pony: Bool val)
: None val
```
#### Parameters

*   setting_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_width_chars
<span class="source-link">[[Source]](src/gtk3/GtkLabel.md#L217)</span>


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

