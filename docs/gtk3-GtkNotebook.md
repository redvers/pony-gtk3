# GtkNotebook
<span class="source-link">[[Source]](src/gtk3/GtkNotebook.md#L6)</span>
```pony
class ref GtkNotebook is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkNotebook.md#L10)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkNotebook ref^
```

#### Returns

* [GtkNotebook](gtk3-GtkNotebook.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkNotebook.md#L13)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkNotebook ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkNotebook](gtk3-GtkNotebook.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkNotebook.md#L17)</span>


```pony
new ref create()
: GtkNotebook ref^
```

#### Returns

* [GtkNotebook](gtk3-GtkNotebook.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkNotebook.md#L7)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkNotebook.md#L9)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### get_current_page
<span class="source-link">[[Source]](src/gtk3/GtkNotebook.md#L43)</span>


```pony
fun box get_current_page()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### get_group_name
<span class="source-link">[[Source]](src/gtk3/GtkNotebook.md#L46)</span>


```pony
fun box get_group_name()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_n_pages
<span class="source-link">[[Source]](src/gtk3/GtkNotebook.md#L62)</span>


```pony
fun box get_n_pages()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### get_scrollable
<span class="source-link">[[Source]](src/gtk3/GtkNotebook.md#L72)</span>


```pony
fun box get_scrollable()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_show_border
<span class="source-link">[[Source]](src/gtk3/GtkNotebook.md#L75)</span>


```pony
fun box get_show_border()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_show_tabs
<span class="source-link">[[Source]](src/gtk3/GtkNotebook.md#L78)</span>


```pony
fun box get_show_tabs()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### next_page
<span class="source-link">[[Source]](src/gtk3/GtkNotebook.md#L132)</span>


```pony
fun box next_page()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### popup_disable
<span class="source-link">[[Source]](src/gtk3/GtkNotebook.md#L139)</span>


```pony
fun box popup_disable()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### popup_enable
<span class="source-link">[[Source]](src/gtk3/GtkNotebook.md#L142)</span>


```pony
fun box popup_enable()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### prev_page
<span class="source-link">[[Source]](src/gtk3/GtkNotebook.md#L156)</span>


```pony
fun box prev_page()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### remove_page
<span class="source-link">[[Source]](src/gtk3/GtkNotebook.md#L159)</span>


```pony
fun box remove_page(
  page_num_pony: I32 val)
: None val
```
#### Parameters

*   page_num_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_current_page
<span class="source-link">[[Source]](src/gtk3/GtkNotebook.md#L171)</span>


```pony
fun box set_current_page(
  page_num_pony: I32 val)
: None val
```
#### Parameters

*   page_num_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_scrollable
<span class="source-link">[[Source]](src/gtk3/GtkNotebook.md#L188)</span>


```pony
fun box set_scrollable(
  scrollable_pony: Bool val)
: None val
```
#### Parameters

*   scrollable_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_show_border
<span class="source-link">[[Source]](src/gtk3/GtkNotebook.md#L191)</span>


```pony
fun box set_show_border(
  show_border_pony: Bool val)
: None val
```
#### Parameters

*   show_border_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_show_tabs
<span class="source-link">[[Source]](src/gtk3/GtkNotebook.md#L194)</span>


```pony
fun box set_show_tabs(
  show_tabs_pony: Bool val)
: None val
```
#### Parameters

*   show_tabs_pony: [Bool](builtin-Bool.md) val

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

