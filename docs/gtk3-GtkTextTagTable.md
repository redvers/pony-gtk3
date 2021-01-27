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
class ref GtkTextTagTable is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkTextTagTable.md#L31)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkTextTagTable ref^
```

#### Returns

* [GtkTextTagTable](gtk3-GtkTextTagTable.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkTextTagTable.md#L34)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkTextTagTable ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkTextTagTable](gtk3-GtkTextTagTable.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkTextTagTable.md#L38)</span>


```pony
new ref create()
: GtkTextTagTable ref^
```

#### Returns

* [GtkTextTagTable](gtk3-GtkTextTagTable.md) ref^

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

### get_size
<span class="source-link">[[Source]](src/gtk3/GtkTextTagTable.md#L51)</span>


Returns the size of the table (number of tags)


```pony
fun box get_size()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

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

