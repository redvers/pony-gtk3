# GtkContainerCellAccessible
<span class="source-link">[[Source]](src/gtk3/GtkContainerCellAccessible.md#L6)</span>

No documentation provided


```pony
class val GtkContainerCellAccessible is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkContainerCellAccessible.md#L14)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkContainerCellAccessible val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkContainerCellAccessible](gtk3-GtkContainerCellAccessible.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkContainerCellAccessible.md#L17)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkContainerCellAccessible val^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkContainerCellAccessible](gtk3-GtkContainerCellAccessible.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkContainerCellAccessible.md#L20)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkContainerCellAccessible val^
```

#### Returns

* [GtkContainerCellAccessible](gtk3-GtkContainerCellAccessible.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkContainerCellAccessible.md#L24)</span>


```pony
new val create()
: GtkContainerCellAccessible val^
```

#### Returns

* [GtkContainerCellAccessible](gtk3-GtkContainerCellAccessible.md) val^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkContainerCellAccessible.md#L10)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkContainerCellAccessible.md#L12)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### pony_NOT_IMPLEMENTED_YET_add_child
<span class="source-link">[[Source]](src/gtk3/GtkContainerCellAccessible.md#L28)</span>


    No provided documentation

    {:doh, %{argctype: "GtkCellAccessible*", argname: "child", argtype: "CellAccessible", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_add_child()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_children
<span class="source-link">[[Source]](src/gtk3/GtkContainerCellAccessible.md#L36)</span>


    Get a list of children.

    {:argctype, "GList*"}
{:argname, "rv"}
{:argtype, "GLib.List"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_children()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_remove_child
<span class="source-link">[[Source]](src/gtk3/GtkContainerCellAccessible.md#L48)</span>


    No provided documentation

    {:doh, %{argctype: "GtkCellAccessible*", argname: "child", argtype: "CellAccessible", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_remove_child()
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

