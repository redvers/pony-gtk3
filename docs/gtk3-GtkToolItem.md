# GtkToolItem
<span class="source-link">[[Source]](src/gtk3/GtkToolItem.md#L6)</span>
```pony
class ref GtkToolItem is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkToolItem.md#L10)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkToolItem ref^
```

#### Returns

* [GtkToolItem](gtk3-GtkToolItem.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkToolItem.md#L13)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkToolItem ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkToolItem](gtk3-GtkToolItem.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkToolItem.md#L17)</span>


```pony
new ref create()
: GtkToolItem ref^
```

#### Returns

* [GtkToolItem](gtk3-GtkToolItem.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkToolItem.md#L7)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkToolItem.md#L9)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### get_expand
<span class="source-link">[[Source]](src/gtk3/GtkToolItem.md#L28)</span>


```pony
fun box get_expand()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_homogeneous
<span class="source-link">[[Source]](src/gtk3/GtkToolItem.md#L31)</span>


```pony
fun box get_homogeneous()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_is_important
<span class="source-link">[[Source]](src/gtk3/GtkToolItem.md#L41)</span>


```pony
fun box get_is_important()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_use_drag_window
<span class="source-link">[[Source]](src/gtk3/GtkToolItem.md#L93)</span>


```pony
fun box get_use_drag_window()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_visible_horizontal
<span class="source-link">[[Source]](src/gtk3/GtkToolItem.md#L96)</span>


```pony
fun box get_visible_horizontal()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_visible_vertical
<span class="source-link">[[Source]](src/gtk3/GtkToolItem.md#L99)</span>


```pony
fun box get_visible_vertical()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### rebuild_menu
<span class="source-link">[[Source]](src/gtk3/GtkToolItem.md#L102)</span>


```pony
fun box rebuild_menu()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### set_expand
<span class="source-link">[[Source]](src/gtk3/GtkToolItem.md#L112)</span>


```pony
fun box set_expand(
  expand_pony: Bool val)
: None val
```
#### Parameters

*   expand_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_homogeneous
<span class="source-link">[[Source]](src/gtk3/GtkToolItem.md#L115)</span>


```pony
fun box set_homogeneous(
  homogeneous_pony: Bool val)
: None val
```
#### Parameters

*   homogeneous_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_is_important
<span class="source-link">[[Source]](src/gtk3/GtkToolItem.md#L118)</span>


```pony
fun box set_is_important(
  is_important_pony: Bool val)
: None val
```
#### Parameters

*   is_important_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_use_drag_window
<span class="source-link">[[Source]](src/gtk3/GtkToolItem.md#L134)</span>


```pony
fun box set_use_drag_window(
  use_drag_window_pony: Bool val)
: None val
```
#### Parameters

*   use_drag_window_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_visible_horizontal
<span class="source-link">[[Source]](src/gtk3/GtkToolItem.md#L137)</span>


```pony
fun box set_visible_horizontal(
  visible_horizontal_pony: Bool val)
: None val
```
#### Parameters

*   visible_horizontal_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_visible_vertical
<span class="source-link">[[Source]](src/gtk3/GtkToolItem.md#L140)</span>


```pony
fun box set_visible_vertical(
  visible_vertical_pony: Bool val)
: None val
```
#### Parameters

*   visible_vertical_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### toolbar_reconfigured
<span class="source-link">[[Source]](src/gtk3/GtkToolItem.md#L143)</span>


```pony
fun box toolbar_reconfigured()
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

