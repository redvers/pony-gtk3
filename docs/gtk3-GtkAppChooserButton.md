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
class val GtkAppChooserButton is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkAppChooserButton.md#L35)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkAppChooserButton val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkAppChooserButton](gtk3-GtkAppChooserButton.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkAppChooserButton.md#L38)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkAppChooserButton val^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkAppChooserButton](gtk3-GtkAppChooserButton.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkAppChooserButton.md#L41)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkAppChooserButton val^
```

#### Returns

* [GtkAppChooserButton](gtk3-GtkAppChooserButton.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkAppChooserButton.md#L45)</span>


```pony
new val create(
  content_type_pony: String val)
: GtkAppChooserButton val^
```
#### Parameters

*   content_type_pony: [String](builtin-String.md) val

#### Returns

* [GtkAppChooserButton](gtk3-GtkAppChooserButton.md) val^

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

### pony_NOT_IMPLEMENTED_YET_append_custom_item
<span class="source-link">[[Source]](src/gtk3/GtkAppChooserButton.md#L49)</span>


    Appends a custom item to the list of applications that is shown
in the popup; the item name must be unique per-widget.
Clients can use the provided name as a detail for the
#GtkAppChooserButton::custom-item-activated signal, to add a
callback for the activation of a particular custom item in the list.
See also gtk_app_chooser_button_append_separator().

    {:doh, %{argctype: "const gchar*", argname: "name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "label", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GIcon*", argname: "icon", argtype: "Gio.Icon", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_append_custom_item()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### append_separator
<span class="source-link">[[Source]](src/gtk3/GtkAppChooserButton.md#L64)</span>


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
<span class="source-link">[[Source]](src/gtk3/GtkAppChooserButton.md#L71)</span>


Returns the text to display at the top of the dialog.


```pony
fun box get_heading()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_show_default_item
<span class="source-link">[[Source]](src/gtk3/GtkAppChooserButton.md#L79)</span>


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
<span class="source-link">[[Source]](src/gtk3/GtkAppChooserButton.md#L86)</span>


Returns the current value of the #GtkAppChooserButton:show-dialog-item
property.


```pony
fun box get_show_dialog_item()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_active_custom_item
<span class="source-link">[[Source]](src/gtk3/GtkAppChooserButton.md#L93)</span>


    Selects a custom item previously added with
gtk_app_chooser_button_append_custom_item().

Use gtk_app_chooser_refresh() to bring the selection
to its initial state.

    {:doh, %{argctype: "const gchar*", argname: "name", argtype: "utf8", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_active_custom_item()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_heading
<span class="source-link">[[Source]](src/gtk3/GtkAppChooserButton.md#L105)</span>


    Sets the text to display at the top of the dialog.
If the heading is not set, the dialog displays a default text.

    {:doh, %{argctype: "const gchar*", argname: "heading", argtype: "utf8", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_heading()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### set_show_default_item
<span class="source-link">[[Source]](src/gtk3/GtkAppChooserButton.md#L114)</span>


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
<span class="source-link">[[Source]](src/gtk3/GtkAppChooserButton.md#L121)</span>


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

