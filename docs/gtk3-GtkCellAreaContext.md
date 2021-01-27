# GtkCellAreaContext
<span class="source-link">[[Source]](src/gtk3/GtkCellAreaContext.md#L6)</span>
```pony
class ref GtkCellAreaContext is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkCellAreaContext.md#L10)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkCellAreaContext ref^
```

#### Returns

* [GtkCellAreaContext](gtk3-GtkCellAreaContext.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkCellAreaContext.md#L13)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkCellAreaContext ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkCellAreaContext](gtk3-GtkCellAreaContext.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkCellAreaContext.md#L7)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkCellAreaContext.md#L9)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### allocate
<span class="source-link">[[Source]](src/gtk3/GtkCellAreaContext.md#L19)</span>


```pony
fun box allocate(
  width_pony: I32 val,
  height_pony: I32 val)
: None val
```
#### Parameters

*   width_pony: [I32](builtin-I32.md) val
*   height_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### push_preferred_height
<span class="source-link">[[Source]](src/gtk3/GtkCellAreaContext.md#L54)</span>


```pony
fun box push_preferred_height(
  minimum_height_pony: I32 val,
  natural_height_pony: I32 val)
: None val
```
#### Parameters

*   minimum_height_pony: [I32](builtin-I32.md) val
*   natural_height_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### push_preferred_width
<span class="source-link">[[Source]](src/gtk3/GtkCellAreaContext.md#L57)</span>


```pony
fun box push_preferred_width(
  minimum_width_pony: I32 val,
  natural_width_pony: I32 val)
: None val
```
#### Parameters

*   minimum_width_pony: [I32](builtin-I32.md) val
*   natural_width_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### reset
<span class="source-link">[[Source]](src/gtk3/GtkCellAreaContext.md#L60)</span>


```pony
fun box reset()
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

