# GtkToolItemGroup
<span class="source-link">[[Source]](src/gtk3/GtkToolItemGroup.md#L6)</span>

A #GtkToolItemGroup is used together with #GtkToolPalette to add
#GtkToolItems to a palette like container with different
categories and drag and drop support.

# CSS nodes

GtkToolItemGroup has a single CSS node named toolitemgroup.


```pony
class val GtkToolItemGroup is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkToolItemGroup.md#L20)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkToolItemGroup val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkToolItemGroup](gtk3-GtkToolItemGroup.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkToolItemGroup.md#L23)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkToolItemGroup val^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkToolItemGroup](gtk3-GtkToolItemGroup.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkToolItemGroup.md#L26)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkToolItemGroup val^
```

#### Returns

* [GtkToolItemGroup](gtk3-GtkToolItemGroup.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkToolItemGroup.md#L30)</span>


```pony
new val create(
  label_pony: String val)
: GtkToolItemGroup val^
```
#### Parameters

*   label_pony: [String](builtin-String.md) val

#### Returns

* [GtkToolItemGroup](gtk3-GtkToolItemGroup.md) val^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkToolItemGroup.md#L16)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkToolItemGroup.md#L18)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### get_collapsed
<span class="source-link">[[Source]](src/gtk3/GtkToolItemGroup.md#L34)</span>


Gets whether @group is collapsed or expanded.


```pony
fun box get_collapsed()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_drop_item
<span class="source-link">[[Source]](src/gtk3/GtkToolItemGroup.md#L40)</span>


    Gets the tool item at position (x, y).

    {:argctype, "GtkToolItem*"}
{:argname, "rv"}
{:argtype, "ToolItem"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_drop_item()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_ellipsize
<span class="source-link">[[Source]](src/gtk3/GtkToolItemGroup.md#L52)</span>


    Gets the ellipsization mode of @group.

    {:argctype, "PangoEllipsizeMode"}
{:argname, "rv"}
{:argtype, "Pango.EllipsizeMode"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_ellipsize()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_header_relief
<span class="source-link">[[Source]](src/gtk3/GtkToolItemGroup.md#L64)</span>


    Gets the relief mode of the header button of @group.

    {:argctype, "GtkReliefStyle"}
{:argname, "rv"}
{:argtype, "ReliefStyle"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_header_relief()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_item_position
<span class="source-link">[[Source]](src/gtk3/GtkToolItemGroup.md#L76)</span>


    Gets the position of @item in @group as index.

    {:doh, %{argctype: "GtkToolItem*", argname: "item", argtype: "ToolItem", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_item_position()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### get_label
<span class="source-link">[[Source]](src/gtk3/GtkToolItemGroup.md#L84)</span>


Gets the label of @group.


```pony
fun box get_label()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_n_items
<span class="source-link">[[Source]](src/gtk3/GtkToolItemGroup.md#L99)</span>


Gets the number of tool items in @group.


```pony
fun box get_n_items()
: U32 val
```

#### Returns

* [U32](builtin-U32.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_nth_item
<span class="source-link">[[Source]](src/gtk3/GtkToolItemGroup.md#L105)</span>


    Gets the tool item at @index in group.

    {:argctype, "GtkToolItem*"}
{:argname, "rv"}
{:argtype, "ToolItem"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_nth_item()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_insert
<span class="source-link">[[Source]](src/gtk3/GtkToolItemGroup.md#L117)</span>


    Inserts @item at @position in the list of children of @group.

    {:doh, %{argctype: "GtkToolItem*", argname: "item", argtype: "ToolItem", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_insert()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### set_collapsed
<span class="source-link">[[Source]](src/gtk3/GtkToolItemGroup.md#L125)</span>


Sets whether the @group should be collapsed or expanded.


```pony
fun box set_collapsed(
  collapsed_pony: Bool val)
: None val
```
#### Parameters

*   collapsed_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_ellipsize
<span class="source-link">[[Source]](src/gtk3/GtkToolItemGroup.md#L131)</span>


    Sets the ellipsization mode which should be used by labels in @group.

    {:doh, %{argctype: "PangoEllipsizeMode", argname: "ellipsize", argtype: "Pango.EllipsizeMode", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_ellipsize()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_header_relief
<span class="source-link">[[Source]](src/gtk3/GtkToolItemGroup.md#L139)</span>


    Set the button relief of the group header.
See gtk_button_set_relief() for details.

    {:doh, %{argctype: "GtkReliefStyle", argname: "style", argtype: "ReliefStyle", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_header_relief()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_item_position
<span class="source-link">[[Source]](src/gtk3/GtkToolItemGroup.md#L148)</span>


    Sets the position of @item in the list of children of @group.

    {:doh, %{argctype: "GtkToolItem*", argname: "item", argtype: "ToolItem", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_item_position()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_label
<span class="source-link">[[Source]](src/gtk3/GtkToolItemGroup.md#L156)</span>


    Sets the label of the tool item group. The label is displayed in the header
of the group.

    {:doh, %{argctype: "const gchar*", argname: "label", argtype: "utf8", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_label()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### set_label_widget
<span class="source-link">[[Source]](src/gtk3/GtkToolItemGroup.md#L165)</span>


Sets the label of the tool item group.
The label widget is displayed in the header of the group, in place
of the usual label.


```pony
fun box set_label_widget(
  label_widget_pony: GtkWidget val)
: None val
```
#### Parameters

*   label_widget_pony: [GtkWidget](gtk3-GtkWidget.md) val

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

