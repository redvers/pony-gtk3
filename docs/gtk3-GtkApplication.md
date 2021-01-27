# GtkApplication
<span class="source-link">[[Source]](src/gtk3/GtkApplication.md#L6)</span>
```pony
class ref GtkApplication is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkApplication.md#L10)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkApplication ref^
```

#### Returns

* [GtkApplication](gtk3-GtkApplication.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkApplication.md#L13)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkApplication ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkApplication](gtk3-GtkApplication.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkApplication.md#L17)</span>


```pony
new ref create(
  application_id_pony: String val,
  flags_pony: GApplicationFlags val)
: GtkApplication ref^
```
#### Parameters

*   application_id_pony: [String](builtin-String.md) val
*   flags_pony: [GApplicationFlags](gtk3-GApplicationFlags.md) val

#### Returns

* [GtkApplication](gtk3-GtkApplication.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkApplication.md#L7)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkApplication.md#L9)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### prefers_app_menu
<span class="source-link">[[Source]](src/gtk3/GtkApplication.md#L104)</span>


```pony
fun box prefers_app_menu()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### uninhibit
<span class="source-link">[[Source]](src/gtk3/GtkApplication.md#L129)</span>


```pony
fun box uninhibit(
  cookie_pony: U32 val)
: None val
```
#### Parameters

*   cookie_pony: [U32](builtin-U32.md) val

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

