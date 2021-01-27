# GtkNativeDialog
<span class="source-link">[[Source]](src/gtk3/GtkNativeDialog.md#L6)</span>
```pony
class ref GtkNativeDialog is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkNativeDialog.md#L10)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkNativeDialog ref^
```

#### Returns

* [GtkNativeDialog](gtk3-GtkNativeDialog.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkNativeDialog.md#L13)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkNativeDialog ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkNativeDialog](gtk3-GtkNativeDialog.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkNativeDialog.md#L7)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkNativeDialog.md#L9)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### destroy
<span class="source-link">[[Source]](src/gtk3/GtkNativeDialog.md#L19)</span>


```pony
fun box destroy()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### get_modal
<span class="source-link">[[Source]](src/gtk3/GtkNativeDialog.md#L22)</span>


```pony
fun box get_modal()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_visible
<span class="source-link">[[Source]](src/gtk3/GtkNativeDialog.md#L39)</span>


```pony
fun box get_visible()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### hide
<span class="source-link">[[Source]](src/gtk3/GtkNativeDialog.md#L42)</span>


```pony
fun box hide()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### run
<span class="source-link">[[Source]](src/gtk3/GtkNativeDialog.md#L45)</span>


```pony
fun box run()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### set_modal
<span class="source-link">[[Source]](src/gtk3/GtkNativeDialog.md#L48)</span>


```pony
fun box set_modal(
  modal_pony: Bool val)
: None val
```
#### Parameters

*   modal_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### show
<span class="source-link">[[Source]](src/gtk3/GtkNativeDialog.md#L59)</span>


```pony
fun box show()
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

