# GtkProgressBar
<span class="source-link">[[Source]](src/gtk3/GtkProgressBar.md#L6)</span>
```pony
class ref GtkProgressBar is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkProgressBar.md#L10)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkProgressBar ref^
```

#### Returns

* [GtkProgressBar](gtk3-GtkProgressBar.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkProgressBar.md#L13)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkProgressBar ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkProgressBar](gtk3-GtkProgressBar.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkProgressBar.md#L17)</span>


```pony
new ref create()
: GtkProgressBar ref^
```

#### Returns

* [GtkProgressBar](gtk3-GtkProgressBar.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkProgressBar.md#L7)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkProgressBar.md#L9)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### get_inverted
<span class="source-link">[[Source]](src/gtk3/GtkProgressBar.md#L35)</span>


Gets the value set by gtk_progress_bar_set_inverted().


```pony
fun box get_inverted()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_show_text
<span class="source-link">[[Source]](src/gtk3/GtkProgressBar.md#L48)</span>


Gets the value of the #GtkProgressBar:show-text property.
See gtk_progress_bar_set_show_text().


```pony
fun box get_show_text()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_text
<span class="source-link">[[Source]](src/gtk3/GtkProgressBar.md#L55)</span>


Retrieves the text that is displayed with the progress bar,
if any, otherwise %NULL. The return value is a reference
to the text, not a copy of it, so will become invalid
if you change the text in the progress bar.


```pony
fun box get_text()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### pulse
<span class="source-link">[[Source]](src/gtk3/GtkProgressBar.md#L66)</span>


Indicates that some progress has been made, but you don’t know how much.
Causes the progress bar to enter “activity mode,” where a block
bounces back and forth. Each call to gtk_progress_bar_pulse()
causes the block to move by a little bit (the amount of movement
per pulse is determined by gtk_progress_bar_set_pulse_step()).


```pony
fun box pulse()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### set_inverted
<span class="source-link">[[Source]](src/gtk3/GtkProgressBar.md#L84)</span>


Progress bars normally grow from top to bottom or left to right.
Inverted progress bars grow in the opposite direction.


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

### set_show_text
<span class="source-link">[[Source]](src/gtk3/GtkProgressBar.md#L95)</span>


Sets whether the progress bar will show text next to the bar.
The shown text is either the value of the #GtkProgressBar:text
property or, if that is %NULL, the #GtkProgressBar:fraction value,
as a percentage.

To make a progress bar that is styled and sized suitably for containing
text (even if the actual text is blank), set #GtkProgressBar:show-text to
%TRUE and #GtkProgressBar:text to the empty string (not %NULL).


```pony
fun box set_show_text(
  show_text_pony: Bool val)
: None val
```
#### Parameters

*   show_text_pony: [Bool](builtin-Bool.md) val

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

