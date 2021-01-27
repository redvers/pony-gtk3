# GtkStyleContext
<span class="source-link">[[Source]](src/gtk3/GtkStyleContext.md#L6)</span>
```pony
class ref GtkStyleContext is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkStyleContext.md#L10)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkStyleContext ref^
```

#### Returns

* [GtkStyleContext](gtk3-GtkStyleContext.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkStyleContext.md#L13)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkStyleContext ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkStyleContext](gtk3-GtkStyleContext.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkStyleContext.md#L17)</span>


```pony
new ref create()
: GtkStyleContext ref^
```

#### Returns

* [GtkStyleContext](gtk3-GtkStyleContext.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkStyleContext.md#L7)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkStyleContext.md#L9)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### get_scale
<span class="source-link">[[Source]](src/gtk3/GtkStyleContext.md#L121)</span>


```pony
fun box get_scale()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### invalidate
<span class="source-link">[[Source]](src/gtk3/GtkStyleContext.md#L172)</span>


```pony
fun box invalidate()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pop_animatable_region
<span class="source-link">[[Source]](src/gtk3/GtkStyleContext.md#L207)</span>


```pony
fun box pop_animatable_region()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### restore
<span class="source-link">[[Source]](src/gtk3/GtkStyleContext.md#L226)</span>


```pony
fun box restore()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### save
<span class="source-link">[[Source]](src/gtk3/GtkStyleContext.md#L229)</span>


```pony
fun box save()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### set_scale
<span class="source-link">[[Source]](src/gtk3/GtkStyleContext.md#L260)</span>


```pony
fun box set_scale(
  scale_pony: I32 val)
: None val
```
#### Parameters

*   scale_pony: [I32](builtin-I32.md) val

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

