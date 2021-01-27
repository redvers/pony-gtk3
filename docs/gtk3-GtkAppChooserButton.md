# GtkAppChooserButton
<span class="source-link">[[Source]](src/gtk3/GtkAppChooserButton.md#L6)</span>
```pony
class ref GtkAppChooserButton is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkAppChooserButton.md#L10)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkAppChooserButton ref^
```

#### Returns

* [GtkAppChooserButton](gtk3-GtkAppChooserButton.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkAppChooserButton.md#L13)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkAppChooserButton ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkAppChooserButton](gtk3-GtkAppChooserButton.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkAppChooserButton.md#L17)</span>


```pony
new ref create(
  content_type_pony: String val)
: GtkAppChooserButton ref^
```
#### Parameters

*   content_type_pony: [String](builtin-String.md) val

#### Returns

* [GtkAppChooserButton](gtk3-GtkAppChooserButton.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkAppChooserButton.md#L7)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkAppChooserButton.md#L9)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### append_separator
<span class="source-link">[[Source]](src/gtk3/GtkAppChooserButton.md#L27)</span>


Appends a separator to the list of applications that is shown
in the popup.


```pony
fun box append_separator()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### get_heading
<span class="source-link">[[Source]](src/gtk3/GtkAppChooserButton.md#L34)</span>


Returns the text to display at the top of the dialog.


```pony
fun box get_heading()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_show_default_item
<span class="source-link">[[Source]](src/gtk3/GtkAppChooserButton.md#L42)</span>


Returns the current value of the #GtkAppChooserButton:show-default-item
property.


```pony
fun box get_show_default_item()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_show_dialog_item
<span class="source-link">[[Source]](src/gtk3/GtkAppChooserButton.md#L49)</span>


Returns the current value of the #GtkAppChooserButton:show-dialog-item
property.


```pony
fun box get_show_dialog_item()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### set_show_default_item
<span class="source-link">[[Source]](src/gtk3/GtkAppChooserButton.md#L64)</span>


Sets whether the dropdown menu of this button should show the
default application for the given content type at top.


```pony
fun box set_show_default_item(
  setting_pony: Bool val)
: None val
```
#### Parameters

*   setting_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_show_dialog_item
<span class="source-link">[[Source]](src/gtk3/GtkAppChooserButton.md#L71)</span>


Sets whether the dropdown menu of this button should show an
entry to trigger a #GtkAppChooserDialog.


```pony
fun box set_show_dialog_item(
  setting_pony: Bool val)
: None val
```
#### Parameters

*   setting_pony: [Bool](builtin-Bool.md) val

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

