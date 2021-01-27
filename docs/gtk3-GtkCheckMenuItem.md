# GtkCheckMenuItem
<span class="source-link">[[Source]](src/gtk3/GtkCheckMenuItem.md#L6)</span>

A #GtkCheckMenuItem is a menu item that maintains the state of a boolean
value in addition to a #GtkMenuItem usual role in activating application
code.

A check box indicating the state of the boolean value is displayed
at the left side of the #GtkMenuItem.  Activating the #GtkMenuItem
toggles the value.

# CSS nodes

|[<!-- language="plain" -->
menuitem
├── check.left
╰── <child>
]|

GtkCheckMenuItem has a main CSS node with name menuitem, and a subnode
with name check, which gets the .left or .right style class.


```pony
class ref GtkCheckMenuItem is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkCheckMenuItem.md#L30)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkCheckMenuItem ref^
```

#### Returns

* [GtkCheckMenuItem](gtk3-GtkCheckMenuItem.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkCheckMenuItem.md#L33)</span>


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
<span class="source-link">[[Source]](src/gtk3/GtkCheckMenuItem.md#L37)</span>


```pony
new ref create()
: GtkCheckMenuItem ref^
```

#### Returns

* [GtkCheckMenuItem](gtk3-GtkCheckMenuItem.md) ref^

---

### new_with_label
<span class="source-link">[[Source]](src/gtk3/GtkCheckMenuItem.md#L40)</span>


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
<span class="source-link">[[Source]](src/gtk3/GtkCheckMenuItem.md#L43)</span>


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
<span class="source-link">[[Source]](src/gtk3/GtkCheckMenuItem.md#L27)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkCheckMenuItem.md#L29)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### get_active
<span class="source-link">[[Source]](src/gtk3/GtkCheckMenuItem.md#L47)</span>


Returns whether the check menu item is active. See
gtk_check_menu_item_set_active ().


```pony
fun box get_active()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_draw_as_radio
<span class="source-link">[[Source]](src/gtk3/GtkCheckMenuItem.md#L54)</span>


Returns whether @check_menu_item looks like a #GtkRadioMenuItem


```pony
fun box get_draw_as_radio()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_inconsistent
<span class="source-link">[[Source]](src/gtk3/GtkCheckMenuItem.md#L60)</span>


Retrieves the value set by gtk_check_menu_item_set_inconsistent().


```pony
fun box get_inconsistent()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### set_active
<span class="source-link">[[Source]](src/gtk3/GtkCheckMenuItem.md#L66)</span>


Sets the active state of the menu item’s check box.


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
<span class="source-link">[[Source]](src/gtk3/GtkCheckMenuItem.md#L72)</span>


Sets whether @check_menu_item is drawn like a #GtkRadioMenuItem


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
<span class="source-link">[[Source]](src/gtk3/GtkCheckMenuItem.md#L78)</span>


If the user has selected a range of elements (such as some text or
spreadsheet cells) that are affected by a boolean setting, and the
current values in that range are inconsistent, you may want to
display the check in an “in between” state. This function turns on
“in between” display.  Normally you would turn off the inconsistent
state again if the user explicitly selects a setting. This has to be
done manually, gtk_check_menu_item_set_inconsistent() only affects
visual appearance, it doesn’t affect the semantics of the widget.


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
<span class="source-link">[[Source]](src/gtk3/GtkCheckMenuItem.md#L91)</span>


Emits the #GtkCheckMenuItem::toggled signal.


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

