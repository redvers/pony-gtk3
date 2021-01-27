# GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkBuilder.md#L6)</span>
```pony
class ref GtkBuilder is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkBuilder.md#L10)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkBuilder ref^
```

#### Returns

* [GtkBuilder](gtk3-GtkBuilder.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkBuilder.md#L13)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkBuilder ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkBuilder](gtk3-GtkBuilder.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkBuilder.md#L17)</span>


```pony
new ref create()
: GtkBuilder ref^
```

#### Returns

* [GtkBuilder](gtk3-GtkBuilder.md) ref^

---

### new_from_file
<span class="source-link">[[Source]](src/gtk3/GtkBuilder.md#L20)</span>


```pony
new ref new_from_file(
  filename_pony: String val)
: GtkBuilder ref^
```
#### Parameters

*   filename_pony: [String](builtin-String.md) val

#### Returns

* [GtkBuilder](gtk3-GtkBuilder.md) ref^

---

### new_from_resource
<span class="source-link">[[Source]](src/gtk3/GtkBuilder.md#L23)</span>


```pony
new ref new_from_resource(
  resource_path_pony: String val)
: GtkBuilder ref^
```
#### Parameters

*   resource_path_pony: [String](builtin-String.md) val

#### Returns

* [GtkBuilder](gtk3-GtkBuilder.md) ref^

---

### new_from_string
<span class="source-link">[[Source]](src/gtk3/GtkBuilder.md#L26)</span>


```pony
new ref new_from_string(
  string_pony: String val,
  length_pony: I64 val)
: GtkBuilder ref^
```
#### Parameters

*   string_pony: [String](builtin-String.md) val
*   length_pony: [I64](builtin-I64.md) val

#### Returns

* [GtkBuilder](gtk3-GtkBuilder.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkBuilder.md#L7)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkBuilder.md#L9)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### add_callback_symbol
<span class="source-link">[[Source]](src/gtk3/GtkBuilder.md#L30)</span>


```pony
fun box add_callback_symbol(
  callback_name: String val,
  callback_symbol: @{(GObjectREF)} val)
: None val
```
#### Parameters

*   callback_name: [String](builtin-String.md) val
*   callback_symbol: @{(GObjectREF)} val

#### Returns

* [None](builtin-None.md) val

---

### connect_signals
<span class="source-link">[[Source]](src/gtk3/GtkBuilder.md#L68)</span>


```pony
fun box connect_signals()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### get_translation_domain
<span class="source-link">[[Source]](src/gtk3/GtkBuilder.md#L109)</span>


```pony
fun box get_translation_domain()
: String val
```

#### Returns

* [String](builtin-String.md) val

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

