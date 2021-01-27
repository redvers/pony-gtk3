# GtkOffscreenWindow
<span class="source-link">[[Source]](src/gtk3/GtkOffscreenWindow.md#L6)</span>

GtkOffscreenWindow is strictly intended to be used for obtaining
snapshots of widgets that are not part of a normal widget hierarchy.
Since #GtkOffscreenWindow is a toplevel widget you cannot obtain
snapshots of a full window with it since you cannot pack a toplevel
widget in another toplevel.

The idea is to take a widget and manually set the state of it,
add it to a GtkOffscreenWindow and then retrieve the snapshot
as a #cairo_surface_t or #GdkPixbuf.

GtkOffscreenWindow derives from #GtkWindow only as an implementation
detail.  Applications should not use any API specific to #GtkWindow
to operate on this object.  It should be treated as a #GtkBin that
has no parent widget.

When contained offscreen widgets are redrawn, GtkOffscreenWindow
will emit a #GtkWidget::damage-event signal.


```pony
class ref GtkOffscreenWindow is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkOffscreenWindow.md#L29)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkOffscreenWindow ref^
```

#### Returns

* [GtkOffscreenWindow](gtk3-GtkOffscreenWindow.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkOffscreenWindow.md#L32)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkOffscreenWindow ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkOffscreenWindow](gtk3-GtkOffscreenWindow.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkOffscreenWindow.md#L36)</span>


```pony
new ref create()
: GtkOffscreenWindow ref^
```

#### Returns

* [GtkOffscreenWindow](gtk3-GtkOffscreenWindow.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkOffscreenWindow.md#L26)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkOffscreenWindow.md#L28)</span>


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

