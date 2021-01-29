# GtkEventController
<span class="source-link">[[Source]](src/gtk3/GtkEventController.md#L6)</span>

#GtkEventController is a base, low-level implementation for event
controllers. Those react to a series of #GdkEvents, and possibly trigger
actions as a consequence of those.


```pony
class val GtkEventController is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkEventController.md#L16)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkEventController val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkEventController](gtk3-GtkEventController.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkEventController.md#L19)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkEventController val^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkEventController](gtk3-GtkEventController.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkEventController.md#L22)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkEventController val^
```

#### Returns

* [GtkEventController](gtk3-GtkEventController.md) val^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkEventController.md#L12)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkEventController.md#L14)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_propagation_phase
<span class="source-link">[[Source]](src/gtk3/GtkEventController.md#L28)</span>


    Gets the propagation phase at which @controller handles events.

    {:argctype, "GtkPropagationPhase"}
{:argname, "rv"}
{:argtype, "PropagationPhase"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_propagation_phase()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_handle_event
<span class="source-link">[[Source]](src/gtk3/GtkEventController.md#L46)</span>


    Feeds an events into @controller, so it can be interpreted
and the controller actions triggered.

    {:doh, %{argctype: "const GdkEvent*", argname: "event", argtype: "Gdk.Event", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_handle_event()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### reset
<span class="source-link">[[Source]](src/gtk3/GtkEventController.md#L55)</span>


Resets the @controller to a clean state. Every interaction
the controller did through #GtkEventController::handle-event
will be dropped at this point.


```pony
fun box reset()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_propagation_phase
<span class="source-link">[[Source]](src/gtk3/GtkEventController.md#L63)</span>


    Sets the propagation phase at which a controller handles events.

If @phase is %GTK_PHASE_NONE, no automatic event handling will be
performed, but other additional gesture maintenance will. In that phase,
the events can be managed by calling gtk_event_controller_handle_event().

    {:doh, %{argctype: "GtkPropagationPhase", argname: "phase", argtype: "PropagationPhase", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_propagation_phase()
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

