# GtkGLArea
<span class="source-link">[[Source]](src/gtk3/GtkGLArea.md#L6)</span>
```pony
class ref GtkGLArea is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkGLArea.md#L10)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkGLArea ref^
```

#### Returns

* [GtkGLArea](gtk3-GtkGLArea.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkGLArea.md#L13)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkGLArea ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkGLArea](gtk3-GtkGLArea.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkGLArea.md#L17)</span>


```pony
new ref create()
: GtkGLArea ref^
```

#### Returns

* [GtkGLArea](gtk3-GtkGLArea.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkGLArea.md#L7)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkGLArea.md#L9)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### attach_buffers
<span class="source-link">[[Source]](src/gtk3/GtkGLArea.md#L21)</span>


```pony
fun box attach_buffers()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### get_auto_render
<span class="source-link">[[Source]](src/gtk3/GtkGLArea.md#L24)</span>


```pony
fun box get_auto_render()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_has_alpha
<span class="source-link">[[Source]](src/gtk3/GtkGLArea.md#L41)</span>


```pony
fun box get_has_alpha()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_has_depth_buffer
<span class="source-link">[[Source]](src/gtk3/GtkGLArea.md#L44)</span>


```pony
fun box get_has_depth_buffer()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_has_stencil_buffer
<span class="source-link">[[Source]](src/gtk3/GtkGLArea.md#L47)</span>


```pony
fun box get_has_stencil_buffer()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_use_es
<span class="source-link">[[Source]](src/gtk3/GtkGLArea.md#L55)</span>


```pony
fun box get_use_es()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### make_current
<span class="source-link">[[Source]](src/gtk3/GtkGLArea.md#L58)</span>


```pony
fun box make_current()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### queue_render
<span class="source-link">[[Source]](src/gtk3/GtkGLArea.md#L61)</span>


```pony
fun box queue_render()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### set_auto_render
<span class="source-link">[[Source]](src/gtk3/GtkGLArea.md#L64)</span>


```pony
fun box set_auto_render(
  auto_render_pony: Bool val)
: None val
```
#### Parameters

*   auto_render_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_has_alpha
<span class="source-link">[[Source]](src/gtk3/GtkGLArea.md#L71)</span>


```pony
fun box set_has_alpha(
  has_alpha_pony: Bool val)
: None val
```
#### Parameters

*   has_alpha_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_has_depth_buffer
<span class="source-link">[[Source]](src/gtk3/GtkGLArea.md#L74)</span>


```pony
fun box set_has_depth_buffer(
  has_depth_buffer_pony: Bool val)
: None val
```
#### Parameters

*   has_depth_buffer_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_has_stencil_buffer
<span class="source-link">[[Source]](src/gtk3/GtkGLArea.md#L77)</span>


```pony
fun box set_has_stencil_buffer(
  has_stencil_buffer_pony: Bool val)
: None val
```
#### Parameters

*   has_stencil_buffer_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_required_version
<span class="source-link">[[Source]](src/gtk3/GtkGLArea.md#L80)</span>


```pony
fun box set_required_version(
  major_pony: I32 val,
  minor_pony: I32 val)
: None val
```
#### Parameters

*   major_pony: [I32](builtin-I32.md) val
*   minor_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_use_es
<span class="source-link">[[Source]](src/gtk3/GtkGLArea.md#L83)</span>


```pony
fun box set_use_es(
  use_es_pony: Bool val)
: None val
```
#### Parameters

*   use_es_pony: [Bool](builtin-Bool.md) val

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

