# GtkMountOperation
<span class="source-link">[[Source]](src/gtk3/GtkMountOperation.md#L6)</span>
```pony
class ref GtkMountOperation is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkMountOperation.md#L10)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkMountOperation ref^
```

#### Returns

* [GtkMountOperation](gtk3-GtkMountOperation.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkMountOperation.md#L13)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkMountOperation ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkMountOperation](gtk3-GtkMountOperation.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkMountOperation.md#L17)</span>


```pony
new ref create(
  parent_pony: GtkWindow ref)
: GtkMountOperation ref^
```
#### Parameters

*   parent_pony: [GtkWindow](gtk3-GtkWindow.md) ref

#### Returns

* [GtkMountOperation](gtk3-GtkMountOperation.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkMountOperation.md#L7)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkMountOperation.md#L9)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### is_showing
<span class="source-link">[[Source]](src/gtk3/GtkMountOperation.md#L35)</span>


Returns whether the #GtkMountOperation is currently displaying
a window.


```pony
fun box is_showing()
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

