# GtkLayout
<span class="source-link">[[Source]](src/gtk3/GtkLayout.md#L6)</span>

#GtkLayout is similar to #GtkDrawingArea in that it’s a “blank slate” and
doesn’t do anything except paint a blank background by default. It’s
different in that it supports scrolling natively due to implementing
#GtkScrollable, and can contain child widgets since it’s a #GtkContainer.

If you just want to draw, a #GtkDrawingArea is a better choice since it has
lower overhead. If you just need to position child widgets at specific
points, then #GtkFixed provides that functionality on its own.

When handling expose events on a #GtkLayout, you must draw to the #GdkWindow
returned by gtk_layout_get_bin_window(), rather than to the one returned by
gtk_widget_get_window() as you would for a #GtkDrawingArea.


```pony
class ref GtkLayout is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkLayout.md#L24)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkLayout ref^
```

#### Returns

* [GtkLayout](gtk3-GtkLayout.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkLayout.md#L27)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkLayout ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkLayout](gtk3-GtkLayout.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkLayout.md#L31)</span>


```pony
new ref create(
  hadjustment_pony: GtkAdjustment ref,
  vadjustment_pony: GtkAdjustment ref)
: GtkLayout ref^
```
#### Parameters

*   hadjustment_pony: [GtkAdjustment](gtk3-GtkAdjustment.md) ref
*   vadjustment_pony: [GtkAdjustment](gtk3-GtkAdjustment.md) ref

#### Returns

* [GtkLayout](gtk3-GtkLayout.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkLayout.md#L21)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkLayout.md#L23)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### set_size
<span class="source-link">[[Source]](src/gtk3/GtkLayout.md#L73)</span>


Sets the size of the scrollable area of the layout.


```pony
fun box set_size(
  width_pony: U32 val,
  height_pony: U32 val)
: None val
```
#### Parameters

*   width_pony: [U32](builtin-U32.md) val
*   height_pony: [U32](builtin-U32.md) val

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

