# GtkFontSelectionDialog
<span class="source-link">[[Source]](src/gtk3/GtkFontSelectionDialog.md#L6)</span>
```pony
class ref GtkFontSelectionDialog is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkFontSelectionDialog.md#L10)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkFontSelectionDialog ref^
```

#### Returns

* [GtkFontSelectionDialog](gtk3-GtkFontSelectionDialog.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkFontSelectionDialog.md#L13)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkFontSelectionDialog ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkFontSelectionDialog](gtk3-GtkFontSelectionDialog.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkFontSelectionDialog.md#L17)</span>


```pony
new ref create(
  title_pony: String val)
: GtkFontSelectionDialog ref^
```
#### Parameters

*   title_pony: [String](builtin-String.md) val

#### Returns

* [GtkFontSelectionDialog](gtk3-GtkFontSelectionDialog.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkFontSelectionDialog.md#L7)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkFontSelectionDialog.md#L9)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### get_preview_text
<span class="source-link">[[Source]](src/gtk3/GtkFontSelectionDialog.md#L49)</span>


Gets the text displayed in the preview area.


```pony
fun box get_preview_text()
: String val
```

#### Returns

* [String](builtin-String.md) val

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
<span class="source-link">[[Source]](src/gtk3/GtkWidget.md#L7)</span>


```pony
fun box destroy()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### signal_connect\[V: [Any](builtin-Any.md) #share\]
<span class="source-link">[[Source]](src/gtk3/GtkWidget.md#L10)</span>


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

