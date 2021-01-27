# GtkExpander
<span class="source-link">[[Source]](src/gtk3/GtkExpander.md#L6)</span>
```pony
class ref GtkExpander is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkExpander.md#L10)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkExpander ref^
```

#### Returns

* [GtkExpander](gtk3-GtkExpander.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkExpander.md#L13)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkExpander ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkExpander](gtk3-GtkExpander.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkExpander.md#L17)</span>


```pony
new ref create(
  label_pony: String val)
: GtkExpander ref^
```
#### Parameters

*   label_pony: [String](builtin-String.md) val

#### Returns

* [GtkExpander](gtk3-GtkExpander.md) ref^

---

### new_with_mnemonic
<span class="source-link">[[Source]](src/gtk3/GtkExpander.md#L20)</span>


```pony
new ref new_with_mnemonic(
  label_pony: String val)
: GtkExpander ref^
```
#### Parameters

*   label_pony: [String](builtin-String.md) val

#### Returns

* [GtkExpander](gtk3-GtkExpander.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkExpander.md#L7)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkExpander.md#L9)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### get_expanded
<span class="source-link">[[Source]](src/gtk3/GtkExpander.md#L24)</span>


Queries a #GtkExpander and returns its current state. Returns %TRUE
if the child widget is revealed.

See gtk_expander_set_expanded().


```pony
fun box get_expanded()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_label
<span class="source-link">[[Source]](src/gtk3/GtkExpander.md#L33)</span>


Fetches the text from a label widget including any embedded
underlines indicating mnemonics and Pango markup, as set by
gtk_expander_set_label(). If the label text has not been set the
return value will be %NULL. This will be the case if you create an
empty button with gtk_button_new() to use as a container.

Note that this function behaved differently in versions prior to
2.14 and used to return the label text stripped of embedded
underlines indicating mnemonics and Pango markup. This problem can
be avoided by fetching the label text directly from the label
widget.


```pony
fun box get_label()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_label_fill
<span class="source-link">[[Source]](src/gtk3/GtkExpander.md#L51)</span>


Returns whether the label widget will fill all available
horizontal space allocated to @expander.


```pony
fun box get_label_fill()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_resize_toplevel
<span class="source-link">[[Source]](src/gtk3/GtkExpander.md#L65)</span>


Returns whether the expander will resize the toplevel widget
containing the expander upon resizing and collpasing.


```pony
fun box get_resize_toplevel()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_spacing
<span class="source-link">[[Source]](src/gtk3/GtkExpander.md#L72)</span>


Gets the value set by gtk_expander_set_spacing().


```pony
fun box get_spacing()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### get_use_markup
<span class="source-link">[[Source]](src/gtk3/GtkExpander.md#L78)</span>


Returns whether the label’s text is interpreted as marked up with
the [Pango text markup language][PangoMarkupFormat].
See gtk_expander_set_use_markup().


```pony
fun box get_use_markup()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_use_underline
<span class="source-link">[[Source]](src/gtk3/GtkExpander.md#L86)</span>


Returns whether an embedded underline in the expander label
indicates a mnemonic. See gtk_expander_set_use_underline().


```pony
fun box get_use_underline()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### set_expanded
<span class="source-link">[[Source]](src/gtk3/GtkExpander.md#L93)</span>


Sets the state of the expander. Set to %TRUE, if you want
the child widget to be revealed, and %FALSE if you want the
child widget to be hidden.


```pony
fun box set_expanded(
  expanded_pony: Bool val)
: None val
```
#### Parameters

*   expanded_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_label_fill
<span class="source-link">[[Source]](src/gtk3/GtkExpander.md#L105)</span>


Sets whether the label widget should fill all available
horizontal space allocated to @expander.

Note that this function has no effect since 3.20.


```pony
fun box set_label_fill(
  label_fill_pony: Bool val)
: None val
```
#### Parameters

*   label_fill_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_resize_toplevel
<span class="source-link">[[Source]](src/gtk3/GtkExpander.md#L118)</span>


Sets whether the expander will resize the toplevel widget
containing the expander upon resizing and collpasing.


```pony
fun box set_resize_toplevel(
  resize_toplevel_pony: Bool val)
: None val
```
#### Parameters

*   resize_toplevel_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_spacing
<span class="source-link">[[Source]](src/gtk3/GtkExpander.md#L125)</span>


Sets the spacing field of @expander, which is the number of
pixels to place between expander and the child.


```pony
fun box set_spacing(
  spacing_pony: I32 val)
: None val
```
#### Parameters

*   spacing_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_use_markup
<span class="source-link">[[Source]](src/gtk3/GtkExpander.md#L132)</span>


Sets whether the text of the label contains markup in
[Pango’s text markup language][PangoMarkupFormat].
See gtk_label_set_markup().


```pony
fun box set_use_markup(
  use_markup_pony: Bool val)
: None val
```
#### Parameters

*   use_markup_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_use_underline
<span class="source-link">[[Source]](src/gtk3/GtkExpander.md#L140)</span>


If true, an underline in the text of the expander label indicates
the next character should be used for the mnemonic accelerator key.


```pony
fun box set_use_underline(
  use_underline_pony: Bool val)
: None val
```
#### Parameters

*   use_underline_pony: [Bool](builtin-Bool.md) val

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

