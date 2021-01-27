# GtkAssistant
<span class="source-link">[[Source]](src/gtk3/GtkAssistant.md#L6)</span>
```pony
class ref GtkAssistant is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkAssistant.md#L10)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkAssistant ref^
```

#### Returns

* [GtkAssistant](gtk3-GtkAssistant.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkAssistant.md#L13)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkAssistant ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkAssistant](gtk3-GtkAssistant.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkAssistant.md#L17)</span>


```pony
new ref create()
: GtkAssistant ref^
```

#### Returns

* [GtkAssistant](gtk3-GtkAssistant.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkAssistant.md#L7)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkAssistant.md#L9)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### commit
<span class="source-link">[[Source]](src/gtk3/GtkAssistant.md#L29)</span>


```pony
fun box commit()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### get_current_page
<span class="source-link">[[Source]](src/gtk3/GtkAssistant.md#L32)</span>


```pony
fun box get_current_page()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### get_n_pages
<span class="source-link">[[Source]](src/gtk3/GtkAssistant.md#L35)</span>


```pony
fun box get_n_pages()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### next_page
<span class="source-link">[[Source]](src/gtk3/GtkAssistant.md#L82)</span>


```pony
fun box next_page()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### previous_page
<span class="source-link">[[Source]](src/gtk3/GtkAssistant.md#L89)</span>


```pony
fun box previous_page()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### remove_page
<span class="source-link">[[Source]](src/gtk3/GtkAssistant.md#L96)</span>


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
<span class="source-link">[[Source]](src/gtk3/GtkAssistant.md#L99)</span>


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

### update_buttons_state
<span class="source-link">[[Source]](src/gtk3/GtkAssistant.md#L136)</span>


```pony
fun box update_buttons_state()
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

