# GtkMenuShell
<span class="source-link">[[Source]](src/gtk3/GtkMenuShell.md#L6)</span>
```pony
class ref GtkMenuShell is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkMenuShell.md#L10)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkMenuShell ref^
```

#### Returns

* [GtkMenuShell](gtk3-GtkMenuShell.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkMenuShell.md#L13)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkMenuShell ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkMenuShell](gtk3-GtkMenuShell.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkMenuShell.md#L7)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkMenuShell.md#L9)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### cancel
<span class="source-link">[[Source]](src/gtk3/GtkMenuShell.md#L32)</span>


```pony
fun box cancel()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### deactivate
<span class="source-link">[[Source]](src/gtk3/GtkMenuShell.md#L35)</span>


```pony
fun box deactivate()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### deselect
<span class="source-link">[[Source]](src/gtk3/GtkMenuShell.md#L38)</span>


```pony
fun box deselect()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### get_take_focus
<span class="source-link">[[Source]](src/gtk3/GtkMenuShell.md#L55)</span>


```pony
fun box get_take_focus()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### select_first
<span class="source-link">[[Source]](src/gtk3/GtkMenuShell.md#L66)</span>


```pony
fun box select_first(
  search_sensitive_pony: Bool val)
: None val
```
#### Parameters

*   search_sensitive_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_take_focus
<span class="source-link">[[Source]](src/gtk3/GtkMenuShell.md#L73)</span>


```pony
fun box set_take_focus(
  take_focus_pony: Bool val)
: None val
```
#### Parameters

*   take_focus_pony: [Bool](builtin-Bool.md) val

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

