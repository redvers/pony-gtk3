# GtkShortcutLabel
<span class="source-link">[[Source]](src/gtk3/GtkShortcutLabel.md#L6)</span>

#GtkShortcutLabel is a widget that represents a single keyboard shortcut or gesture
in the user interface.


```pony
class ref GtkShortcutLabel is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkShortcutLabel.md#L14)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkShortcutLabel ref^
```

#### Returns

* [GtkShortcutLabel](gtk3-GtkShortcutLabel.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkShortcutLabel.md#L17)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkShortcutLabel ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkShortcutLabel](gtk3-GtkShortcutLabel.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkShortcutLabel.md#L21)</span>


```pony
new ref create(
  accelerator_pony: String val)
: GtkShortcutLabel ref^
```
#### Parameters

*   accelerator_pony: [String](builtin-String.md) val

#### Returns

* [GtkShortcutLabel](gtk3-GtkShortcutLabel.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkShortcutLabel.md#L11)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkShortcutLabel.md#L13)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### get_accelerator
<span class="source-link">[[Source]](src/gtk3/GtkShortcutLabel.md#L25)</span>


Retrieves the current accelerator of @self.


```pony
fun box get_accelerator()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_disabled_text
<span class="source-link">[[Source]](src/gtk3/GtkShortcutLabel.md#L33)</span>


Retrieves the text that is displayed when no accelerator is set.


```pony
fun box get_disabled_text()
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

