# GtkRange
<span class="source-link">[[Source]](src/gtk3/GtkRange.md#L6)</span>
```pony
class ref GtkRange is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkRange.md#L10)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkRange ref^
```

#### Returns

* [GtkRange](gtk3-GtkRange.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkRange.md#L13)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkRange ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkRange](gtk3-GtkRange.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkRange.md#L7)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkRange.md#L9)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### get_flippable
<span class="source-link">[[Source]](src/gtk3/GtkRange.md#L33)</span>


```pony
fun box get_flippable()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_inverted
<span class="source-link">[[Source]](src/gtk3/GtkRange.md#L36)</span>


```pony
fun box get_inverted()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_min_slider_size
<span class="source-link">[[Source]](src/gtk3/GtkRange.md#L46)</span>


```pony
fun box get_min_slider_size()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### get_restrict_to_fill_level
<span class="source-link">[[Source]](src/gtk3/GtkRange.md#L53)</span>


```pony
fun box get_restrict_to_fill_level()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_round_digits
<span class="source-link">[[Source]](src/gtk3/GtkRange.md#L56)</span>


```pony
fun box get_round_digits()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### get_show_fill_level
<span class="source-link">[[Source]](src/gtk3/GtkRange.md#L59)</span>


```pony
fun box get_show_fill_level()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_slider_size_fixed
<span class="source-link">[[Source]](src/gtk3/GtkRange.md#L67)</span>


```pony
fun box get_slider_size_fixed()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### set_flippable
<span class="source-link">[[Source]](src/gtk3/GtkRange.md#L92)</span>


```pony
fun box set_flippable(
  flippable_pony: Bool val)
: None val
```
#### Parameters

*   flippable_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_inverted
<span class="source-link">[[Source]](src/gtk3/GtkRange.md#L100)</span>


```pony
fun box set_inverted(
  setting_pony: Bool val)
: None val
```
#### Parameters

*   setting_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_min_slider_size
<span class="source-link">[[Source]](src/gtk3/GtkRange.md#L107)</span>


```pony
fun box set_min_slider_size(
  min_size_pony: I32 val)
: None val
```
#### Parameters

*   min_size_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_restrict_to_fill_level
<span class="source-link">[[Source]](src/gtk3/GtkRange.md#L115)</span>


```pony
fun box set_restrict_to_fill_level(
  restrict_to_fill_level_pony: Bool val)
: None val
```
#### Parameters

*   restrict_to_fill_level_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_round_digits
<span class="source-link">[[Source]](src/gtk3/GtkRange.md#L118)</span>


```pony
fun box set_round_digits(
  round_digits_pony: I32 val)
: None val
```
#### Parameters

*   round_digits_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_show_fill_level
<span class="source-link">[[Source]](src/gtk3/GtkRange.md#L121)</span>


```pony
fun box set_show_fill_level(
  show_fill_level_pony: Bool val)
: None val
```
#### Parameters

*   show_fill_level_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_slider_size_fixed
<span class="source-link">[[Source]](src/gtk3/GtkRange.md#L124)</span>


```pony
fun box set_slider_size_fixed(
  size_fixed_pony: Bool val)
: None val
```
#### Parameters

*   size_fixed_pony: [Bool](builtin-Bool.md) val

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

