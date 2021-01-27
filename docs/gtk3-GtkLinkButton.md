# GtkLinkButton
<span class="source-link">[[Source]](src/gtk3/GtkLinkButton.md#L6)</span>
```pony
class ref GtkLinkButton is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkLinkButton.md#L10)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkLinkButton ref^
```

#### Returns

* [GtkLinkButton](gtk3-GtkLinkButton.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkLinkButton.md#L13)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkLinkButton ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkLinkButton](gtk3-GtkLinkButton.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkLinkButton.md#L17)</span>


```pony
new ref create(
  uri_pony: String val)
: GtkLinkButton ref^
```
#### Parameters

*   uri_pony: [String](builtin-String.md) val

#### Returns

* [GtkLinkButton](gtk3-GtkLinkButton.md) ref^

---

### new_with_label
<span class="source-link">[[Source]](src/gtk3/GtkLinkButton.md#L20)</span>


```pony
new ref new_with_label(
  uri_pony: String val,
  label_pony: String val)
: GtkLinkButton ref^
```
#### Parameters

*   uri_pony: [String](builtin-String.md) val
*   label_pony: [String](builtin-String.md) val

#### Returns

* [GtkLinkButton](gtk3-GtkLinkButton.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkLinkButton.md#L7)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkLinkButton.md#L9)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### get_uri
<span class="source-link">[[Source]](src/gtk3/GtkLinkButton.md#L24)</span>


Retrieves the URI set using gtk_link_button_set_uri().


```pony
fun box get_uri()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_visited
<span class="source-link">[[Source]](src/gtk3/GtkLinkButton.md#L32)</span>


Retrieves the “visited” state of the URI where the #GtkLinkButton
points. The button becomes visited when it is clicked. If the URI
is changed on the button, the “visited” state is unset again.

The state may also be changed using gtk_link_button_set_visited().


```pony
fun box get_visited()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### set_visited
<span class="source-link">[[Source]](src/gtk3/GtkLinkButton.md#L46)</span>


Sets the “visited” state of the URI where the #GtkLinkButton
points.  See gtk_link_button_get_visited() for more details.


```pony
fun box set_visited(
  visited_pony: Bool val)
: None val
```
#### Parameters

*   visited_pony: [Bool](builtin-Bool.md) val

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

