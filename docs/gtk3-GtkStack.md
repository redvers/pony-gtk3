# GtkStack
<span class="source-link">[[Source]](src/gtk3/GtkStack.md#L6)</span>
```pony
class ref GtkStack is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkStack.md#L10)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkStack ref^
```

#### Returns

* [GtkStack](gtk3-GtkStack.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkStack.md#L13)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkStack ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkStack](gtk3-GtkStack.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkStack.md#L17)</span>


```pony
new ref create()
: GtkStack ref^
```

#### Returns

* [GtkStack](gtk3-GtkStack.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkStack.md#L7)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkStack.md#L9)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### get_hhomogeneous
<span class="source-link">[[Source]](src/gtk3/GtkStack.md#L39)</span>


```pony
fun box get_hhomogeneous()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_homogeneous
<span class="source-link">[[Source]](src/gtk3/GtkStack.md#L42)</span>


```pony
fun box get_homogeneous()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_interpolate_size
<span class="source-link">[[Source]](src/gtk3/GtkStack.md#L45)</span>


```pony
fun box get_interpolate_size()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_transition_duration
<span class="source-link">[[Source]](src/gtk3/GtkStack.md#L48)</span>


```pony
fun box get_transition_duration()
: U32 val
```

#### Returns

* [U32](builtin-U32.md) val

---

### get_transition_running
<span class="source-link">[[Source]](src/gtk3/GtkStack.md#L51)</span>


```pony
fun box get_transition_running()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_vhomogeneous
<span class="source-link">[[Source]](src/gtk3/GtkStack.md#L61)</span>


```pony
fun box get_vhomogeneous()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_visible_child_name
<span class="source-link">[[Source]](src/gtk3/GtkStack.md#L71)</span>


```pony
fun box get_visible_child_name()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### set_hhomogeneous
<span class="source-link">[[Source]](src/gtk3/GtkStack.md#L76)</span>


```pony
fun box set_hhomogeneous(
  hhomogeneous_pony: Bool val)
: None val
```
#### Parameters

*   hhomogeneous_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_homogeneous
<span class="source-link">[[Source]](src/gtk3/GtkStack.md#L79)</span>


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

### set_interpolate_size
<span class="source-link">[[Source]](src/gtk3/GtkStack.md#L82)</span>


```pony
fun box set_interpolate_size(
  interpolate_size_pony: Bool val)
: None val
```
#### Parameters

*   interpolate_size_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_transition_duration
<span class="source-link">[[Source]](src/gtk3/GtkStack.md#L85)</span>


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

### set_vhomogeneous
<span class="source-link">[[Source]](src/gtk3/GtkStack.md#L92)</span>


```pony
fun box set_vhomogeneous(
  vhomogeneous_pony: Bool val)
: None val
```
#### Parameters

*   vhomogeneous_pony: [Bool](builtin-Bool.md) val

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

