# GtkHBox
<span class="source-link">[[Source]](src/gtk3/GtkHBox.md#L6)</span>

#GtkHBox is a container that organizes child widgets into a single row.

Use the #GtkBox packing interface to determine the arrangement,
spacing, width, and alignment of #GtkHBox children.

All children are allocated the same height.

GtkHBox has been deprecated. You can use #GtkBox instead, which is a
very quick and easy change. If you have derived your own classes from
GtkHBox, you can simply change the inheritance to derive directly
from #GtkBox. No further changes are needed, since the default
value of the #GtkOrientable:orientation property is
%GTK_ORIENTATION_HORIZONTAL.

If you have a grid-like layout composed of nested boxes, and you don’t
need first-child or last-child styling, the recommendation is to switch
to #GtkGrid. For more information about migrating to #GtkGrid, see
[Migrating from other containers to GtkGrid][gtk-migrating-GtkGrid].


```pony
class ref GtkHBox is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkHBox.md#L30)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkHBox ref^
```

#### Returns

* [GtkHBox](gtk3-GtkHBox.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkHBox.md#L33)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkHBox ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkHBox](gtk3-GtkHBox.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkHBox.md#L37)</span>


```pony
new ref create(
  homogeneous_pony: Bool val,
  spacing_pony: I32 val)
: GtkHBox ref^
```
#### Parameters

*   homogeneous_pony: [Bool](builtin-Bool.md) val
*   spacing_pony: [I32](builtin-I32.md) val

#### Returns

* [GtkHBox](gtk3-GtkHBox.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkHBox.md#L27)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkHBox.md#L29)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

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

