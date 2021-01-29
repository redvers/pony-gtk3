# GtkRange
<span class="source-link">[[Source]](src/gtk3/GtkRange.md#L6)</span>

#GtkRange is the common base class for widgets which visualize an
adjustment, e.g #GtkScale or #GtkScrollbar.

Apart from signals for monitoring the parameters of the adjustment,
#GtkRange provides properties and methods for influencing the sensitivity
of the “steppers”. It also provides properties and methods for setting a
“fill level” on range widgets. See gtk_range_set_fill_level().


```pony
class val GtkRange is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkRange.md#L20)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkRange val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkRange](gtk3-GtkRange.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkRange.md#L23)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkRange val^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkRange](gtk3-GtkRange.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkRange.md#L26)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkRange val^
```

#### Returns

* [GtkRange](gtk3-GtkRange.md) val^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkRange.md#L16)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkRange.md#L18)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_adjustment
<span class="source-link">[[Source]](src/gtk3/GtkRange.md#L32)</span>


    Get the #GtkAdjustment which is the “model” object for #GtkRange.
See gtk_range_set_adjustment() for details.
The return value does not have a reference added, so should not
be unreferenced.

    {:argctype, "GtkAdjustment*"}
{:argname, "rv"}
{:argtype, "Adjustment"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_adjustment()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_fill_level
<span class="source-link">[[Source]](src/gtk3/GtkRange.md#L47)</span>


    Gets the current position of the fill level indicator.

    {:argctype, "gdouble"}
{:argname, "rv"}
{:argtype, "gdouble"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_fill_level()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### get_flippable
<span class="source-link">[[Source]](src/gtk3/GtkRange.md#L59)</span>


Gets the value set by gtk_range_set_flippable().


```pony
fun box get_flippable()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_inverted
<span class="source-link">[[Source]](src/gtk3/GtkRange.md#L65)</span>


Gets the value set by gtk_range_set_inverted().


```pony
fun box get_inverted()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_lower_stepper_sensitivity
<span class="source-link">[[Source]](src/gtk3/GtkRange.md#L71)</span>


    Gets the sensitivity policy for the stepper that points to the
'lower' end of the GtkRange’s adjustment.

    {:argctype, "GtkSensitivityType"}
{:argname, "rv"}
{:argtype, "SensitivityType"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_lower_stepper_sensitivity()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### get_min_slider_size
<span class="source-link">[[Source]](src/gtk3/GtkRange.md#L84)</span>


This function is useful mainly for #GtkRange subclasses.

See gtk_range_set_min_slider_size().


```pony
fun box get_min_slider_size()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_range_rect
<span class="source-link">[[Source]](src/gtk3/GtkRange.md#L92)</span>


    This function returns the area that contains the range’s trough
and its steppers, in widget->window coordinates.

This function is useful mainly for #GtkRange subclasses.

    {:doh, %{argctype: "GdkRectangle*", argname: "range_rect", argtype: "Gdk.Rectangle", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_range_rect()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### get_restrict_to_fill_level
<span class="source-link">[[Source]](src/gtk3/GtkRange.md#L103)</span>


Gets whether the range is restricted to the fill level.


```pony
fun box get_restrict_to_fill_level()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_round_digits
<span class="source-link">[[Source]](src/gtk3/GtkRange.md#L109)</span>


Gets the number of digits to round the value to when
it changes. See #GtkRange::change-value.


```pony
fun box get_round_digits()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### get_show_fill_level
<span class="source-link">[[Source]](src/gtk3/GtkRange.md#L116)</span>


Gets whether the range displays the fill level graphically.


```pony
fun box get_show_fill_level()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_slider_range
<span class="source-link">[[Source]](src/gtk3/GtkRange.md#L122)</span>


    This function returns sliders range along the long dimension,
in widget->window coordinates.

This function is useful mainly for #GtkRange subclasses.

    {:doh, %{argctype: "gint*", argname: "slider_start", argtype: "gint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gint*", argname: "slider_end", argtype: "gint", paramtype: :param, txo: "full"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_slider_range()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### get_slider_size_fixed
<span class="source-link">[[Source]](src/gtk3/GtkRange.md#L134)</span>


This function is useful mainly for #GtkRange subclasses.

See gtk_range_set_slider_size_fixed().


```pony
fun box get_slider_size_fixed()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_upper_stepper_sensitivity
<span class="source-link">[[Source]](src/gtk3/GtkRange.md#L142)</span>


    Gets the sensitivity policy for the stepper that points to the
'upper' end of the GtkRange’s adjustment.

    {:argctype, "GtkSensitivityType"}
{:argname, "rv"}
{:argtype, "SensitivityType"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_upper_stepper_sensitivity()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_value
<span class="source-link">[[Source]](src/gtk3/GtkRange.md#L155)</span>


    Gets the current value of the range.

    {:argctype, "gdouble"}
{:argname, "rv"}
{:argtype, "gdouble"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_value()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_adjustment
<span class="source-link">[[Source]](src/gtk3/GtkRange.md#L167)</span>


    Sets the adjustment to be used as the “model” object for this range
widget. The adjustment indicates the current range value, the
minimum and maximum range values, the step/page increments used
for keybindings and scrolling, and the page size. The page size
is normally 0 for #GtkScale and nonzero for #GtkScrollbar, and
indicates the size of the visible area of the widget being scrolled.
The page size affects the size of the scrollbar slider.

    {:doh, %{argctype: "GtkAdjustment*", argname: "adjustment", argtype: "Adjustment", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_adjustment()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_fill_level
<span class="source-link">[[Source]](src/gtk3/GtkRange.md#L181)</span>


    Set the new position of the fill level indicator.

The “fill level” is probably best described by its most prominent
use case, which is an indicator for the amount of pre-buffering in
a streaming media player. In that use case, the value of the range
would indicate the current play position, and the fill level would
be the position up to which the file/stream has been downloaded.

This amount of prebuffering can be displayed on the range’s trough
and is themeable separately from the trough. To enable fill level
display, use gtk_range_set_show_fill_level(). The range defaults
to not showing the fill level.

Additionally, it’s possible to restrict the range’s slider position
to values which are smaller than the fill level. This is controller
by gtk_range_set_restrict_to_fill_level() and is by default
enabled.

    {:doh, %{argctype: "gdouble", argname: "fill_level", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_fill_level()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### set_flippable
<span class="source-link">[[Source]](src/gtk3/GtkRange.md#L205)</span>


If a range is flippable, it will switch its direction if it is
horizontal and its direction is %GTK_TEXT_DIR_RTL.

See gtk_widget_get_direction().


```pony
fun box set_flippable(
  flippable_pony: Bool val)
: None val
```
#### Parameters

*   flippable_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_increments
<span class="source-link">[[Source]](src/gtk3/GtkRange.md#L214)</span>


    Sets the step and page sizes for the range.
The step size is used when the user clicks the #GtkScrollbar
arrows or moves #GtkScale via arrow keys. The page size
is used for example when moving via Page Up or Page Down keys.

    {:doh, %{argctype: "gdouble", argname: "step", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "page", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_increments()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### set_inverted
<span class="source-link">[[Source]](src/gtk3/GtkRange.md#L226)</span>


Ranges normally move from lower to higher values as the
slider moves from top to bottom or left to right. Inverted
ranges have higher values at the top or on the right rather than
on the bottom or left.


```pony
fun box set_inverted(
  setting_pony: Bool val)
: None val
```
#### Parameters

*   setting_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_lower_stepper_sensitivity
<span class="source-link">[[Source]](src/gtk3/GtkRange.md#L235)</span>


    Sets the sensitivity policy for the stepper that points to the
'lower' end of the GtkRange’s adjustment.

    {:doh, %{argctype: "GtkSensitivityType", argname: "sensitivity", argtype: "SensitivityType", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_lower_stepper_sensitivity()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### set_min_slider_size
<span class="source-link">[[Source]](src/gtk3/GtkRange.md#L244)</span>


Sets the minimum size of the range’s slider.

This function is useful mainly for #GtkRange subclasses.


```pony
fun box set_min_slider_size(
  min_size_pony: I32 val)
: None val
```
#### Parameters

*   min_size_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_range
<span class="source-link">[[Source]](src/gtk3/GtkRange.md#L252)</span>


    Sets the allowable values in the #GtkRange, and clamps the range
value to be between @min and @max. (If the range has a non-zero
page size, it is clamped between @min and @max - page-size.)

    {:doh, %{argctype: "gdouble", argname: "min", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "max", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_range()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### set_restrict_to_fill_level
<span class="source-link">[[Source]](src/gtk3/GtkRange.md#L263)</span>


Sets whether the slider is restricted to the fill level. See
gtk_range_set_fill_level() for a general description of the fill
level concept.


```pony
fun box set_restrict_to_fill_level(
  restrict_to_fill_level_pony: Bool val)
: None val
```
#### Parameters

*   restrict_to_fill_level_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_round_digits
<span class="source-link">[[Source]](src/gtk3/GtkRange.md#L271)</span>


Sets the number of digits to round the value to when
it changes. See #GtkRange::change-value.


```pony
fun box set_round_digits(
  round_digits_pony: I32 val)
: None val
```
#### Parameters

*   round_digits_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_show_fill_level
<span class="source-link">[[Source]](src/gtk3/GtkRange.md#L278)</span>


Sets whether a graphical fill level is show on the trough. See
gtk_range_set_fill_level() for a general description of the fill
level concept.


```pony
fun box set_show_fill_level(
  show_fill_level_pony: Bool val)
: None val
```
#### Parameters

*   show_fill_level_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_slider_size_fixed
<span class="source-link">[[Source]](src/gtk3/GtkRange.md#L286)</span>


Sets whether the range’s slider has a fixed size, or a size that
depends on its adjustment’s page size.

This function is useful mainly for #GtkRange subclasses.


```pony
fun box set_slider_size_fixed(
  size_fixed_pony: Bool val)
: None val
```
#### Parameters

*   size_fixed_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_upper_stepper_sensitivity
<span class="source-link">[[Source]](src/gtk3/GtkRange.md#L295)</span>


    Sets the sensitivity policy for the stepper that points to the
'upper' end of the GtkRange’s adjustment.

    {:doh, %{argctype: "GtkSensitivityType", argname: "sensitivity", argtype: "SensitivityType", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_upper_stepper_sensitivity()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_value
<span class="source-link">[[Source]](src/gtk3/GtkRange.md#L304)</span>


    Sets the current value of the range; if the value is outside the
minimum or maximum range values, it will be clamped to fit inside
them. The range emits the #GtkRange::value-changed signal if the
value changes.

    {:doh, %{argctype: "gdouble", argname: "value", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_value()
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

