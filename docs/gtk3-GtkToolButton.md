# GtkToolButton
<span class="source-link">[[Source]](src/gtk3/GtkToolButton.md#L6)</span>
```pony
class ref GtkToolButton is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkToolButton.md#L10)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkToolButton ref^
```

#### Returns

* [GtkToolButton](gtk3-GtkToolButton.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkToolButton.md#L13)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkToolButton ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkToolButton](gtk3-GtkToolButton.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkToolButton.md#L17)</span>


```pony
new ref create(
  icon_widget_pony: GtkWidget ref,
  label_pony: String val)
: GtkToolButton ref^
```
#### Parameters

*   icon_widget_pony: [GtkWidget](gtk3-GtkWidget.md) ref
*   label_pony: [String](builtin-String.md) val

#### Returns

* [GtkToolButton](gtk3-GtkToolButton.md) ref^

---

### new_from_stock
<span class="source-link">[[Source]](src/gtk3/GtkToolButton.md#L20)</span>


```pony
new ref new_from_stock(
  stock_id_pony: String val)
: GtkToolButton ref^
```
#### Parameters

*   stock_id_pony: [String](builtin-String.md) val

#### Returns

* [GtkToolButton](gtk3-GtkToolButton.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkToolButton.md#L7)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkToolButton.md#L9)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### get_icon_name
<span class="source-link">[[Source]](src/gtk3/GtkToolButton.md#L24)</span>


Returns the name of the themed icon for the tool button,
see gtk_tool_button_set_icon_name().


```pony
fun box get_icon_name()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_label
<span class="source-link">[[Source]](src/gtk3/GtkToolButton.md#L40)</span>


Returns the label used by the tool button, or %NULL if the tool button
doesn’t have a label. or uses a the label from a stock item. The returned
string is owned by GTK+, and must not be modified or freed.


```pony
fun box get_label()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_stock_id
<span class="source-link">[[Source]](src/gtk3/GtkToolButton.md#L57)</span>


Returns the name of the stock item. See gtk_tool_button_set_stock_id().
The returned string is owned by GTK+ and must not be freed or modifed.


```pony
fun box get_stock_id()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_use_underline
<span class="source-link">[[Source]](src/gtk3/GtkToolButton.md#L66)</span>


Returns whether underscores in the label property are used as mnemonics
on menu items on the overflow menu. See gtk_tool_button_set_use_underline().


```pony
fun box get_use_underline()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### set_use_underline
<span class="source-link">[[Source]](src/gtk3/GtkToolButton.md#L93)</span>


If set, an underline in the label property indicates that the next character
should be used for the mnemonic accelerator key in the overflow menu. For
example, if the label property is “_Open” and @use_underline is %TRUE,
the label on the tool button will be “Open” and the item on the overflow
menu will have an underlined “O”.

Labels shown on tool buttons never have mnemonics on them; this property
only affects the menu item on the overflow menu.


```pony
fun box set_use_underline(
  use_underline_pony: Bool val)
: None val
```
#### Parameters

*   use_underline_pony: [Bool](builtin-Bool.md) val

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

