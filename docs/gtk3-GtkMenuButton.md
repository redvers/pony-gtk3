# GtkMenuButton
<span class="source-link">[[Source]](src/gtk3/GtkMenuButton.md#L6)</span>
```pony
class ref GtkMenuButton is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkMenuButton.md#L10)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkMenuButton ref^
```

#### Returns

* [GtkMenuButton](gtk3-GtkMenuButton.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkMenuButton.md#L13)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkMenuButton ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkMenuButton](gtk3-GtkMenuButton.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkMenuButton.md#L17)</span>


```pony
new ref create()
: GtkMenuButton ref^
```

#### Returns

* [GtkMenuButton](gtk3-GtkMenuButton.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkMenuButton.md#L7)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkMenuButton.md#L9)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### get_use_popover
<span class="source-link">[[Source]](src/gtk3/GtkMenuButton.md#L56)</span>


Returns whether a #GtkPopover or a #GtkMenu will be constructed
from the menu model.


```pony
fun box get_use_popover()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### set_use_popover
<span class="source-link">[[Source]](src/gtk3/GtkMenuButton.md#L83)</span>


Sets whether to construct a #GtkPopover instead of #GtkMenu
when gtk_menu_button_set_menu_model() is called. Note that
this property is only consulted when a new menu model is set.


```pony
fun box set_use_popover(
  use_popover_pony: Bool val)
: None val
```
#### Parameters

*   use_popover_pony: [Bool](builtin-Bool.md) val

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

