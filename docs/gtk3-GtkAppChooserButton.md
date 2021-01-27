# GtkAppChooserButton
<span class="source-link">[[Source]](src/gtk3/GtkAppChooserButton.md#L6)</span>

The #GtkAppChooserButton is a widget that lets the user select
an application. It implements the #GtkAppChooser interface.

Initially, a #GtkAppChooserButton selects the first application
in its list, which will either be the most-recently used application
or, if #GtkAppChooserButton:show-default-item is %TRUE, the
default application.

The list of applications shown in a #GtkAppChooserButton includes
the recommended applications for the given content type. When
#GtkAppChooserButton:show-default-item is set, the default application
is also included. To let the user chooser other applications,
you can set the #GtkAppChooserButton:show-dialog-item property,
which allows to open a full #GtkAppChooserDialog.

It is possible to add custom items to the list, using
gtk_app_chooser_button_append_custom_item(). These items cause
the #GtkAppChooserButton::custom-item-activated signal to be
emitted when they are selected.

To track changes in the selected application, use the
#GtkComboBox::changed signal.


```pony
class ref GtkAppChooserButton is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkAppChooserButton.md#L34)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkAppChooserButton ref^
```

#### Returns

* [GtkAppChooserButton](gtk3-GtkAppChooserButton.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkAppChooserButton.md#L37)</span>


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
<span class="source-link">[[Source]](src/gtk3/GtkAppChooserButton.md#L41)</span>


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
<span class="source-link">[[Source]](src/gtk3/GtkAppChooserButton.md#L31)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkAppChooserButton.md#L33)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### append_separator
<span class="source-link">[[Source]](src/gtk3/GtkAppChooserButton.md#L51)</span>


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
<span class="source-link">[[Source]](src/gtk3/GtkAppChooserButton.md#L58)</span>


Returns the text to display at the top of the dialog.


```pony
fun box get_heading()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_show_default_item
<span class="source-link">[[Source]](src/gtk3/GtkAppChooserButton.md#L66)</span>


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
<span class="source-link">[[Source]](src/gtk3/GtkAppChooserButton.md#L73)</span>


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
<span class="source-link">[[Source]](src/gtk3/GtkAppChooserButton.md#L88)</span>


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
<span class="source-link">[[Source]](src/gtk3/GtkAppChooserButton.md#L95)</span>


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

