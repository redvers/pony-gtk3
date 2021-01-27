# GtkLevelBar
<span class="source-link">[[Source]](src/gtk3/GtkLevelBar.md#L6)</span>
```pony
class ref GtkLevelBar is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkLevelBar.md#L10)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkLevelBar ref^
```

#### Returns

* [GtkLevelBar](gtk3-GtkLevelBar.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkLevelBar.md#L13)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkLevelBar ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkLevelBar](gtk3-GtkLevelBar.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkLevelBar.md#L17)</span>


```pony
new ref create()
: GtkLevelBar ref^
```

#### Returns

* [GtkLevelBar](gtk3-GtkLevelBar.md) ref^

---

### new_for_interval
<span class="source-link">[[Source]](src/gtk3/GtkLevelBar.md#L20)</span>


```pony
new ref new_for_interval(
  min_value_pony: F64 val,
  max_value_pony: F64 val)
: GtkLevelBar ref^
```
#### Parameters

*   min_value_pony: [F64](builtin-F64.md) val
*   max_value_pony: [F64](builtin-F64.md) val

#### Returns

* [GtkLevelBar](gtk3-GtkLevelBar.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkLevelBar.md#L7)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkLevelBar.md#L9)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### get_inverted
<span class="source-link">[[Source]](src/gtk3/GtkLevelBar.md#L29)</span>


```pony
fun box get_inverted()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### set_inverted
<span class="source-link">[[Source]](src/gtk3/GtkLevelBar.md#L69)</span>


```pony
fun box set_inverted(
  inverted_pony: Bool val)
: None val
```
#### Parameters

*   inverted_pony: [Bool](builtin-Bool.md) val

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

