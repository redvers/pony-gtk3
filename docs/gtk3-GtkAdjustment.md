# GtkAdjustment
<span class="source-link">[[Source]](src/gtk3/GtkAdjustment.md#L6)</span>

The #GtkAdjustment object represents a value which has an associated lower
and upper bound, together with step and page increments, and a page size.
It is used within several GTK+ widgets, including #GtkSpinButton, #GtkViewport,
and #GtkRange (which is a base class for #GtkScrollbar and #GtkScale).

The #GtkAdjustment object does not update the value itself. Instead
it is left up to the owner of the #GtkAdjustment to control the value.


```pony
class val GtkAdjustment is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkAdjustment.md#L20)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkAdjustment val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkAdjustment](gtk3-GtkAdjustment.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkAdjustment.md#L23)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkAdjustment val^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkAdjustment](gtk3-GtkAdjustment.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkAdjustment.md#L26)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkAdjustment val^
```

#### Returns

* [GtkAdjustment](gtk3-GtkAdjustment.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkAdjustment.md#L30)</span>


```pony
new val create(
  value_pony: F64 val,
  lower_pony: F64 val,
  upper_pony: F64 val,
  step_increment_pony: F64 val,
  page_increment_pony: F64 val,
  page_size_pony: F64 val)
: GtkAdjustment val^
```
#### Parameters

*   value_pony: [F64](builtin-F64.md) val
*   lower_pony: [F64](builtin-F64.md) val
*   upper_pony: [F64](builtin-F64.md) val
*   step_increment_pony: [F64](builtin-F64.md) val
*   page_increment_pony: [F64](builtin-F64.md) val
*   page_size_pony: [F64](builtin-F64.md) val

#### Returns

* [GtkAdjustment](gtk3-GtkAdjustment.md) val^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkAdjustment.md#L16)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkAdjustment.md#L18)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### changed
<span class="source-link">[[Source]](src/gtk3/GtkAdjustment.md#L34)</span>


Emits a #GtkAdjustment::changed signal from the #GtkAdjustment.
This is typically called by the owner of the #GtkAdjustment after it has
changed any of the #GtkAdjustment properties other than the value.


```pony
fun box changed()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_clamp_page
<span class="source-link">[[Source]](src/gtk3/GtkAdjustment.md#L42)</span>


    Updates the #GtkAdjustment:value property to ensure that the range
between @lower and @upper is in the current page (i.e. between
#GtkAdjustment:value and #GtkAdjustment:value + #GtkAdjustment:page-size).
If the range is larger than the page size, then only the start of it will
be in the current page.

A #GtkAdjustment::value-changed signal will be emitted if the value is changed.

    {:doh, %{argctype: "gdouble", argname: "lower", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "upper", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_clamp_page()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_configure
<span class="source-link">[[Source]](src/gtk3/GtkAdjustment.md#L57)</span>


    Sets all properties of the adjustment at once.

Use this function to avoid multiple emissions of the
#GtkAdjustment::changed signal. See gtk_adjustment_set_lower()
for an alternative way of compressing multiple emissions of
#GtkAdjustment::changed into one.

    {:doh, %{argctype: "gdouble", argname: "value", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "lower", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "upper", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "step_increment", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "page_increment", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "page_size", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_configure()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_lower
<span class="source-link">[[Source]](src/gtk3/GtkAdjustment.md#L75)</span>


    Retrieves the minimum value of the adjustment.

    {:argctype, "gdouble"}
{:argname, "rv"}
{:argtype, "gdouble"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_lower()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_minimum_increment
<span class="source-link">[[Source]](src/gtk3/GtkAdjustment.md#L87)</span>


    Gets the smaller of step increment and page increment.

    {:argctype, "gdouble"}
{:argname, "rv"}
{:argtype, "gdouble"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_minimum_increment()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_page_increment
<span class="source-link">[[Source]](src/gtk3/GtkAdjustment.md#L99)</span>


    Retrieves the page increment of the adjustment.

    {:argctype, "gdouble"}
{:argname, "rv"}
{:argtype, "gdouble"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_page_increment()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_page_size
<span class="source-link">[[Source]](src/gtk3/GtkAdjustment.md#L111)</span>


    Retrieves the page size of the adjustment.

    {:argctype, "gdouble"}
{:argname, "rv"}
{:argtype, "gdouble"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_page_size()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_step_increment
<span class="source-link">[[Source]](src/gtk3/GtkAdjustment.md#L123)</span>


    Retrieves the step increment of the adjustment.

    {:argctype, "gdouble"}
{:argname, "rv"}
{:argtype, "gdouble"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_step_increment()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_upper
<span class="source-link">[[Source]](src/gtk3/GtkAdjustment.md#L135)</span>


    Retrieves the maximum value of the adjustment.

    {:argctype, "gdouble"}
{:argname, "rv"}
{:argtype, "gdouble"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_upper()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_value
<span class="source-link">[[Source]](src/gtk3/GtkAdjustment.md#L147)</span>


    Gets the current value of the adjustment.
See gtk_adjustment_set_value().

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

### pony_NOT_IMPLEMENTED_YET_set_lower
<span class="source-link">[[Source]](src/gtk3/GtkAdjustment.md#L160)</span>


    Sets the minimum value of the adjustment.

When setting multiple adjustment properties via their individual
setters, multiple #GtkAdjustment::changed signals will be emitted.
However, since the emission of the #GtkAdjustment::changed signal
is tied to the emission of the #GObject::notify signals of the changed
properties, it’s possible to compress the #GtkAdjustment::changed
signals into one by calling g_object_freeze_notify() and
g_object_thaw_notify() around the calls to the individual setters.

Alternatively, using a single g_object_set() for all the properties
to change, or using gtk_adjustment_configure() has the same effect
of compressing #GtkAdjustment::changed emissions.

    {:doh, %{argctype: "gdouble", argname: "lower", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_lower()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_page_increment
<span class="source-link">[[Source]](src/gtk3/GtkAdjustment.md#L180)</span>


    Sets the page increment of the adjustment.

See gtk_adjustment_set_lower() about how to compress multiple
emissions of the #GtkAdjustment::changed signal when setting
multiple adjustment properties.

    {:doh, %{argctype: "gdouble", argname: "page_increment", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_page_increment()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_page_size
<span class="source-link">[[Source]](src/gtk3/GtkAdjustment.md#L192)</span>


    Sets the page size of the adjustment.

See gtk_adjustment_set_lower() about how to compress multiple
emissions of the GtkAdjustment::changed signal when setting
multiple adjustment properties.

    {:doh, %{argctype: "gdouble", argname: "page_size", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_page_size()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_step_increment
<span class="source-link">[[Source]](src/gtk3/GtkAdjustment.md#L204)</span>


    Sets the step increment of the adjustment.

See gtk_adjustment_set_lower() about how to compress multiple
emissions of the #GtkAdjustment::changed signal when setting
multiple adjustment properties.

    {:doh, %{argctype: "gdouble", argname: "step_increment", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_step_increment()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_upper
<span class="source-link">[[Source]](src/gtk3/GtkAdjustment.md#L216)</span>


    Sets the maximum value of the adjustment.

Note that values will be restricted by `upper - page-size`
if the page-size property is nonzero.

See gtk_adjustment_set_lower() about how to compress multiple
emissions of the #GtkAdjustment::changed signal when setting
multiple adjustment properties.

    {:doh, %{argctype: "gdouble", argname: "upper", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_upper()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_value
<span class="source-link">[[Source]](src/gtk3/GtkAdjustment.md#L231)</span>


    Sets the #GtkAdjustment value. The value is clamped to lie between
#GtkAdjustment:lower and #GtkAdjustment:upper.

Note that for adjustments which are used in a #GtkScrollbar, the
effective range of allowed values goes from #GtkAdjustment:lower to
#GtkAdjustment:upper - #GtkAdjustment:page-size.

    {:doh, %{argctype: "gdouble", argname: "value", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_value()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### value_changed
<span class="source-link">[[Source]](src/gtk3/GtkAdjustment.md#L244)</span>


Emits a #GtkAdjustment::value-changed signal from the #GtkAdjustment.
This is typically called by the owner of the #GtkAdjustment after it has
changed the #GtkAdjustment:value property.


```pony
fun box value_changed()
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

