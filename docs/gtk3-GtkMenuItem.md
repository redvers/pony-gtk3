# GtkMenuItem
<span class="source-link">[[Source]](src/gtk3/GtkMenuItem.md#L6)</span>
```pony
class ref GtkMenuItem is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkMenuItem.md#L10)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkMenuItem ref^
```

#### Returns

* [GtkMenuItem](gtk3-GtkMenuItem.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkMenuItem.md#L13)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkMenuItem ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkMenuItem](gtk3-GtkMenuItem.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkMenuItem.md#L17)</span>


```pony
new ref create()
: GtkMenuItem ref^
```

#### Returns

* [GtkMenuItem](gtk3-GtkMenuItem.md) ref^

---

### new_with_label
<span class="source-link">[[Source]](src/gtk3/GtkMenuItem.md#L20)</span>


```pony
new ref new_with_label(
  label_pony: String val)
: GtkMenuItem ref^
```
#### Parameters

*   label_pony: [String](builtin-String.md) val

#### Returns

* [GtkMenuItem](gtk3-GtkMenuItem.md) ref^

---

### new_with_mnemonic
<span class="source-link">[[Source]](src/gtk3/GtkMenuItem.md#L23)</span>


```pony
new ref new_with_mnemonic(
  label_pony: String val)
: GtkMenuItem ref^
```
#### Parameters

*   label_pony: [String](builtin-String.md) val

#### Returns

* [GtkMenuItem](gtk3-GtkMenuItem.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkMenuItem.md#L7)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkMenuItem.md#L9)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### activate
<span class="source-link">[[Source]](src/gtk3/GtkMenuItem.md#L27)</span>


Emits the #GtkMenuItem::activate signal on the given item


```pony
fun box activate()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### deselect
<span class="source-link">[[Source]](src/gtk3/GtkMenuItem.md#L33)</span>


Emits the #GtkMenuItem::deselect signal on the given item.


```pony
fun box deselect()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### get_accel_path
<span class="source-link">[[Source]](src/gtk3/GtkMenuItem.md#L39)</span>


Retrieve the accelerator path that was previously set on @menu_item.

See gtk_menu_item_set_accel_path() for details.


```pony
fun box get_accel_path()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_label
<span class="source-link">[[Source]](src/gtk3/GtkMenuItem.md#L49)</span>


Sets @text on the @menu_item label


```pony
fun box get_label()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_reserve_indicator
<span class="source-link">[[Source]](src/gtk3/GtkMenuItem.md#L57)</span>


Returns whether the @menu_item reserves space for
the submenu indicator, regardless if it has a submenu
or not.


```pony
fun box get_reserve_indicator()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_right_justified
<span class="source-link">[[Source]](src/gtk3/GtkMenuItem.md#L65)</span>


Gets whether the menu item appears justified at the right
side of the menu bar.


```pony
fun box get_right_justified()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_use_underline
<span class="source-link">[[Source]](src/gtk3/GtkMenuItem.md#L79)</span>


Checks if an underline in the text indicates the next character
should be used for the mnemonic accelerator key.


```pony
fun box get_use_underline()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### select
<span class="source-link">[[Source]](src/gtk3/GtkMenuItem.md#L86)</span>


Emits the #GtkMenuItem::select signal on the given item.


```pony
fun box select()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### set_reserve_indicator
<span class="source-link">[[Source]](src/gtk3/GtkMenuItem.md#L100)</span>


Sets whether the @menu_item should reserve space for
the submenu indicator, regardless if it actually has
a submenu or not.

There should be little need for applications to call
this functions.


```pony
fun box set_reserve_indicator(
  reserve_pony: Bool val)
: None val
```
#### Parameters

*   reserve_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_right_justified
<span class="source-link">[[Source]](src/gtk3/GtkMenuItem.md#L111)</span>


Sets whether the menu item appears justified at the right
side of a menu bar. This was traditionally done for “Help”
menu items, but is now considered a bad idea. (If the widget
layout is reversed for a right-to-left language like Hebrew
or Arabic, right-justified-menu-items appear at the left.)


```pony
fun box set_right_justified(
  right_justified_pony: Bool val)
: None val
```
#### Parameters

*   right_justified_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_use_underline
<span class="source-link">[[Source]](src/gtk3/GtkMenuItem.md#L125)</span>


If true, an underline in the text indicates the next character
should be used for the mnemonic accelerator key.


```pony
fun box set_use_underline(
  setting_pony: Bool val)
: None val
```
#### Parameters

*   setting_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### toggle_size_allocate
<span class="source-link">[[Source]](src/gtk3/GtkMenuItem.md#L132)</span>


Emits the #GtkMenuItem::toggle-size-allocate signal on the given item.


```pony
fun box toggle_size_allocate(
  allocation_pony: I32 val)
: None val
```
#### Parameters

*   allocation_pony: [I32](builtin-I32.md) val

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

