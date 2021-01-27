# GtkToolPalette
<span class="source-link">[[Source]](src/gtk3/GtkToolPalette.md#L6)</span>
```pony
class ref GtkToolPalette is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkToolPalette.md#L10)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkToolPalette ref^
```

#### Returns

* [GtkToolPalette](gtk3-GtkToolPalette.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkToolPalette.md#L13)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkToolPalette ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkToolPalette](gtk3-GtkToolPalette.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkToolPalette.md#L17)</span>


```pony
new ref create()
: GtkToolPalette ref^
```

#### Returns

* [GtkToolPalette](gtk3-GtkToolPalette.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkToolPalette.md#L7)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkToolPalette.md#L9)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### unset_icon_size
<span class="source-link">[[Source]](src/gtk3/GtkToolPalette.md#L113)</span>


```pony
fun box unset_icon_size()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### unset_style
<span class="source-link">[[Source]](src/gtk3/GtkToolPalette.md#L116)</span>


```pony
fun box unset_style()
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

