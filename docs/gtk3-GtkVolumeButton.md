# GtkVolumeButton
<span class="source-link">[[Source]](src/gtk3/GtkVolumeButton.md#L6)</span>

#GtkVolumeButton is a subclass of #GtkScaleButton that has
been tailored for use as a volume control widget with suitable
icons, tooltips and accessible labels.


```pony
class ref GtkVolumeButton is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkVolumeButton.md#L15)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkVolumeButton ref^
```

#### Returns

* [GtkVolumeButton](gtk3-GtkVolumeButton.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkVolumeButton.md#L18)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkVolumeButton ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkVolumeButton](gtk3-GtkVolumeButton.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkVolumeButton.md#L22)</span>


```pony
new ref create()
: GtkVolumeButton ref^
```

#### Returns

* [GtkVolumeButton](gtk3-GtkVolumeButton.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkVolumeButton.md#L12)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkVolumeButton.md#L14)</span>


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

