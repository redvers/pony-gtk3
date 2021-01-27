# GtkSpinButton
<span class="source-link">[[Source]](src/gtk3/GtkSpinButton.md#L6)</span>
```pony
class ref GtkSpinButton is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkSpinButton.md#L10)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkSpinButton ref^
```

#### Returns

* [GtkSpinButton](gtk3-GtkSpinButton.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkSpinButton.md#L13)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkSpinButton ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkSpinButton](gtk3-GtkSpinButton.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkSpinButton.md#L17)</span>


```pony
new ref create(
  adjustment_pony: GtkAdjustment ref,
  climb_rate_pony: F64 val,
  digits_pony: U32 val)
: GtkSpinButton ref^
```
#### Parameters

*   adjustment_pony: [GtkAdjustment](gtk3-GtkAdjustment.md) ref
*   climb_rate_pony: [F64](builtin-F64.md) val
*   digits_pony: [U32](builtin-U32.md) val

#### Returns

* [GtkSpinButton](gtk3-GtkSpinButton.md) ref^

---

### new_with_range
<span class="source-link">[[Source]](src/gtk3/GtkSpinButton.md#L20)</span>


```pony
new ref new_with_range(
  min_pony: F64 val,
  max_pony: F64 val,
  step_pony: F64 val)
: GtkSpinButton ref^
```
#### Parameters

*   min_pony: [F64](builtin-F64.md) val
*   max_pony: [F64](builtin-F64.md) val
*   step_pony: [F64](builtin-F64.md) val

#### Returns

* [GtkSpinButton](gtk3-GtkSpinButton.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkSpinButton.md#L7)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkSpinButton.md#L9)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### get_digits
<span class="source-link">[[Source]](src/gtk3/GtkSpinButton.md#L36)</span>


Fetches the precision of @spin_button. See gtk_spin_button_set_digits().


```pony
fun box get_digits()
: U32 val
```

#### Returns

* [U32](builtin-U32.md) val

---

### get_numeric
<span class="source-link">[[Source]](src/gtk3/GtkSpinButton.md#L47)</span>


Returns whether non-numeric text can be typed into the spin button.
See gtk_spin_button_set_numeric().


```pony
fun box get_numeric()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_snap_to_ticks
<span class="source-link">[[Source]](src/gtk3/GtkSpinButton.md#L59)</span>


Returns whether the values are corrected to the nearest step.
See gtk_spin_button_set_snap_to_ticks().


```pony
fun box get_snap_to_ticks()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_value_as_int
<span class="source-link">[[Source]](src/gtk3/GtkSpinButton.md#L80)</span>


Get the value @spin_button represented as an integer.


```pony
fun box get_value_as_int()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### get_wrap
<span class="source-link">[[Source]](src/gtk3/GtkSpinButton.md#L86)</span>


Returns whether the spin button’s value wraps around to the
opposite limit when the upper or lower limit of the range is
exceeded. See gtk_spin_button_set_wrap().


```pony
fun box get_wrap()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### set_digits
<span class="source-link">[[Source]](src/gtk3/GtkSpinButton.md#L98)</span>


Set the precision to be displayed by @spin_button. Up to 20 digit precision
is allowed.


```pony
fun box set_digits(
  digits_pony: U32 val)
: None val
```
#### Parameters

*   digits_pony: [U32](builtin-U32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_numeric
<span class="source-link">[[Source]](src/gtk3/GtkSpinButton.md#L110)</span>


Sets the flag that determines if non-numeric text can be typed
into the spin button.


```pony
fun box set_numeric(
  numeric_pony: Bool val)
: None val
```
#### Parameters

*   numeric_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_snap_to_ticks
<span class="source-link">[[Source]](src/gtk3/GtkSpinButton.md#L122)</span>


Sets the policy as to whether values are corrected to the
nearest step increment when a spin button is activated after
providing an invalid value.


```pony
fun box set_snap_to_ticks(
  snap_to_ticks_pony: Bool val)
: None val
```
#### Parameters

*   snap_to_ticks_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_wrap
<span class="source-link">[[Source]](src/gtk3/GtkSpinButton.md#L138)</span>


Sets the flag that determines if a spin button value wraps
around to the opposite limit when the upper or lower limit
of the range is exceeded.


```pony
fun box set_wrap(
  wrap_pony: Bool val)
: None val
```
#### Parameters

*   wrap_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### update
<span class="source-link">[[Source]](src/gtk3/GtkSpinButton.md#L151)</span>


Manually force an update of the spin button.


```pony
fun box update()
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

