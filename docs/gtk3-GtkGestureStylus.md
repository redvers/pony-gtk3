# GtkGestureStylus
<span class="source-link">[[Source]](src/gtk3/GtkGestureStylus.md#L6)</span>

#GtkGestureStylus is a #GtkGesture implementation specific to stylus
input. The provided signals just provide the basic information


```pony
class val GtkGestureStylus is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkGestureStylus.md#L15)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkGestureStylus val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkGestureStylus](gtk3-GtkGestureStylus.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkGestureStylus.md#L18)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkGestureStylus val^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkGestureStylus](gtk3-GtkGestureStylus.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkGestureStylus.md#L21)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkGestureStylus val^
```

#### Returns

* [GtkGestureStylus](gtk3-GtkGestureStylus.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkGestureStylus.md#L25)</span>


```pony
new val create(
  widget_pony: GtkWidget val)
: GtkGestureStylus val^
```
#### Parameters

*   widget_pony: [GtkWidget](gtk3-GtkWidget.md) val

#### Returns

* [GtkGestureStylus](gtk3-GtkGestureStylus.md) val^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkGestureStylus.md#L11)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkGestureStylus.md#L13)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_axes
<span class="source-link">[[Source]](src/gtk3/GtkGestureStylus.md#L29)</span>


    Returns the current values for the requested @axes. This function
must be called from either the #GtkGestureStylus:down,
#GtkGestureStylus:motion, #GtkGestureStylus:up or #GtkGestureStylus:proximity
signals.

    {:doh, %{argctype: "", argname: "axes", argtype: "", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "", argname: "values", argtype: "", paramtype: :param, txo: "full"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_axes()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_axis
<span class="source-link">[[Source]](src/gtk3/GtkGestureStylus.md#L41)</span>


    Returns the current value for the requested @axis. This function
must be called from either the #GtkGestureStylus:down,
#GtkGestureStylus:motion, #GtkGestureStylus:up or #GtkGestureStylus:proximity
signals.

    {:doh, %{argctype: "GdkAxisUse", argname: "axis", argtype: "Gdk.AxisUse", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble*", argname: "value", argtype: "gdouble", paramtype: :param, txo: "full"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_axis()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_device_tool
<span class="source-link">[[Source]](src/gtk3/GtkGestureStylus.md#L53)</span>


    Returns the #GdkDeviceTool currently driving input through this gesture.
This function must be called from either the #GtkGestureStylus::down,
#GtkGestureStylus::motion, #GtkGestureStylus::up or #GtkGestureStylus::proximity
signal handlers.

    {:argctype, "GdkDeviceTool*"}
{:argname, "rv"}
{:argtype, "Gdk.DeviceTool"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_device_tool()
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

