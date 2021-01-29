# GtkComboBoxText
<span class="source-link">[[Source]](src/gtk3/GtkComboBoxText.md#L6)</span>

A GtkComboBoxText is a simple variant of #GtkComboBox that hides
the model-view complexity for simple text-only use cases.

To create a GtkComboBoxText, use gtk_combo_box_text_new() or
gtk_combo_box_text_new_with_entry().

You can add items to a GtkComboBoxText with
gtk_combo_box_text_append_text(), gtk_combo_box_text_insert_text()
or gtk_combo_box_text_prepend_text() and remove options with
gtk_combo_box_text_remove().

If the GtkComboBoxText contains an entry (via the “has-entry” property),
its contents can be retrieved using gtk_combo_box_text_get_active_text().
The entry itself can be accessed by calling gtk_bin_get_child() on the
combo box.

You should not call gtk_combo_box_set_model() or attempt to pack more cells
into this combo box via its GtkCellLayout interface.

# GtkComboBoxText as GtkBuildable

The GtkComboBoxText implementation of the GtkBuildable interface supports
adding items directly using the <items> element and specifying <item>
elements for each item. Each <item> element can specify the “id”
corresponding to the appended text and also supports the regular
translation attributes “translatable”, “context” and “comments”.

Here is a UI definition fragment specifying GtkComboBoxText items:
|[
<object class="GtkComboBoxText">
  <items>
    <item translatable="yes" id="factory">Factory</item>
    <item translatable="yes" id="home">Home</item>
    <item translatable="yes" id="subway">Subway</item>
  </items>
</object>
]|

# CSS nodes

|[<!-- language="plain" -->
combobox
╰── box.linked
    ├── entry.combo
    ├── button.combo
    ╰── window.popup
]|

GtkComboBoxText has a single CSS node with name combobox. It adds
the style class .combo to the main CSS nodes of its entry and button
children, and the .linked class to the node of its internal box.


```pony
class val GtkComboBoxText is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkComboBoxText.md#L64)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkComboBoxText val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkComboBoxText](gtk3-GtkComboBoxText.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkComboBoxText.md#L67)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkComboBoxText val^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkComboBoxText](gtk3-GtkComboBoxText.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkComboBoxText.md#L70)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkComboBoxText val^
```

#### Returns

* [GtkComboBoxText](gtk3-GtkComboBoxText.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkComboBoxText.md#L74)</span>


```pony
new val create()
: GtkComboBoxText val^
```

#### Returns

* [GtkComboBoxText](gtk3-GtkComboBoxText.md) val^

---

### new_with_entry
<span class="source-link">[[Source]](src/gtk3/GtkComboBoxText.md#L77)</span>


```pony
new val new_with_entry()
: GtkComboBoxText val^
```

#### Returns

* [GtkComboBoxText](gtk3-GtkComboBoxText.md) val^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkComboBoxText.md#L60)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkComboBoxText.md#L62)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### pony_NOT_IMPLEMENTED_YET_append
<span class="source-link">[[Source]](src/gtk3/GtkComboBoxText.md#L81)</span>


    Appends @text to the list of strings stored in @combo_box.
If @id is non-%NULL then it is used as the ID of the row.

This is the same as calling gtk_combo_box_text_insert() with a
position of -1.

    {:doh, %{argctype: "const gchar*", argname: "id", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "text", argtype: "utf8", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_append()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_append_text
<span class="source-link">[[Source]](src/gtk3/GtkComboBoxText.md#L94)</span>


    Appends @text to the list of strings stored in @combo_box.

This is the same as calling gtk_combo_box_text_insert_text() with a
position of -1.

    {:doh, %{argctype: "const gchar*", argname: "text", argtype: "utf8", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_append_text()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_active_text
<span class="source-link">[[Source]](src/gtk3/GtkComboBoxText.md#L105)</span>


    Returns the currently active string in @combo_box, or %NULL
if none is selected. If @combo_box contains an entry, this
function will return its contents (which will not necessarily
be an item from the list).

    {:argctype, "gchar*"}
{:argname, "rv"}
{:argtype, "utf8"}
{:paramtype, :param}
{:txo, "full"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_active_text()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_insert
<span class="source-link">[[Source]](src/gtk3/GtkComboBoxText.md#L120)</span>


    Inserts @text at @position in the list of strings stored in @combo_box.
If @id is non-%NULL then it is used as the ID of the row.  See
#GtkComboBox:id-column.

If @position is negative then @text is appended.

    {:doh, %{argctype: "const gchar*", argname: "id", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "text", argtype: "utf8", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_insert()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_insert_text
<span class="source-link">[[Source]](src/gtk3/GtkComboBoxText.md#L133)</span>


    Inserts @text at @position in the list of strings stored in @combo_box.

If @position is negative then @text is appended.

This is the same as calling gtk_combo_box_text_insert() with a %NULL
ID string.

    {:doh, %{argctype: "const gchar*", argname: "text", argtype: "utf8", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_insert_text()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_prepend
<span class="source-link">[[Source]](src/gtk3/GtkComboBoxText.md#L146)</span>


    Prepends @text to the list of strings stored in @combo_box.
If @id is non-%NULL then it is used as the ID of the row.

This is the same as calling gtk_combo_box_text_insert() with a
position of 0.

    {:doh, %{argctype: "const gchar*", argname: "id", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "text", argtype: "utf8", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_prepend()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_prepend_text
<span class="source-link">[[Source]](src/gtk3/GtkComboBoxText.md#L159)</span>


    Prepends @text to the list of strings stored in @combo_box.

This is the same as calling gtk_combo_box_text_insert_text() with a
position of 0.

    {:doh, %{argctype: "const gchar*", argname: "text", argtype: "utf8", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_prepend_text()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### remove
<span class="source-link">[[Source]](src/gtk3/GtkComboBoxText.md#L170)</span>


Removes the string at @position from @combo_box.


```pony
fun box remove(
  position_pony: I32 val)
: None val
```
#### Parameters

*   position_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### remove_all
<span class="source-link">[[Source]](src/gtk3/GtkComboBoxText.md#L176)</span>


Removes all the text entries from the combo box.


```pony
fun box remove_all()
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

