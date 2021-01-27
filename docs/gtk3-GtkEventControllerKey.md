# GtkEventControllerKey
<span class="source-link">[[Source]](src/gtk3/GtkEventControllerKey.md#L6)</span>

#GtkEventControllerKey is an event controller meant for situations
where you need access to key events.

This object was added in 3.24.


```pony
class ref GtkEventControllerKey is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkEventControllerKey.md#L16)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkEventControllerKey ref^
```

#### Returns

* [GtkEventControllerKey](gtk3-GtkEventControllerKey.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkEventControllerKey.md#L19)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkEventControllerKey ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkEventControllerKey](gtk3-GtkEventControllerKey.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkEventControllerKey.md#L23)</span>


```pony
new ref create(
  widget_pony: GtkWidget ref)
: GtkEventControllerKey ref^
```
#### Parameters

*   widget_pony: [GtkWidget](gtk3-GtkWidget.md) ref

#### Returns

* [GtkEventControllerKey](gtk3-GtkEventControllerKey.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkEventControllerKey.md#L13)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkEventControllerKey.md#L15)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### get_group
<span class="source-link">[[Source]](src/gtk3/GtkEventControllerKey.md#L31)</span>


No provided documentation


```pony
fun box get_group()
: U32 val
```

#### Returns

* [U32](builtin-U32.md) val

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

