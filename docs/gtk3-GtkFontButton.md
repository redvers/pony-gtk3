# GtkFontButton
<span class="source-link">[[Source]](src/gtk3/GtkFontButton.md#L6)</span>
```pony
class ref GtkFontButton is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkFontButton.md#L10)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkFontButton ref^
```

#### Returns

* [GtkFontButton](gtk3-GtkFontButton.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkFontButton.md#L13)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkFontButton ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkFontButton](gtk3-GtkFontButton.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkFontButton.md#L17)</span>


```pony
new ref create()
: GtkFontButton ref^
```

#### Returns

* [GtkFontButton](gtk3-GtkFontButton.md) ref^

---

### new_with_font
<span class="source-link">[[Source]](src/gtk3/GtkFontButton.md#L20)</span>


```pony
new ref new_with_font(
  fontname_pony: String val)
: GtkFontButton ref^
```
#### Parameters

*   fontname_pony: [String](builtin-String.md) val

#### Returns

* [GtkFontButton](gtk3-GtkFontButton.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkFontButton.md#L7)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkFontButton.md#L9)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### get_font_name
<span class="source-link">[[Source]](src/gtk3/GtkFontButton.md#L24)</span>


Retrieves the name of the currently selected font. This name includes
style and size information as well. If you want to render something
with the font, use this string with pango_font_description_from_string() .
If you’re interested in peeking certain values (family name,
style, size, weight) just query these properties from the
#PangoFontDescription object.


```pony
fun box get_font_name()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_show_size
<span class="source-link">[[Source]](src/gtk3/GtkFontButton.md#L37)</span>


Returns whether the font size will be shown in the label.


```pony
fun box get_show_size()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_show_style
<span class="source-link">[[Source]](src/gtk3/GtkFontButton.md#L43)</span>


Returns whether the name of the font style will be shown in the label.


```pony
fun box get_show_style()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_title
<span class="source-link">[[Source]](src/gtk3/GtkFontButton.md#L49)</span>


Retrieves the title of the font chooser dialog.


```pony
fun box get_title()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_use_font
<span class="source-link">[[Source]](src/gtk3/GtkFontButton.md#L57)</span>


Returns whether the selected font is used in the label.


```pony
fun box get_use_font()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_use_size
<span class="source-link">[[Source]](src/gtk3/GtkFontButton.md#L63)</span>


Returns whether the selected size is used in the label.


```pony
fun box get_use_size()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### set_show_size
<span class="source-link">[[Source]](src/gtk3/GtkFontButton.md#L73)</span>


If @show_size is %TRUE, the font size will be displayed along with the name of the selected font.


```pony
fun box set_show_size(
  show_size_pony: Bool val)
: None val
```
#### Parameters

*   show_size_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_show_style
<span class="source-link">[[Source]](src/gtk3/GtkFontButton.md#L79)</span>


If @show_style is %TRUE, the font style will be displayed along with name of the selected font.


```pony
fun box set_show_style(
  show_style_pony: Bool val)
: None val
```
#### Parameters

*   show_style_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_use_font
<span class="source-link">[[Source]](src/gtk3/GtkFontButton.md#L89)</span>


If @use_font is %TRUE, the font name will be written using the selected font.


```pony
fun box set_use_font(
  use_font_pony: Bool val)
: None val
```
#### Parameters

*   use_font_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_use_size
<span class="source-link">[[Source]](src/gtk3/GtkFontButton.md#L95)</span>


If @use_size is %TRUE, the font name will be written using the selected size.


```pony
fun box set_use_size(
  use_size_pony: Bool val)
: None val
```
#### Parameters

*   use_size_pony: [Bool](builtin-Bool.md) val

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

