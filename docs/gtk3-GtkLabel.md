# GtkLabel
<span class="source-link">[[Source]](src/gtk3/GtkLabel.md#L6)</span>
```pony
class ref GtkLabel is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkLabel.md#L10)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkLabel ref^
```

#### Returns

* [GtkLabel](gtk3-GtkLabel.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkLabel.md#L13)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkLabel ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkLabel](gtk3-GtkLabel.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkLabel.md#L17)</span>


```pony
new ref create(
  str_pony: String val)
: GtkLabel ref^
```
#### Parameters

*   str_pony: [String](builtin-String.md) val

#### Returns

* [GtkLabel](gtk3-GtkLabel.md) ref^

---

### new_with_mnemonic
<span class="source-link">[[Source]](src/gtk3/GtkLabel.md#L20)</span>


```pony
new ref new_with_mnemonic(
  str_pony: String val)
: GtkLabel ref^
```
#### Parameters

*   str_pony: [String](builtin-String.md) val

#### Returns

* [GtkLabel](gtk3-GtkLabel.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkLabel.md#L7)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkLabel.md#L9)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### get_current_uri
<span class="source-link">[[Source]](src/gtk3/GtkLabel.md#L38)</span>


Returns the URI for the currently active link in the label.
The active link is the one under the mouse pointer or, in a
selectable label, the link in which the text cursor is currently
positioned.

This function is intended for use in a #GtkLabel::activate-link handler
or for use in a #GtkWidget::query-tooltip handler.


```pony
fun box get_current_uri()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_label
<span class="source-link">[[Source]](src/gtk3/GtkLabel.md#L66)</span>


Fetches the text from a label widget including any embedded
underlines indicating mnemonics and Pango markup. (See
gtk_label_get_text()).


```pony
fun box get_label()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_line_wrap
<span class="source-link">[[Source]](src/gtk3/GtkLabel.md#L88)</span>


Returns whether lines in the label are automatically wrapped.
See gtk_label_set_line_wrap().


```pony
fun box get_line_wrap()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_lines
<span class="source-link">[[Source]](src/gtk3/GtkLabel.md#L102)</span>


Gets the number of lines to which an ellipsized, wrapping
label should be limited. See gtk_label_set_lines().


```pony
fun box get_lines()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### get_max_width_chars
<span class="source-link">[[Source]](src/gtk3/GtkLabel.md#L109)</span>


Retrieves the desired maximum width of @label, in characters. See
gtk_label_set_width_chars().


```pony
fun box get_max_width_chars()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### get_mnemonic_keyval
<span class="source-link">[[Source]](src/gtk3/GtkLabel.md#L116)</span>


If the label has been set so that it has an mnemonic key this function
returns the keyval used for the mnemonic accelerator. If there is no
mnemonic set up it returns #GDK_KEY_VoidSymbol.


```pony
fun box get_mnemonic_keyval()
: U32 val
```

#### Returns

* [U32](builtin-U32.md) val

---

### get_selectable
<span class="source-link">[[Source]](src/gtk3/GtkLabel.md#L131)</span>


Gets the value set by gtk_label_set_selectable().


```pony
fun box get_selectable()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_single_line_mode
<span class="source-link">[[Source]](src/gtk3/GtkLabel.md#L142)</span>


Returns whether the label is in single line mode.


```pony
fun box get_single_line_mode()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_text
<span class="source-link">[[Source]](src/gtk3/GtkLabel.md#L148)</span>


Fetches the text from a label widget, as displayed on the
screen. This does not include any embedded underlines
indicating mnemonics or Pango markup. (See gtk_label_get_label())


```pony
fun box get_text()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_track_visited_links
<span class="source-link">[[Source]](src/gtk3/GtkLabel.md#L158)</span>


Returns whether the label is currently keeping track
of clicked links.


```pony
fun box get_track_visited_links()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_use_markup
<span class="source-link">[[Source]](src/gtk3/GtkLabel.md#L165)</span>


Returns whether the label’s text is interpreted as marked up with
the [Pango text markup language][PangoMarkupFormat].
See gtk_label_set_use_markup ().


```pony
fun box get_use_markup()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_use_underline
<span class="source-link">[[Source]](src/gtk3/GtkLabel.md#L173)</span>


Returns whether an embedded underline in the label indicates a
mnemonic. See gtk_label_set_use_underline().


```pony
fun box get_use_underline()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_width_chars
<span class="source-link">[[Source]](src/gtk3/GtkLabel.md#L180)</span>


Retrieves the desired width of @label, in characters. See
gtk_label_set_width_chars().


```pony
fun box get_width_chars()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### select_region
<span class="source-link">[[Source]](src/gtk3/GtkLabel.md#L201)</span>


Selects a range of characters in the label, if the label is selectable.
See gtk_label_set_selectable(). If the label is not selectable,
this function has no effect. If @start_offset or
@end_offset are -1, then the end of the label will be substituted.


```pony
fun box select_region(
  start_offset_pony: I32 val,
  end_offset_pony: I32 val)
: None val
```
#### Parameters

*   start_offset_pony: [I32](builtin-I32.md) val
*   end_offset_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_line_wrap
<span class="source-link">[[Source]](src/gtk3/GtkLabel.md#L230)</span>


Toggles line wrapping within the #GtkLabel widget. %TRUE makes it break
lines if text exceeds the widget’s size. %FALSE lets the text get cut off
by the edge of the widget if it exceeds the widget size.

Note that setting line wrapping to %TRUE does not make the label
wrap at its parent container’s width, because GTK+ widgets
conceptually can’t make their requisition depend on the parent
container’s size. For a label that wraps at a specific position,
set the label’s width using gtk_widget_set_size_request().


```pony
fun box set_line_wrap(
  wrap_pony: Bool val)
: None val
```
#### Parameters

*   wrap_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_lines
<span class="source-link">[[Source]](src/gtk3/GtkLabel.md#L248)</span>


Sets the number of lines to which an ellipsized, wrapping label
should be limited. This has no effect if the label is not wrapping
or ellipsized. Set this to -1 if you don’t want to limit the
number of lines.


```pony
fun box set_lines(
  lines_pony: I32 val)
: None val
```
#### Parameters

*   lines_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_max_width_chars
<span class="source-link">[[Source]](src/gtk3/GtkLabel.md#L265)</span>


Sets the desired maximum width in characters of @label to @n_chars.


```pony
fun box set_max_width_chars(
  n_chars_pony: I32 val)
: None val
```
#### Parameters

*   n_chars_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_selectable
<span class="source-link">[[Source]](src/gtk3/GtkLabel.md#L279)</span>


Selectable labels allow the user to select text from the label, for
copy-and-paste.


```pony
fun box set_selectable(
  setting_pony: Bool val)
: None val
```
#### Parameters

*   setting_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_single_line_mode
<span class="source-link">[[Source]](src/gtk3/GtkLabel.md#L286)</span>


Sets whether the label is in single line mode.


```pony
fun box set_single_line_mode(
  single_line_mode_pony: Bool val)
: None val
```
#### Parameters

*   single_line_mode_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_track_visited_links
<span class="source-link">[[Source]](src/gtk3/GtkLabel.md#L300)</span>


Sets whether the label should keep track of clicked
links (and use a different color for them).


```pony
fun box set_track_visited_links(
  track_links_pony: Bool val)
: None val
```
#### Parameters

*   track_links_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_use_markup
<span class="source-link">[[Source]](src/gtk3/GtkLabel.md#L307)</span>


Sets whether the text of the label contains markup in
[Pango’s text markup language][PangoMarkupFormat].
See gtk_label_set_markup().


```pony
fun box set_use_markup(
  setting_pony: Bool val)
: None val
```
#### Parameters

*   setting_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_use_underline
<span class="source-link">[[Source]](src/gtk3/GtkLabel.md#L315)</span>


If true, an underline in the text indicates the next character should be
used for the mnemonic accelerator key.


```pony
fun box set_use_underline(
  setting_pony: Bool val)
: None val
```
#### Parameters

*   setting_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_width_chars
<span class="source-link">[[Source]](src/gtk3/GtkLabel.md#L322)</span>


Sets the desired width in characters of @label to @n_chars.


```pony
fun box set_width_chars(
  n_chars_pony: I32 val)
: None val
```
#### Parameters

*   n_chars_pony: [I32](builtin-I32.md) val

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

