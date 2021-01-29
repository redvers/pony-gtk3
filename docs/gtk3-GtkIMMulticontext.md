# GtkIMMulticontext
<span class="source-link">[[Source]](src/gtk3/GtkIMMulticontext.md#L6)</span>

No documentation provided


```pony
class val GtkIMMulticontext is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkIMMulticontext.md#L14)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkIMMulticontext val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkIMMulticontext](gtk3-GtkIMMulticontext.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkIMMulticontext.md#L17)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkIMMulticontext val^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkIMMulticontext](gtk3-GtkIMMulticontext.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkIMMulticontext.md#L20)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkIMMulticontext val^
```

#### Returns

* [GtkIMMulticontext](gtk3-GtkIMMulticontext.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkIMMulticontext.md#L24)</span>


```pony
new val create()
: GtkIMMulticontext val^
```

#### Returns

* [GtkIMMulticontext](gtk3-GtkIMMulticontext.md) val^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkIMMulticontext.md#L10)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkIMMulticontext.md#L12)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### pony_NOT_IMPLEMENTED_YET_append_menuitems
<span class="source-link">[[Source]](src/gtk3/GtkIMMulticontext.md#L28)</span>


    Add menuitems for various available input methods to a menu;
the menuitems, when selected, will switch the input method
for the context and the global default input method.

    {:doh, %{argctype: "GtkMenuShell*", argname: "menushell", argtype: "MenuShell", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_append_menuitems()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_context_id
<span class="source-link">[[Source]](src/gtk3/GtkIMMulticontext.md#L38)</span>


    Gets the id of the currently active slave of the @context.

    {:argctype, "const char*"}
{:argname, "rv"}
{:argtype, "utf8"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_context_id()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_context_id
<span class="source-link">[[Source]](src/gtk3/GtkIMMulticontext.md#L50)</span>


    Sets the context id for @context.

This causes the currently active slave of @context to be
replaced by the slave corresponding to the new context id.

    {:doh, %{argctype: "const char*", argname: "context_id", argtype: "utf8", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_context_id()
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

