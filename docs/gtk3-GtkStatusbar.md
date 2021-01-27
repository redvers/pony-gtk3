# GtkStatusbar
<span class="source-link">[[Source]](src/gtk3/GtkStatusbar.md#L6)</span>
```pony
class ref GtkStatusbar is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkStatusbar.md#L10)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkStatusbar ref^
```

#### Returns

* [GtkStatusbar](gtk3-GtkStatusbar.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkStatusbar.md#L13)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkStatusbar ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkStatusbar](gtk3-GtkStatusbar.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkStatusbar.md#L17)</span>


```pony
new ref create()
: GtkStatusbar ref^
```

#### Returns

* [GtkStatusbar](gtk3-GtkStatusbar.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkStatusbar.md#L7)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkStatusbar.md#L9)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### pop
<span class="source-link">[[Source]](src/gtk3/GtkStatusbar.md#L32)</span>


Removes the first message in the #GtkStatusbar’s stack
with the given context id.

Note that this may not change the displayed message, if
the message at the top of the stack has a different
context id.


```pony
fun box pop(
  context_id_pony: U32 val)
: None val
```
#### Parameters

*   context_id_pony: [U32](builtin-U32.md) val

#### Returns

* [None](builtin-None.md) val

---

### remove
<span class="source-link">[[Source]](src/gtk3/GtkStatusbar.md#L47)</span>


Forces the removal of a message from a statusbar’s stack.
The exact @context_id and @message_id must be specified.


```pony
fun box remove(
  context_id_pony: U32 val,
  message_id_pony: U32 val)
: None val
```
#### Parameters

*   context_id_pony: [U32](builtin-U32.md) val
*   message_id_pony: [U32](builtin-U32.md) val

#### Returns

* [None](builtin-None.md) val

---

### remove_all
<span class="source-link">[[Source]](src/gtk3/GtkStatusbar.md#L54)</span>


Forces the removal of all messages from a statusbar's
stack with the exact @context_id.


```pony
fun box remove_all(
  context_id_pony: U32 val)
: None val
```
#### Parameters

*   context_id_pony: [U32](builtin-U32.md) val

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

