# GtkRevealer
<span class="source-link">[[Source]](src/gtk3/GtkRevealer.md#L6)</span>
```pony
class ref GtkRevealer is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkRevealer.md#L10)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkRevealer ref^
```

#### Returns

* [GtkRevealer](gtk3-GtkRevealer.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkRevealer.md#L13)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkRevealer ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkRevealer](gtk3-GtkRevealer.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkRevealer.md#L17)</span>


```pony
new ref create()
: GtkRevealer ref^
```

#### Returns

* [GtkRevealer](gtk3-GtkRevealer.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkRevealer.md#L7)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkRevealer.md#L9)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### get_child_revealed
<span class="source-link">[[Source]](src/gtk3/GtkRevealer.md#L21)</span>


```pony
fun box get_child_revealed()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_reveal_child
<span class="source-link">[[Source]](src/gtk3/GtkRevealer.md#L24)</span>


```pony
fun box get_reveal_child()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_transition_duration
<span class="source-link">[[Source]](src/gtk3/GtkRevealer.md#L27)</span>


```pony
fun box get_transition_duration()
: U32 val
```

#### Returns

* [U32](builtin-U32.md) val

---

### set_reveal_child
<span class="source-link">[[Source]](src/gtk3/GtkRevealer.md#L37)</span>


```pony
fun box set_reveal_child(
  reveal_child_pony: Bool val)
: None val
```
#### Parameters

*   reveal_child_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_transition_duration
<span class="source-link">[[Source]](src/gtk3/GtkRevealer.md#L40)</span>


```pony
fun box set_transition_duration(
  duration_pony: U32 val)
: None val
```
#### Parameters

*   duration_pony: [U32](builtin-U32.md) val

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

