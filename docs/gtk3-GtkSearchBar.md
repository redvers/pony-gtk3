# GtkSearchBar
<span class="source-link">[[Source]](src/gtk3/GtkSearchBar.md#L6)</span>
```pony
class ref GtkSearchBar is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkSearchBar.md#L10)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkSearchBar ref^
```

#### Returns

* [GtkSearchBar](gtk3-GtkSearchBar.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkSearchBar.md#L13)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkSearchBar ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkSearchBar](gtk3-GtkSearchBar.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkSearchBar.md#L17)</span>


```pony
new ref create()
: GtkSearchBar ref^
```

#### Returns

* [GtkSearchBar](gtk3-GtkSearchBar.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkSearchBar.md#L7)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkSearchBar.md#L9)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### get_search_mode
<span class="source-link">[[Source]](src/gtk3/GtkSearchBar.md#L25)</span>


```pony
fun box get_search_mode()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_show_close_button
<span class="source-link">[[Source]](src/gtk3/GtkSearchBar.md#L28)</span>


```pony
fun box get_show_close_button()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### set_search_mode
<span class="source-link">[[Source]](src/gtk3/GtkSearchBar.md#L35)</span>


```pony
fun box set_search_mode(
  search_mode_pony: Bool val)
: None val
```
#### Parameters

*   search_mode_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_show_close_button
<span class="source-link">[[Source]](src/gtk3/GtkSearchBar.md#L38)</span>


```pony
fun box set_show_close_button(
  visible_pony: Bool val)
: None val
```
#### Parameters

*   visible_pony: [Bool](builtin-Bool.md) val

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

