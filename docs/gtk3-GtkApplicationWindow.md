# GtkApplicationWindow
<span class="source-link">[[Source]](src/gtk3/GtkApplicationWindow.md#L6)</span>
```pony
class ref GtkApplicationWindow is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkApplicationWindow.md#L10)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkApplicationWindow ref^
```

#### Returns

* [GtkApplicationWindow](gtk3-GtkApplicationWindow.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkApplicationWindow.md#L13)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkApplicationWindow ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkApplicationWindow](gtk3-GtkApplicationWindow.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkApplicationWindow.md#L17)</span>


```pony
new ref create(
  application_pony: GtkApplication ref)
: GtkApplicationWindow ref^
```
#### Parameters

*   application_pony: [GtkApplication](gtk3-GtkApplication.md) ref

#### Returns

* [GtkApplicationWindow](gtk3-GtkApplicationWindow.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkApplicationWindow.md#L7)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkApplicationWindow.md#L9)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### get_id
<span class="source-link">[[Source]](src/gtk3/GtkApplicationWindow.md#L28)</span>


```pony
fun box get_id()
: U32 val
```

#### Returns

* [U32](builtin-U32.md) val

---

### get_show_menubar
<span class="source-link">[[Source]](src/gtk3/GtkApplicationWindow.md#L31)</span>


```pony
fun box get_show_menubar()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### set_show_menubar
<span class="source-link">[[Source]](src/gtk3/GtkApplicationWindow.md#L38)</span>


```pony
fun box set_show_menubar(
  show_menubar_pony: Bool val)
: None val
```
#### Parameters

*   show_menubar_pony: [Bool](builtin-Bool.md) val

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

