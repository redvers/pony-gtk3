# GtkGesture
<span class="source-link">[[Source]](src/gtk3/GtkGesture.md#L6)</span>
```pony
class ref GtkGesture is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkGesture.md#L10)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkGesture ref^
```

#### Returns

* [GtkGesture](gtk3-GtkGesture.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkGesture.md#L13)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkGesture ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkGesture](gtk3-GtkGesture.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkGesture.md#L7)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkGesture.md#L9)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### is_active
<span class="source-link">[[Source]](src/gtk3/GtkGesture.md#L91)</span>


Returns %TRUE if the gesture is currently active.
A gesture is active meanwhile there are touch sequences
interacting with it.


```pony
fun box is_active()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### is_recognized
<span class="source-link">[[Source]](src/gtk3/GtkGesture.md#L103)</span>


Returns %TRUE if the gesture is currently recognized.
A gesture is recognized if there are as many interacting
touch sequences as required by @gesture, and #GtkGesture::check
returned %TRUE for the sequences being currently interpreted.


```pony
fun box is_recognized()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### ungroup
<span class="source-link">[[Source]](src/gtk3/GtkGesture.md#L125)</span>


Separates @gesture into an isolated group.


```pony
fun box ungroup()
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

