# GtkAccelGroup
<span class="source-link">[[Source]](src/gtk3/GtkAccelGroup.md#L6)</span>
```pony
class ref GtkAccelGroup is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkAccelGroup.md#L10)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkAccelGroup ref^
```

#### Returns

* [GtkAccelGroup](gtk3-GtkAccelGroup.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkAccelGroup.md#L13)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkAccelGroup ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkAccelGroup](gtk3-GtkAccelGroup.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkAccelGroup.md#L17)</span>


```pony
new ref create()
: GtkAccelGroup ref^
```

#### Returns

* [GtkAccelGroup](gtk3-GtkAccelGroup.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkAccelGroup.md#L7)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkAccelGroup.md#L9)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### get_is_locked
<span class="source-link">[[Source]](src/gtk3/GtkAccelGroup.md#L53)</span>


Locks are added and removed using gtk_accel_group_lock() and
gtk_accel_group_unlock().


```pony
fun box get_is_locked()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### lock
<span class="source-link">[[Source]](src/gtk3/GtkAccelGroup.md#L67)</span>


Locks the given accelerator group.

Locking an acelerator group prevents the accelerators contained
within it to be changed during runtime. Refer to
gtk_accel_map_change_entry() about runtime accelerator changes.

If called more than once, @accel_group remains locked until
gtk_accel_group_unlock() has been called an equivalent number
of times.


```pony
fun box lock()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### unlock
<span class="source-link">[[Source]](src/gtk3/GtkAccelGroup.md#L88)</span>


Undoes the last call to gtk_accel_group_lock() on this @accel_group.


```pony
fun box unlock()
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

