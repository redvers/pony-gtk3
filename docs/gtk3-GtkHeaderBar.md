# GtkHeaderBar
<span class="source-link">[[Source]](src/gtk3/GtkHeaderBar.md#L6)</span>
```pony
class ref GtkHeaderBar is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkHeaderBar.md#L10)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkHeaderBar ref^
```

#### Returns

* [GtkHeaderBar](gtk3-GtkHeaderBar.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkHeaderBar.md#L13)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkHeaderBar ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkHeaderBar](gtk3-GtkHeaderBar.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkHeaderBar.md#L17)</span>


```pony
new ref create()
: GtkHeaderBar ref^
```

#### Returns

* [GtkHeaderBar](gtk3-GtkHeaderBar.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkHeaderBar.md#L7)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkHeaderBar.md#L9)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### get_decoration_layout
<span class="source-link">[[Source]](src/gtk3/GtkHeaderBar.md#L28)</span>


Gets the decoration layout set with
gtk_header_bar_set_decoration_layout().


```pony
fun box get_decoration_layout()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_has_subtitle
<span class="source-link">[[Source]](src/gtk3/GtkHeaderBar.md#L37)</span>


Retrieves whether the header bar reserves space for
a subtitle, regardless if one is currently set or not.


```pony
fun box get_has_subtitle()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_show_close_button
<span class="source-link">[[Source]](src/gtk3/GtkHeaderBar.md#L44)</span>


Returns whether this header bar shows the standard window
decorations.


```pony
fun box get_show_close_button()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_subtitle
<span class="source-link">[[Source]](src/gtk3/GtkHeaderBar.md#L51)</span>


Retrieves the subtitle of the header. See gtk_header_bar_set_subtitle().


```pony
fun box get_subtitle()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_title
<span class="source-link">[[Source]](src/gtk3/GtkHeaderBar.md#L59)</span>


Retrieves the title of the header. See gtk_header_bar_set_title().


```pony
fun box get_title()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### set_has_subtitle
<span class="source-link">[[Source]](src/gtk3/GtkHeaderBar.md#L83)</span>


Sets whether the header bar should reserve space
for a subtitle, even if none is currently set.


```pony
fun box set_has_subtitle(
  setting_pony: Bool val)
: None val
```
#### Parameters

*   setting_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_show_close_button
<span class="source-link">[[Source]](src/gtk3/GtkHeaderBar.md#L90)</span>


Sets whether this header bar shows the standard window decorations,
including close, maximize, and minimize.


```pony
fun box set_show_close_button(
  setting_pony: Bool val)
: None val
```
#### Parameters

*   setting_pony: [Bool](builtin-Bool.md) val

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

