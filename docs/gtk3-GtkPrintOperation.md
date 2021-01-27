# GtkPrintOperation
<span class="source-link">[[Source]](src/gtk3/GtkPrintOperation.md#L6)</span>
```pony
class ref GtkPrintOperation is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkPrintOperation.md#L10)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkPrintOperation ref^
```

#### Returns

* [GtkPrintOperation](gtk3-GtkPrintOperation.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkPrintOperation.md#L13)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkPrintOperation ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkPrintOperation](gtk3-GtkPrintOperation.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkPrintOperation.md#L17)</span>


```pony
new ref create()
: GtkPrintOperation ref^
```

#### Returns

* [GtkPrintOperation](gtk3-GtkPrintOperation.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkPrintOperation.md#L7)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkPrintOperation.md#L9)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### cancel
<span class="source-link">[[Source]](src/gtk3/GtkPrintOperation.md#L21)</span>


```pony
fun box cancel()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### draw_page_finish
<span class="source-link">[[Source]](src/gtk3/GtkPrintOperation.md#L24)</span>


```pony
fun box draw_page_finish()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### get_embed_page_setup
<span class="source-link">[[Source]](src/gtk3/GtkPrintOperation.md#L34)</span>


```pony
fun box get_embed_page_setup()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_error
<span class="source-link">[[Source]](src/gtk3/GtkPrintOperation.md#L37)</span>


```pony
fun box get_error()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### get_has_selection
<span class="source-link">[[Source]](src/gtk3/GtkPrintOperation.md#L40)</span>


```pony
fun box get_has_selection()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_n_pages_to_print
<span class="source-link">[[Source]](src/gtk3/GtkPrintOperation.md#L43)</span>


```pony
fun box get_n_pages_to_print()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### get_status_string
<span class="source-link">[[Source]](src/gtk3/GtkPrintOperation.md#L60)</span>


```pony
fun box get_status_string()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_support_selection
<span class="source-link">[[Source]](src/gtk3/GtkPrintOperation.md#L65)</span>


```pony
fun box get_support_selection()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### is_finished
<span class="source-link">[[Source]](src/gtk3/GtkPrintOperation.md#L68)</span>


```pony
fun box is_finished()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### set_allow_async
<span class="source-link">[[Source]](src/gtk3/GtkPrintOperation.md#L78)</span>


```pony
fun box set_allow_async(
  allow_async_pony: Bool val)
: None val
```
#### Parameters

*   allow_async_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_current_page
<span class="source-link">[[Source]](src/gtk3/GtkPrintOperation.md#L81)</span>


```pony
fun box set_current_page(
  current_page_pony: I32 val)
: None val
```
#### Parameters

*   current_page_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_defer_drawing
<span class="source-link">[[Source]](src/gtk3/GtkPrintOperation.md#L92)</span>


```pony
fun box set_defer_drawing()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### set_embed_page_setup
<span class="source-link">[[Source]](src/gtk3/GtkPrintOperation.md#L95)</span>


```pony
fun box set_embed_page_setup(
  embed_pony: Bool val)
: None val
```
#### Parameters

*   embed_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_has_selection
<span class="source-link">[[Source]](src/gtk3/GtkPrintOperation.md#L102)</span>


```pony
fun box set_has_selection(
  has_selection_pony: Bool val)
: None val
```
#### Parameters

*   has_selection_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_n_pages
<span class="source-link">[[Source]](src/gtk3/GtkPrintOperation.md#L109)</span>


```pony
fun box set_n_pages(
  n_pages_pony: I32 val)
: None val
```
#### Parameters

*   n_pages_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_show_progress
<span class="source-link">[[Source]](src/gtk3/GtkPrintOperation.md#L116)</span>


```pony
fun box set_show_progress(
  show_progress_pony: Bool val)
: None val
```
#### Parameters

*   show_progress_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_support_selection
<span class="source-link">[[Source]](src/gtk3/GtkPrintOperation.md#L119)</span>


```pony
fun box set_support_selection(
  support_selection_pony: Bool val)
: None val
```
#### Parameters

*   support_selection_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_track_print_status
<span class="source-link">[[Source]](src/gtk3/GtkPrintOperation.md#L122)</span>


```pony
fun box set_track_print_status(
  track_status_pony: Bool val)
: None val
```
#### Parameters

*   track_status_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_use_full_page
<span class="source-link">[[Source]](src/gtk3/GtkPrintOperation.md#L129)</span>


```pony
fun box set_use_full_page(
  full_page_pony: Bool val)
: None val
```
#### Parameters

*   full_page_pony: [Bool](builtin-Bool.md) val

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

