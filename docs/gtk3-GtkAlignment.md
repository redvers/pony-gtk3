# GtkAlignment
<span class="source-link">[[Source]](src/gtk3/GtkAlignment.md#L6)</span>
```pony
class ref GtkAlignment is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkAlignment.md#L10)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkAlignment ref^
```

#### Returns

* [GtkAlignment](gtk3-GtkAlignment.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkAlignment.md#L13)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkAlignment ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkAlignment](gtk3-GtkAlignment.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkAlignment.md#L17)</span>


```pony
new ref create(
  xalign_pony: F32 val,
  yalign_pony: F32 val,
  xscale_pony: F32 val,
  yscale_pony: F32 val)
: GtkAlignment ref^
```
#### Parameters

*   xalign_pony: [F32](builtin-F32.md) val
*   yalign_pony: [F32](builtin-F32.md) val
*   xscale_pony: [F32](builtin-F32.md) val
*   yscale_pony: [F32](builtin-F32.md) val

#### Returns

* [GtkAlignment](gtk3-GtkAlignment.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkAlignment.md#L7)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkAlignment.md#L9)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### set_padding
<span class="source-link">[[Source]](src/gtk3/GtkAlignment.md#L35)</span>


```pony
fun box set_padding(
  padding_top_pony: U32 val,
  padding_bottom_pony: U32 val,
  padding_left_pony: U32 val,
  padding_right_pony: U32 val)
: None val
```
#### Parameters

*   padding_top_pony: [U32](builtin-U32.md) val
*   padding_bottom_pony: [U32](builtin-U32.md) val
*   padding_left_pony: [U32](builtin-U32.md) val
*   padding_right_pony: [U32](builtin-U32.md) val

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

