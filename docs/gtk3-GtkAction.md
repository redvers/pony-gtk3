# GtkAction
<span class="source-link">[[Source]](src/gtk3/GtkAction.md#L6)</span>
```pony
class ref GtkAction is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkAction.md#L10)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkAction ref^
```

#### Returns

* [GtkAction](gtk3-GtkAction.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkAction.md#L13)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkAction ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkAction](gtk3-GtkAction.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkAction.md#L17)</span>


```pony
new ref create(
  name_pony: String val,
  label_pony: String val,
  tooltip_pony: String val,
  stock_id_pony: String val)
: GtkAction ref^
```
#### Parameters

*   name_pony: [String](builtin-String.md) val
*   label_pony: [String](builtin-String.md) val
*   tooltip_pony: [String](builtin-String.md) val
*   stock_id_pony: [String](builtin-String.md) val

#### Returns

* [GtkAction](gtk3-GtkAction.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkAction.md#L7)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkAction.md#L9)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### activate
<span class="source-link">[[Source]](src/gtk3/GtkAction.md#L21)</span>


```pony
fun box activate()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### block_activate
<span class="source-link">[[Source]](src/gtk3/GtkAction.md#L24)</span>


```pony
fun box block_activate()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### connect_accelerator
<span class="source-link">[[Source]](src/gtk3/GtkAction.md#L27)</span>


```pony
fun box connect_accelerator()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### disconnect_accelerator
<span class="source-link">[[Source]](src/gtk3/GtkAction.md#L58)</span>


```pony
fun box disconnect_accelerator()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### get_accel_path
<span class="source-link">[[Source]](src/gtk3/GtkAction.md#L68)</span>


```pony
fun box get_accel_path()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_always_show_image
<span class="source-link">[[Source]](src/gtk3/GtkAction.md#L73)</span>


```pony
fun box get_always_show_image()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_icon_name
<span class="source-link">[[Source]](src/gtk3/GtkAction.md#L83)</span>


```pony
fun box get_icon_name()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_is_important
<span class="source-link">[[Source]](src/gtk3/GtkAction.md#L88)</span>


```pony
fun box get_is_important()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_label
<span class="source-link">[[Source]](src/gtk3/GtkAction.md#L91)</span>


```pony
fun box get_label()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_name
<span class="source-link">[[Source]](src/gtk3/GtkAction.md#L96)</span>


```pony
fun box get_name()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_sensitive
<span class="source-link">[[Source]](src/gtk3/GtkAction.md#L108)</span>


```pony
fun box get_sensitive()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_short_label
<span class="source-link">[[Source]](src/gtk3/GtkAction.md#L111)</span>


```pony
fun box get_short_label()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_stock_id
<span class="source-link">[[Source]](src/gtk3/GtkAction.md#L116)</span>


```pony
fun box get_stock_id()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_tooltip
<span class="source-link">[[Source]](src/gtk3/GtkAction.md#L121)</span>


```pony
fun box get_tooltip()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_visible
<span class="source-link">[[Source]](src/gtk3/GtkAction.md#L126)</span>


```pony
fun box get_visible()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_visible_horizontal
<span class="source-link">[[Source]](src/gtk3/GtkAction.md#L129)</span>


```pony
fun box get_visible_horizontal()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_visible_vertical
<span class="source-link">[[Source]](src/gtk3/GtkAction.md#L132)</span>


```pony
fun box get_visible_vertical()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### is_sensitive
<span class="source-link">[[Source]](src/gtk3/GtkAction.md#L135)</span>


```pony
fun box is_sensitive()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### is_visible
<span class="source-link">[[Source]](src/gtk3/GtkAction.md#L138)</span>


```pony
fun box is_visible()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### set_always_show_image
<span class="source-link">[[Source]](src/gtk3/GtkAction.md#L149)</span>


```pony
fun box set_always_show_image(
  always_show_pony: Bool val)
: None val
```
#### Parameters

*   always_show_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_is_important
<span class="source-link">[[Source]](src/gtk3/GtkAction.md#L160)</span>


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

### set_sensitive
<span class="source-link">[[Source]](src/gtk3/GtkAction.md#L167)</span>


```pony
fun box set_sensitive(
  sensitive_pony: Bool val)
: None val
```
#### Parameters

*   sensitive_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_visible
<span class="source-link">[[Source]](src/gtk3/GtkAction.md#L182)</span>


```pony
fun box set_visible(
  visible_pony: Bool val)
: None val
```
#### Parameters

*   visible_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_visible_horizontal
<span class="source-link">[[Source]](src/gtk3/GtkAction.md#L185)</span>


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
<span class="source-link">[[Source]](src/gtk3/GtkAction.md#L188)</span>


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

### unblock_activate
<span class="source-link">[[Source]](src/gtk3/GtkAction.md#L191)</span>


```pony
fun box unblock_activate()
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

