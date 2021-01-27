# GtkToggleButton
<span class="source-link">[[Source]](src/gtk3/GtkToggleButton.md#L6)</span>
```pony
class ref GtkToggleButton is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkToggleButton.md#L10)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkToggleButton ref^
```

#### Returns

* [GtkToggleButton](gtk3-GtkToggleButton.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkToggleButton.md#L13)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkToggleButton ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkToggleButton](gtk3-GtkToggleButton.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkToggleButton.md#L17)</span>


```pony
new ref create()
: GtkToggleButton ref^
```

#### Returns

* [GtkToggleButton](gtk3-GtkToggleButton.md) ref^

---

### new_with_label
<span class="source-link">[[Source]](src/gtk3/GtkToggleButton.md#L20)</span>


```pony
new ref new_with_label(
  label_pony: String val)
: GtkToggleButton ref^
```
#### Parameters

*   label_pony: [String](builtin-String.md) val

#### Returns

* [GtkToggleButton](gtk3-GtkToggleButton.md) ref^

---

### new_with_mnemonic
<span class="source-link">[[Source]](src/gtk3/GtkToggleButton.md#L23)</span>


```pony
new ref new_with_mnemonic(
  label_pony: String val)
: GtkToggleButton ref^
```
#### Parameters

*   label_pony: [String](builtin-String.md) val

#### Returns

* [GtkToggleButton](gtk3-GtkToggleButton.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkToggleButton.md#L7)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkToggleButton.md#L9)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### get_active
<span class="source-link">[[Source]](src/gtk3/GtkToggleButton.md#L27)</span>


Queries a #GtkToggleButton and returns its current state. Returns %TRUE if
the toggle button is pressed in and %FALSE if it is raised.


```pony
fun box get_active()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_inconsistent
<span class="source-link">[[Source]](src/gtk3/GtkToggleButton.md#L34)</span>


Gets the value set by gtk_toggle_button_set_inconsistent().


```pony
fun box get_inconsistent()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_mode
<span class="source-link">[[Source]](src/gtk3/GtkToggleButton.md#L40)</span>


Retrieves whether the button is displayed as a separate indicator
and label. See gtk_toggle_button_set_mode().


```pony
fun box get_mode()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### set_active
<span class="source-link">[[Source]](src/gtk3/GtkToggleButton.md#L47)</span>


Sets the status of the toggle button. Set to %TRUE if you want the
GtkToggleButton to be “pressed in”, and %FALSE to raise it.
This action causes the #GtkToggleButton::toggled signal and the
#GtkButton::clicked signal to be emitted.


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

### set_inconsistent
<span class="source-link">[[Source]](src/gtk3/GtkToggleButton.md#L56)</span>


If the user has selected a range of elements (such as some text or
spreadsheet cells) that are affected by a toggle button, and the
current values in that range are inconsistent, you may want to
display the toggle in an “in between” state. This function turns on
“in between” display.  Normally you would turn off the inconsistent
state again if the user toggles the toggle button. This has to be
done manually, gtk_toggle_button_set_inconsistent() only affects
visual appearance, it doesn’t affect the semantics of the button.


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

### set_mode
<span class="source-link">[[Source]](src/gtk3/GtkToggleButton.md#L69)</span>


Sets whether the button is displayed as a separate indicator and label.
You can call this function on a checkbutton or a radiobutton with
@draw_indicator = %FALSE to make the button look like a normal button.

This can be used to create linked strip of buttons that work like
a #GtkStackSwitcher.

This function only affects instances of classes like #GtkCheckButton
and #GtkRadioButton that derive from #GtkToggleButton,
not instances of #GtkToggleButton itself.


```pony
fun box set_mode(
  draw_indicator_pony: Bool val)
: None val
```
#### Parameters

*   draw_indicator_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### toggled
<span class="source-link">[[Source]](src/gtk3/GtkToggleButton.md#L84)</span>


Emits the #GtkToggleButton::toggled signal on the
#GtkToggleButton. There is no good reason for an
application ever to call this function.


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

