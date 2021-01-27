# GtkOverlay
<span class="source-link">[[Source]](src/gtk3/GtkOverlay.md#L6)</span>

GtkOverlay is a container which contains a single main child, on top
of which it can place “overlay” widgets. The position of each overlay
widget is determined by its #GtkWidget:halign and #GtkWidget:valign
properties. E.g. a widget with both alignments set to %GTK_ALIGN_START
will be placed at the top left corner of the GtkOverlay container,
whereas an overlay with halign set to %GTK_ALIGN_CENTER and valign set
to %GTK_ALIGN_END will be placed a the bottom edge of the GtkOverlay,
horizontally centered. The position can be adjusted by setting the margin
properties of the child to non-zero values.

More complicated placement of overlays is possible by connecting
to the #GtkOverlay::get-child-position signal.

An overlay’s minimum and natural sizes are those of its main child. The sizes
of overlay children are not considered when measuring these preferred sizes.

# GtkOverlay as GtkBuildable

The GtkOverlay implementation of the GtkBuildable interface
supports placing a child as an overlay by specifying “overlay” as
the “type” attribute of a `<child>` element.

# CSS nodes

GtkOverlay has a single CSS node with the name “overlay”. Overlay children
whose alignments cause them to be positioned at an edge get the style classes
“.left”, “.right”, “.top”, and/or “.bottom” according to their position.


```pony
class ref GtkOverlay is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkOverlay.md#L39)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkOverlay ref^
```

#### Returns

* [GtkOverlay](gtk3-GtkOverlay.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkOverlay.md#L42)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkOverlay ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkOverlay](gtk3-GtkOverlay.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkOverlay.md#L46)</span>


```pony
new ref create()
: GtkOverlay ref^
```

#### Returns

* [GtkOverlay](gtk3-GtkOverlay.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkOverlay.md#L36)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkOverlay.md#L38)</span>


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

