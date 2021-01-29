# GtkLevelBar
<span class="source-link">[[Source]](src/gtk3/GtkLevelBar.md#L6)</span>

The #GtkLevelBar is a bar widget that can be used
as a level indicator. Typical use cases are displaying the strength
of a password, or showing the charge level of a battery.

Use gtk_level_bar_set_value() to set the current value, and
gtk_level_bar_add_offset_value() to set the value offsets at which
the bar will be considered in a different state. GTK will add a few
offsets by default on the level bar: #GTK_LEVEL_BAR_OFFSET_LOW,
#GTK_LEVEL_BAR_OFFSET_HIGH and #GTK_LEVEL_BAR_OFFSET_FULL, with
values 0.25, 0.75 and 1.0 respectively.

Note that it is your responsibility to update preexisting offsets
when changing the minimum or maximum value. GTK+ will simply clamp
them to the new range.

## Adding a custom offset on the bar

|[<!-- language="C" -->

static GtkWidget *
create_level_bar (void)
{
  GtkWidget *widget;
  GtkLevelBar *bar;

  widget = gtk_level_bar_new ();
  bar = GTK_LEVEL_BAR (widget);

  // This changes the value of the default low offset

  gtk_level_bar_add_offset_value (bar,
                                  GTK_LEVEL_BAR_OFFSET_LOW,
                                  0.10);

  // This adds a new offset to the bar; the application will
  // be able to change its color CSS like this:
  //
  // levelbar block.my-offset {
  //   background-color: magenta;
  //   border-style: solid;
  //   border-color: black;
  //   border-style: 1px;
  // }

  gtk_level_bar_add_offset_value (bar, "my-offset", 0.60);

  return widget;
}
]|

The default interval of values is between zero and one, but it’s possible to
modify the interval using gtk_level_bar_set_min_value() and
gtk_level_bar_set_max_value(). The value will be always drawn in proportion to
the admissible interval, i.e. a value of 15 with a specified interval between
10 and 20 is equivalent to a value of 0.5 with an interval between 0 and 1.
When #GTK_LEVEL_BAR_MODE_DISCRETE is used, the bar level is rendered
as a finite number of separated blocks instead of a single one. The number
of blocks that will be rendered is equal to the number of units specified by
the admissible interval.

For instance, to build a bar rendered with five blocks, it’s sufficient to
set the minimum value to 0 and the maximum value to 5 after changing the indicator
mode to discrete.

GtkLevelBar was introduced in GTK+ 3.6.

# GtkLevelBar as GtkBuildable

The GtkLevelBar implementation of the GtkBuildable interface supports a
custom <offsets> element, which can contain any number of <offset> elements,
each of which must have name and value attributes.

# CSS nodes

|[<!-- language="plain" -->
levelbar[.discrete]
╰── trough
    ├── block.filled.level-name
    ┊
    ├── block.empty
    ┊
]|

GtkLevelBar has a main CSS node with name levelbar and one of the style
classes .discrete or .continuous and a subnode with name trough. Below the
trough node are a number of nodes with name block and style class .filled
or .empty. In continuous mode, there is exactly one node of each, in discrete
mode, the number of filled and unfilled nodes corresponds to blocks that are
drawn. The block.filled nodes also get a style class .level-name corresponding
to the level for the current value.

In horizontal orientation, the nodes are always arranged from left to right,
regardless of text direction.


```pony
class val GtkLevelBar is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkLevelBar.md#L106)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkLevelBar val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkLevelBar](gtk3-GtkLevelBar.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkLevelBar.md#L109)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkLevelBar val^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkLevelBar](gtk3-GtkLevelBar.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkLevelBar.md#L112)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkLevelBar val^
```

#### Returns

* [GtkLevelBar](gtk3-GtkLevelBar.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkLevelBar.md#L116)</span>


```pony
new val create()
: GtkLevelBar val^
```

#### Returns

* [GtkLevelBar](gtk3-GtkLevelBar.md) val^

---

### new_for_interval
<span class="source-link">[[Source]](src/gtk3/GtkLevelBar.md#L119)</span>


```pony
new val new_for_interval(
  min_value_pony: F64 val,
  max_value_pony: F64 val)
: GtkLevelBar val^
```
#### Parameters

*   min_value_pony: [F64](builtin-F64.md) val
*   max_value_pony: [F64](builtin-F64.md) val

#### Returns

* [GtkLevelBar](gtk3-GtkLevelBar.md) val^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkLevelBar.md#L102)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkLevelBar.md#L104)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### pony_NOT_IMPLEMENTED_YET_add_offset_value
<span class="source-link">[[Source]](src/gtk3/GtkLevelBar.md#L123)</span>


    Adds a new offset marker on @self at the position specified by @value.
When the bar value is in the interval topped by @value (or between @value
and #GtkLevelBar:max-value in case the offset is the last one on the bar)
a style class named `level-`@name will be applied
when rendering the level bar fill.
If another offset marker named @name exists, its value will be
replaced by @value.

    {:doh, %{argctype: "const gchar*", argname: "name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "value", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_add_offset_value()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### get_inverted
<span class="source-link">[[Source]](src/gtk3/GtkLevelBar.md#L138)</span>


Return the value of the #GtkLevelBar:inverted property.


```pony
fun box get_inverted()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_max_value
<span class="source-link">[[Source]](src/gtk3/GtkLevelBar.md#L144)</span>


    Returns the value of the #GtkLevelBar:max-value property.

    {:argctype, "gdouble"}
{:argname, "rv"}
{:argtype, "gdouble"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_max_value()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_min_value
<span class="source-link">[[Source]](src/gtk3/GtkLevelBar.md#L156)</span>


    Returns the value of the #GtkLevelBar:min-value property.

    {:argctype, "gdouble"}
{:argname, "rv"}
{:argtype, "gdouble"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_min_value()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_mode
<span class="source-link">[[Source]](src/gtk3/GtkLevelBar.md#L168)</span>


    Returns the value of the #GtkLevelBar:mode property.

    {:argctype, "GtkLevelBarMode"}
{:argname, "rv"}
{:argtype, "LevelBarMode"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_mode()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_offset_value
<span class="source-link">[[Source]](src/gtk3/GtkLevelBar.md#L180)</span>


    Fetches the value specified for the offset marker @name in @self,
returning %TRUE in case an offset named @name was found.

    {:doh, %{argctype: "const gchar*", argname: "name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble*", argname: "value", argtype: "gdouble", paramtype: :param, txo: "full"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_offset_value()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_value
<span class="source-link">[[Source]](src/gtk3/GtkLevelBar.md#L190)</span>


    Returns the value of the #GtkLevelBar:value property.

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

### pony_NOT_IMPLEMENTED_YET_remove_offset_value
<span class="source-link">[[Source]](src/gtk3/GtkLevelBar.md#L202)</span>


    Removes an offset marker previously added with
gtk_level_bar_add_offset_value().

    {:doh, %{argctype: "const gchar*", argname: "name", argtype: "utf8", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_remove_offset_value()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### set_inverted
<span class="source-link">[[Source]](src/gtk3/GtkLevelBar.md#L211)</span>


Sets the value of the #GtkLevelBar:inverted property.


```pony
fun box set_inverted(
  inverted_pony: Bool val)
: None val
```
#### Parameters

*   inverted_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_max_value
<span class="source-link">[[Source]](src/gtk3/GtkLevelBar.md#L217)</span>


    Sets the value of the #GtkLevelBar:max-value property.

You probably want to update preexisting level offsets after calling
this function.

    {:doh, %{argctype: "gdouble", argname: "value", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_max_value()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_min_value
<span class="source-link">[[Source]](src/gtk3/GtkLevelBar.md#L228)</span>


    Sets the value of the #GtkLevelBar:min-value property.

You probably want to update preexisting level offsets after calling
this function.

    {:doh, %{argctype: "gdouble", argname: "value", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_min_value()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_mode
<span class="source-link">[[Source]](src/gtk3/GtkLevelBar.md#L239)</span>


    Sets the value of the #GtkLevelBar:mode property.

    {:doh, %{argctype: "GtkLevelBarMode", argname: "mode", argtype: "LevelBarMode", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_mode()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_value
<span class="source-link">[[Source]](src/gtk3/GtkLevelBar.md#L247)</span>


    Sets the value of the #GtkLevelBar:value property.

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

