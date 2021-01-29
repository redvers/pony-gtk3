# GtkTextTagTable
<span class="source-link">[[Source]](src/gtk3/GtkTextTagTable.md#L6)</span>

You may wish to begin by reading the
[text widget conceptual overview][TextWidget]
which gives an overview of all the objects and
data types related to the text widget and how they work together.

# GtkTextTagTables as GtkBuildable

The GtkTextTagTable implementation of the GtkBuildable interface
supports adding tags by specifying “tag” as the “type” attribute
of a <child> element.

An example of a UI definition fragment specifying tags:
|[
<object class="GtkTextTagTable">
 <child type="tag">
   <object class="GtkTextTag"/>
 </child>
</object>
]|


```pony
class val GtkTextTagTable is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkTextTagTable.md#L32)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkTextTagTable val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkTextTagTable](gtk3-GtkTextTagTable.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkTextTagTable.md#L35)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkTextTagTable val^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkTextTagTable](gtk3-GtkTextTagTable.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkTextTagTable.md#L38)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkTextTagTable val^
```

#### Returns

* [GtkTextTagTable](gtk3-GtkTextTagTable.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkTextTagTable.md#L42)</span>


```pony
new val create()
: GtkTextTagTable val^
```

#### Returns

* [GtkTextTagTable](gtk3-GtkTextTagTable.md) val^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkTextTagTable.md#L28)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkTextTagTable.md#L30)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### pony_NOT_IMPLEMENTED_YET_add
<span class="source-link">[[Source]](src/gtk3/GtkTextTagTable.md#L46)</span>


    Add a tag to the table. The tag is assigned the highest priority
in the table.

@tag must not be in a tag table already, and may not have
the same name as an already-added tag.

    {:doh, %{argctype: "GtkTextTag*", argname: "gtag", argtype: "TextTag", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_add()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_foreach
<span class="source-link">[[Source]](src/gtk3/GtkTextTagTable.md#L58)</span>


    Calls @func on each tag in @table, with user data @data.
Note that the table may not be modified while iterating
over it (you can’t add/remove tags).

    {:doh, %{argctype: "GtkTextTagTableForeach", argname: "func", argtype: "TextTagTableForeach", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "data", argtype: "gpointer", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_foreach()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### get_size
<span class="source-link">[[Source]](src/gtk3/GtkTextTagTable.md#L69)</span>


Returns the size of the table (number of tags)


```pony
fun box get_size()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### pony_NOT_IMPLEMENTED_YET_lookup
<span class="source-link">[[Source]](src/gtk3/GtkTextTagTable.md#L75)</span>


    Look up a named tag.

    {:argctype, "GtkTextTag*"}
{:argname, "rv"}
{:argtype, "TextTag"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_lookup()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_remove
<span class="source-link">[[Source]](src/gtk3/GtkTextTagTable.md#L87)</span>


    Remove a tag from the table. If a #GtkTextBuffer has @table as its tag table,
the tag is removed from the buffer. The table’s reference to the tag is
removed, so the tag will end up destroyed if you don’t have a reference to
it.

    {:doh, %{argctype: "GtkTextTag*", argname: "gtag", argtype: "TextTag", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_remove()
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

