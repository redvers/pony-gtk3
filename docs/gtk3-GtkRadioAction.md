# GtkRadioAction
<span class="source-link">[[Source]](src/gtk3/GtkRadioAction.md#L6)</span>

A #GtkRadioAction is similar to #GtkRadioMenuItem. A number of radio
actions can be linked together so that only one may be active at any
one time.


```pony
class val GtkRadioAction is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkRadioAction.md#L16)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkRadioAction val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkRadioAction](gtk3-GtkRadioAction.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkRadioAction.md#L19)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkRadioAction val^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkRadioAction](gtk3-GtkRadioAction.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkRadioAction.md#L22)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkRadioAction val^
```

#### Returns

* [GtkRadioAction](gtk3-GtkRadioAction.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkRadioAction.md#L26)</span>


```pony
new val create(
  name_pony: String val,
  label_pony: String val,
  tooltip_pony: String val,
  stock_id_pony: String val,
  value_pony: I32 val)
: GtkRadioAction val^
```
#### Parameters

*   name_pony: [String](builtin-String.md) val
*   label_pony: [String](builtin-String.md) val
*   tooltip_pony: [String](builtin-String.md) val
*   stock_id_pony: [String](builtin-String.md) val
*   value_pony: [I32](builtin-I32.md) val

#### Returns

* [GtkRadioAction](gtk3-GtkRadioAction.md) val^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkRadioAction.md#L12)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkRadioAction.md#L14)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### get_current_value
<span class="source-link">[[Source]](src/gtk3/GtkRadioAction.md#L30)</span>


Obtains the value property of the currently active member of
the group to which @action belongs.


```pony
fun box get_current_value()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_group
<span class="source-link">[[Source]](src/gtk3/GtkRadioAction.md#L37)</span>


    Returns the list representing the radio group for this object.
Note that the returned list is only valid until the next change
to the group.

A common way to set up a group of radio group is the following:
|[<!-- language="C" -->
  GSList *group = NULL;
  GtkRadioAction *action;
 
  while ( ...more actions to add... /)
    {
       action = gtk_radio_action_new (...);
       
       gtk_radio_action_set_group (action, group);
       group = gtk_radio_action_get_group (action);
    }
]|

    {:argctype, "GSList*"}
{:argname, "rv"}
{:argtype, "GLib.SList"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_group()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_join_group
<span class="source-link">[[Source]](src/gtk3/GtkRadioAction.md#L65)</span>


    Joins a radio action object to the group of another radio action object.

Use this in language bindings instead of the gtk_radio_action_get_group()
and gtk_radio_action_set_group() methods

A common way to set up a group of radio actions is the following:
|[<!-- language="C" -->
  GtkRadioAction *action;
  GtkRadioAction *last_action;
 
  while ( ...more actions to add... /)
    {
       action = gtk_radio_action_new (...);
       
       gtk_radio_action_join_group (action, last_action);
       last_action = action;
    }
]|

    {:doh, %{argctype: "GtkRadioAction*", argname: "group_source", argtype: "RadioAction", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_join_group()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### set_current_value
<span class="source-link">[[Source]](src/gtk3/GtkRadioAction.md#L90)</span>


Sets the currently active group member to the member with value
property @current_value.


```pony
fun box set_current_value(
  current_value_pony: I32 val)
: None val
```
#### Parameters

*   current_value_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_group
<span class="source-link">[[Source]](src/gtk3/GtkRadioAction.md#L97)</span>


    Sets the radio group for the radio action object.

    {:doh, %{argctype: "GSList*", argname: "group", argtype: "GLib.SList", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_group()
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

