# GtkScrolledWindow
<span class="source-link">[[Source]](src/gtk3/GtkScrolledWindow.md#L6)</span>
```pony
class ref GtkScrolledWindow is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkScrolledWindow.md#L10)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkScrolledWindow ref^
```

#### Returns

* [GtkScrolledWindow](gtk3-GtkScrolledWindow.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkScrolledWindow.md#L13)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkScrolledWindow ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkScrolledWindow](gtk3-GtkScrolledWindow.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkScrolledWindow.md#L17)</span>


```pony
new ref create(
  hadjustment_pony: GtkAdjustment ref,
  vadjustment_pony: GtkAdjustment ref)
: GtkScrolledWindow ref^
```
#### Parameters

*   hadjustment_pony: [GtkAdjustment](gtk3-GtkAdjustment.md) ref
*   vadjustment_pony: [GtkAdjustment](gtk3-GtkAdjustment.md) ref

#### Returns

* [GtkScrolledWindow](gtk3-GtkScrolledWindow.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkScrolledWindow.md#L7)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkScrolledWindow.md#L9)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### get_capture_button_press
<span class="source-link">[[Source]](src/gtk3/GtkScrolledWindow.md#L25)</span>


Return whether button presses are captured during kinetic
scrolling. See gtk_scrolled_window_set_capture_button_press().


```pony
fun box get_capture_button_press()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_kinetic_scrolling
<span class="source-link">[[Source]](src/gtk3/GtkScrolledWindow.md#L46)</span>


Returns the specified kinetic scrolling behavior.


```pony
fun box get_kinetic_scrolling()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_max_content_height
<span class="source-link">[[Source]](src/gtk3/GtkScrolledWindow.md#L52)</span>


Returns the maximum content height set.


```pony
fun box get_max_content_height()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### get_max_content_width
<span class="source-link">[[Source]](src/gtk3/GtkScrolledWindow.md#L58)</span>


Returns the maximum content width set.


```pony
fun box get_max_content_width()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### get_min_content_height
<span class="source-link">[[Source]](src/gtk3/GtkScrolledWindow.md#L64)</span>


Gets the minimal content height of @scrolled_window, or -1 if not set.


```pony
fun box get_min_content_height()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### get_min_content_width
<span class="source-link">[[Source]](src/gtk3/GtkScrolledWindow.md#L70)</span>


Gets the minimum content width of @scrolled_window, or -1 if not set.


```pony
fun box get_min_content_width()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### get_overlay_scrolling
<span class="source-link">[[Source]](src/gtk3/GtkScrolledWindow.md#L76)</span>


Returns whether overlay scrolling is enabled for this scrolled window.


```pony
fun box get_overlay_scrolling()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_propagate_natural_height
<span class="source-link">[[Source]](src/gtk3/GtkScrolledWindow.md#L94)</span>


Reports whether the natural height of the child will be calculated and propagated
through the scrolled window’s requested natural height.


```pony
fun box get_propagate_natural_height()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_propagate_natural_width
<span class="source-link">[[Source]](src/gtk3/GtkScrolledWindow.md#L101)</span>


Reports whether the natural width of the child will be calculated and propagated
through the scrolled window’s requested natural width.


```pony
fun box get_propagate_natural_width()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### set_capture_button_press
<span class="source-link">[[Source]](src/gtk3/GtkScrolledWindow.md#L129)</span>


Changes the behaviour of @scrolled_window with regard to the initial
event that possibly starts kinetic scrolling. When @capture_button_press
is set to %TRUE, the event is captured by the scrolled window, and
then later replayed if it is meant to go to the child widget.

This should be enabled if any child widgets perform non-reversible
actions on #GtkWidget::button-press-event. If they don't, and handle
additionally handle #GtkWidget::grab-broken-event, it might be better
to set @capture_button_press to %FALSE.

This setting only has an effect if kinetic scrolling is enabled.


```pony
fun box set_capture_button_press(
  capture_button_press_pony: Bool val)
: None val
```
#### Parameters

*   capture_button_press_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_kinetic_scrolling
<span class="source-link">[[Source]](src/gtk3/GtkScrolledWindow.md#L149)</span>


Turns kinetic scrolling on or off.
Kinetic scrolling only applies to devices with source
%GDK_SOURCE_TOUCHSCREEN.


```pony
fun box set_kinetic_scrolling(
  kinetic_scrolling_pony: Bool val)
: None val
```
#### Parameters

*   kinetic_scrolling_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_max_content_height
<span class="source-link">[[Source]](src/gtk3/GtkScrolledWindow.md#L157)</span>


Sets the maximum height that @scrolled_window should keep visible. The
@scrolled_window will grow up to this height before it starts scrolling
the content.

It is a programming error to set the maximum content height to a value
smaller than #GtkScrolledWindow:min-content-height.


```pony
fun box set_max_content_height(
  height_pony: I32 val)
: None val
```
#### Parameters

*   height_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_max_content_width
<span class="source-link">[[Source]](src/gtk3/GtkScrolledWindow.md#L168)</span>


Sets the maximum width that @scrolled_window should keep visible. The
@scrolled_window will grow up to this width before it starts scrolling
the content.

It is a programming error to set the maximum content width to a value
smaller than #GtkScrolledWindow:min-content-width.


```pony
fun box set_max_content_width(
  width_pony: I32 val)
: None val
```
#### Parameters

*   width_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_min_content_height
<span class="source-link">[[Source]](src/gtk3/GtkScrolledWindow.md#L179)</span>


Sets the minimum height that @scrolled_window should keep visible.
Note that this can and (usually will) be smaller than the minimum
size of the content.

It is a programming error to set the minimum content height to a
value greater than #GtkScrolledWindow:max-content-height.


```pony
fun box set_min_content_height(
  height_pony: I32 val)
: None val
```
#### Parameters

*   height_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_min_content_width
<span class="source-link">[[Source]](src/gtk3/GtkScrolledWindow.md#L190)</span>


Sets the minimum width that @scrolled_window should keep visible.
Note that this can and (usually will) be smaller than the minimum
size of the content.

It is a programming error to set the minimum content width to a
value greater than #GtkScrolledWindow:max-content-width.


```pony
fun box set_min_content_width(
  width_pony: I32 val)
: None val
```
#### Parameters

*   width_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_overlay_scrolling
<span class="source-link">[[Source]](src/gtk3/GtkScrolledWindow.md#L201)</span>


Enables or disables overlay scrolling for this scrolled window.


```pony
fun box set_overlay_scrolling(
  overlay_scrolling_pony: Bool val)
: None val
```
#### Parameters

*   overlay_scrolling_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_propagate_natural_height
<span class="source-link">[[Source]](src/gtk3/GtkScrolledWindow.md#L216)</span>


Sets whether the natural height of the child should be calculated and propagated
through the scrolled window’s requested natural height.


```pony
fun box set_propagate_natural_height(
  propagate_pony: Bool val)
: None val
```
#### Parameters

*   propagate_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_propagate_natural_width
<span class="source-link">[[Source]](src/gtk3/GtkScrolledWindow.md#L223)</span>


Sets whether the natural width of the child should be calculated and propagated
through the scrolled window’s requested natural width.


```pony
fun box set_propagate_natural_width(
  propagate_pony: Bool val)
: None val
```
#### Parameters

*   propagate_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### unset_placement
<span class="source-link">[[Source]](src/gtk3/GtkScrolledWindow.md#L238)</span>


Unsets the placement of the contents with respect to the scrollbars
for the scrolled window. If no window placement is set for a scrolled
window, it defaults to %GTK_CORNER_TOP_LEFT.

See also gtk_scrolled_window_set_placement() and
gtk_scrolled_window_get_placement().


```pony
fun box unset_placement()
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

