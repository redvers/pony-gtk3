# GtkTextMark
<span class="source-link">[[Source]](src/gtk3/GtkTextMark.md#L6)</span>
```pony
class ref GtkTextMark is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkTextMark.md#L10)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkTextMark ref^
```

#### Returns

* [GtkTextMark](gtk3-GtkTextMark.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkTextMark.md#L13)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkTextMark ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkTextMark](gtk3-GtkTextMark.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkTextMark.md#L17)</span>


```pony
new ref create(
  name_pony: String val,
  left_gravity_pony: Bool val)
: GtkTextMark ref^
```
#### Parameters

*   name_pony: [String](builtin-String.md) val
*   left_gravity_pony: [Bool](builtin-Bool.md) val

#### Returns

* [GtkTextMark](gtk3-GtkTextMark.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkTextMark.md#L7)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkTextMark.md#L9)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### get_deleted
<span class="source-link">[[Source]](src/gtk3/GtkTextMark.md#L28)</span>


```pony
fun box get_deleted()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_left_gravity
<span class="source-link">[[Source]](src/gtk3/GtkTextMark.md#L31)</span>


```pony
fun box get_left_gravity()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_name
<span class="source-link">[[Source]](src/gtk3/GtkTextMark.md#L34)</span>


```pony
fun box get_name()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_visible
<span class="source-link">[[Source]](src/gtk3/GtkTextMark.md#L39)</span>


```pony
fun box get_visible()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### set_visible
<span class="source-link">[[Source]](src/gtk3/GtkTextMark.md#L42)</span>


```pony
fun box set_visible(
  setting_pony: Bool val)
: None val
```
#### Parameters

*   setting_pony: [Bool](builtin-Bool.md) val

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

