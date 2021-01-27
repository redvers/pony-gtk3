# GtkCalendar
<span class="source-link">[[Source]](src/gtk3/GtkCalendar.md#L6)</span>
```pony
class ref GtkCalendar is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkCalendar.md#L10)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkCalendar ref^
```

#### Returns

* [GtkCalendar](gtk3-GtkCalendar.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkCalendar.md#L13)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkCalendar ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkCalendar](gtk3-GtkCalendar.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkCalendar.md#L17)</span>


```pony
new ref create()
: GtkCalendar ref^
```

#### Returns

* [GtkCalendar](gtk3-GtkCalendar.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkCalendar.md#L7)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkCalendar.md#L9)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### clear_marks
<span class="source-link">[[Source]](src/gtk3/GtkCalendar.md#L21)</span>


```pony
fun box clear_marks()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### get_day_is_marked
<span class="source-link">[[Source]](src/gtk3/GtkCalendar.md#L30)</span>


```pony
fun box get_day_is_marked(
  day_pony: U32 val)
: Bool val
```
#### Parameters

*   day_pony: [U32](builtin-U32.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_detail_height_rows
<span class="source-link">[[Source]](src/gtk3/GtkCalendar.md#L33)</span>


```pony
fun box get_detail_height_rows()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### get_detail_width_chars
<span class="source-link">[[Source]](src/gtk3/GtkCalendar.md#L36)</span>


```pony
fun box get_detail_width_chars()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### mark_day
<span class="source-link">[[Source]](src/gtk3/GtkCalendar.md#L46)</span>


```pony
fun box mark_day(
  day_pony: U32 val)
: None val
```
#### Parameters

*   day_pony: [U32](builtin-U32.md) val

#### Returns

* [None](builtin-None.md) val

---

### select_day
<span class="source-link">[[Source]](src/gtk3/GtkCalendar.md#L49)</span>


```pony
fun box select_day(
  day_pony: U32 val)
: None val
```
#### Parameters

*   day_pony: [U32](builtin-U32.md) val

#### Returns

* [None](builtin-None.md) val

---

### select_month
<span class="source-link">[[Source]](src/gtk3/GtkCalendar.md#L52)</span>


```pony
fun box select_month(
  month_pony: U32 val,
  year_pony: U32 val)
: None val
```
#### Parameters

*   month_pony: [U32](builtin-U32.md) val
*   year_pony: [U32](builtin-U32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_detail_height_rows
<span class="source-link">[[Source]](src/gtk3/GtkCalendar.md#L61)</span>


```pony
fun box set_detail_height_rows(
  rows_pony: I32 val)
: None val
```
#### Parameters

*   rows_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_detail_width_chars
<span class="source-link">[[Source]](src/gtk3/GtkCalendar.md#L64)</span>


```pony
fun box set_detail_width_chars(
  chars_pony: I32 val)
: None val
```
#### Parameters

*   chars_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### unmark_day
<span class="source-link">[[Source]](src/gtk3/GtkCalendar.md#L71)</span>


```pony
fun box unmark_day(
  day_pony: U32 val)
: None val
```
#### Parameters

*   day_pony: [U32](builtin-U32.md) val

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

