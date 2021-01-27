# GtkTextChildAnchor
<span class="source-link">[[Source]](src/gtk3/GtkTextChildAnchor.md#L6)</span>
```pony
class ref GtkTextChildAnchor is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkTextChildAnchor.md#L10)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkTextChildAnchor ref^
```

#### Returns

* [GtkTextChildAnchor](gtk3-GtkTextChildAnchor.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkTextChildAnchor.md#L13)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkTextChildAnchor ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkTextChildAnchor](gtk3-GtkTextChildAnchor.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkTextChildAnchor.md#L17)</span>


```pony
new ref create()
: GtkTextChildAnchor ref^
```

#### Returns

* [GtkTextChildAnchor](gtk3-GtkTextChildAnchor.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkTextChildAnchor.md#L7)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkTextChildAnchor.md#L9)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### get_deleted
<span class="source-link">[[Source]](src/gtk3/GtkTextChildAnchor.md#L21)</span>


Determines whether a child anchor has been deleted from
the buffer. Keep in mind that the child anchor will be
unreferenced when removed from the buffer, so you need to
hold your own reference (with g_object_ref()) if you plan
to use this function — otherwise all deleted child anchors
will also be finalized.


```pony
fun box get_deleted()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

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

