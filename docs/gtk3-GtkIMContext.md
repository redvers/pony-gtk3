# GtkIMContext
<span class="source-link">[[Source]](src/gtk3/GtkIMContext.md#L6)</span>
```pony
class ref GtkIMContext is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkIMContext.md#L10)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkIMContext ref^
```

#### Returns

* [GtkIMContext](gtk3-GtkIMContext.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkIMContext.md#L13)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkIMContext ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkIMContext](gtk3-GtkIMContext.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkIMContext.md#L7)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkIMContext.md#L9)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### delete_surrounding
<span class="source-link">[[Source]](src/gtk3/GtkIMContext.md#L19)</span>


```pony
fun box delete_surrounding(
  offset_pony: I32 val,
  n_chars_pony: I32 val)
: Bool val
```
#### Parameters

*   offset_pony: [I32](builtin-I32.md) val
*   n_chars_pony: [I32](builtin-I32.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

### focus_in
<span class="source-link">[[Source]](src/gtk3/GtkIMContext.md#L26)</span>


```pony
fun box focus_in()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### focus_out
<span class="source-link">[[Source]](src/gtk3/GtkIMContext.md#L29)</span>


```pony
fun box focus_out()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### reset
<span class="source-link">[[Source]](src/gtk3/GtkIMContext.md#L43)</span>


```pony
fun box reset()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### set_use_preedit
<span class="source-link">[[Source]](src/gtk3/GtkIMContext.md#L58)</span>


```pony
fun box set_use_preedit(
  use_preedit_pony: Bool val)
: None val
```
#### Parameters

*   use_preedit_pony: [Bool](builtin-Bool.md) val

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

