# GtkSeparatorToolItem
<span class="source-link">[[Source]](src/gtk3/GtkSeparatorToolItem.md#L6)</span>
```pony
class ref GtkSeparatorToolItem is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkSeparatorToolItem.md#L10)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkSeparatorToolItem ref^
```

#### Returns

* [GtkSeparatorToolItem](gtk3-GtkSeparatorToolItem.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkSeparatorToolItem.md#L13)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkSeparatorToolItem ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkSeparatorToolItem](gtk3-GtkSeparatorToolItem.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkSeparatorToolItem.md#L17)</span>


```pony
new ref create()
: GtkSeparatorToolItem ref^
```

#### Returns

* [GtkSeparatorToolItem](gtk3-GtkSeparatorToolItem.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkSeparatorToolItem.md#L7)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkSeparatorToolItem.md#L9)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### get_draw
<span class="source-link">[[Source]](src/gtk3/GtkSeparatorToolItem.md#L21)</span>


```pony
fun box get_draw()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### set_draw
<span class="source-link">[[Source]](src/gtk3/GtkSeparatorToolItem.md#L24)</span>


```pony
fun box set_draw(
  draw_pony: Bool val)
: None val
```
#### Parameters

*   draw_pony: [Bool](builtin-Bool.md) val

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

