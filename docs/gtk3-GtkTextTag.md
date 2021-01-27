# GtkTextTag
<span class="source-link">[[Source]](src/gtk3/GtkTextTag.md#L6)</span>
```pony
class ref GtkTextTag is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkTextTag.md#L10)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkTextTag ref^
```

#### Returns

* [GtkTextTag](gtk3-GtkTextTag.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkTextTag.md#L13)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkTextTag ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkTextTag](gtk3-GtkTextTag.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkTextTag.md#L17)</span>


```pony
new ref create(
  name_pony: String val)
: GtkTextTag ref^
```
#### Parameters

*   name_pony: [String](builtin-String.md) val

#### Returns

* [GtkTextTag](gtk3-GtkTextTag.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkTextTag.md#L7)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkTextTag.md#L9)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### changed
<span class="source-link">[[Source]](src/gtk3/GtkTextTag.md#L21)</span>


```pony
fun box changed(
  size_changed_pony: Bool val)
: None val
```
#### Parameters

*   size_changed_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### get_priority
<span class="source-link">[[Source]](src/gtk3/GtkTextTag.md#L30)</span>


```pony
fun box get_priority()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### set_priority
<span class="source-link">[[Source]](src/gtk3/GtkTextTag.md#L33)</span>


```pony
fun box set_priority(
  priority_pony: I32 val)
: None val
```
#### Parameters

*   priority_pony: [I32](builtin-I32.md) val

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

