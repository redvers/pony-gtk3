# GtkNumerableIcon
<span class="source-link">[[Source]](src/gtk3/GtkNumerableIcon.md#L6)</span>
```pony
class ref GtkNumerableIcon is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkNumerableIcon.md#L10)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkNumerableIcon ref^
```

#### Returns

* [GtkNumerableIcon](gtk3-GtkNumerableIcon.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkNumerableIcon.md#L13)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkNumerableIcon ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkNumerableIcon](gtk3-GtkNumerableIcon.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkNumerableIcon.md#L7)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkNumerableIcon.md#L9)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### get_background_icon_name
<span class="source-link">[[Source]](src/gtk3/GtkNumerableIcon.md#L26)</span>


```pony
fun box get_background_icon_name()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_count
<span class="source-link">[[Source]](src/gtk3/GtkNumerableIcon.md#L31)</span>


```pony
fun box get_count()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### get_label
<span class="source-link">[[Source]](src/gtk3/GtkNumerableIcon.md#L34)</span>


```pony
fun box get_label()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### set_count
<span class="source-link">[[Source]](src/gtk3/GtkNumerableIcon.md#L54)</span>


```pony
fun box set_count(
  count_pony: I32 val)
: None val
```
#### Parameters

*   count_pony: [I32](builtin-I32.md) val

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

