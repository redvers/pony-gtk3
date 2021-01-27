# GtkAspectFrame
<span class="source-link">[[Source]](src/gtk3/GtkAspectFrame.md#L6)</span>
```pony
class ref GtkAspectFrame is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkAspectFrame.md#L10)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkAspectFrame ref^
```

#### Returns

* [GtkAspectFrame](gtk3-GtkAspectFrame.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkAspectFrame.md#L13)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkAspectFrame ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkAspectFrame](gtk3-GtkAspectFrame.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkAspectFrame.md#L17)</span>


```pony
new ref create(
  label_pony: String val,
  xalign_pony: F32 val,
  yalign_pony: F32 val,
  ratio_pony: F32 val,
  obey_child_pony: Bool val)
: GtkAspectFrame ref^
```
#### Parameters

*   label_pony: [String](builtin-String.md) val
*   xalign_pony: [F32](builtin-F32.md) val
*   yalign_pony: [F32](builtin-F32.md) val
*   ratio_pony: [F32](builtin-F32.md) val
*   obey_child_pony: [Bool](builtin-Bool.md) val

#### Returns

* [GtkAspectFrame](gtk3-GtkAspectFrame.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkAspectFrame.md#L7)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkAspectFrame.md#L9)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

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

