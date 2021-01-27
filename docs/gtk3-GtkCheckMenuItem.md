# GtkCheckMenuItem
<span class="source-link">[[Source]](src/gtk3/GtkCheckMenuItem.md#L6)</span>
```pony
class ref GtkCheckMenuItem is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkCheckMenuItem.md#L10)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkCheckMenuItem ref^
```

#### Returns

* [GtkCheckMenuItem](gtk3-GtkCheckMenuItem.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkCheckMenuItem.md#L13)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkCheckMenuItem ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkCheckMenuItem](gtk3-GtkCheckMenuItem.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkCheckMenuItem.md#L17)</span>


```pony
new ref create()
: GtkCheckMenuItem ref^
```

#### Returns

* [GtkCheckMenuItem](gtk3-GtkCheckMenuItem.md) ref^

---

### new_with_label
<span class="source-link">[[Source]](src/gtk3/GtkCheckMenuItem.md#L20)</span>


```pony
new ref new_with_label(
  label_pony: String val)
: GtkCheckMenuItem ref^
```
#### Parameters

*   label_pony: [String](builtin-String.md) val

#### Returns

* [GtkCheckMenuItem](gtk3-GtkCheckMenuItem.md) ref^

---

### new_with_mnemonic
<span class="source-link">[[Source]](src/gtk3/GtkCheckMenuItem.md#L23)</span>


```pony
new ref new_with_mnemonic(
  label_pony: String val)
: GtkCheckMenuItem ref^
```
#### Parameters

*   label_pony: [String](builtin-String.md) val

#### Returns

* [GtkCheckMenuItem](gtk3-GtkCheckMenuItem.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkCheckMenuItem.md#L7)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkCheckMenuItem.md#L9)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### get_active
<span class="source-link">[[Source]](src/gtk3/GtkCheckMenuItem.md#L27)</span>


```pony
fun box get_active()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_draw_as_radio
<span class="source-link">[[Source]](src/gtk3/GtkCheckMenuItem.md#L30)</span>


```pony
fun box get_draw_as_radio()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_inconsistent
<span class="source-link">[[Source]](src/gtk3/GtkCheckMenuItem.md#L33)</span>


```pony
fun box get_inconsistent()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### set_active
<span class="source-link">[[Source]](src/gtk3/GtkCheckMenuItem.md#L36)</span>


```pony
fun box set_active(
  is_active_pony: Bool val)
: None val
```
#### Parameters

*   is_active_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_draw_as_radio
<span class="source-link">[[Source]](src/gtk3/GtkCheckMenuItem.md#L39)</span>


```pony
fun box set_draw_as_radio(
  draw_as_radio_pony: Bool val)
: None val
```
#### Parameters

*   draw_as_radio_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_inconsistent
<span class="source-link">[[Source]](src/gtk3/GtkCheckMenuItem.md#L42)</span>


```pony
fun box set_inconsistent(
  setting_pony: Bool val)
: None val
```
#### Parameters

*   setting_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### toggled
<span class="source-link">[[Source]](src/gtk3/GtkCheckMenuItem.md#L45)</span>


```pony
fun box toggled()
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

