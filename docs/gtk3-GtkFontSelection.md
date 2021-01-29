# GtkFontSelection
<span class="source-link">[[Source]](src/gtk3/GtkFontSelection.md#L6)</span>

No documentation provided


```pony
class val GtkFontSelection is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkFontSelection.md#L14)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkFontSelection val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkFontSelection](gtk3-GtkFontSelection.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkFontSelection.md#L17)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkFontSelection val^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkFontSelection](gtk3-GtkFontSelection.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkFontSelection.md#L20)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkFontSelection val^
```

#### Returns

* [GtkFontSelection](gtk3-GtkFontSelection.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkFontSelection.md#L24)</span>


```pony
new val create()
: GtkFontSelection val^
```

#### Returns

* [GtkFontSelection](gtk3-GtkFontSelection.md) val^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkFontSelection.md#L10)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkFontSelection.md#L12)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_face
<span class="source-link">[[Source]](src/gtk3/GtkFontSelection.md#L28)</span>


    Gets the #PangoFontFace representing the selected font group
details (i.e. family, slant, weight, width, etc).

    {:argctype, "PangoFontFace*"}
{:argname, "rv"}
{:argtype, "Pango.FontFace"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_face()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_family
<span class="source-link">[[Source]](src/gtk3/GtkFontSelection.md#L48)</span>


    Gets the #PangoFontFamily representing the selected font family.

    {:argctype, "PangoFontFamily*"}
{:argname, "rv"}
{:argtype, "Pango.FontFamily"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_family()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_font_name
<span class="source-link">[[Source]](src/gtk3/GtkFontSelection.md#L67)</span>


    Gets the currently-selected font name.

Note that this can be a different string than what you set with
gtk_font_selection_set_font_name(), as the font selection widget may
normalize font names and thus return a string with a different structure.
For example, “Helvetica Italic Bold 12” could be normalized to
“Helvetica Bold Italic 12”. Use pango_font_description_equal()
if you want to compare two font descriptions.

    {:argctype, "gchar*"}
{:argname, "rv"}
{:argtype, "utf8"}
{:paramtype, :param}
{:txo, "full"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_font_name()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### get_preview_text
<span class="source-link">[[Source]](src/gtk3/GtkFontSelection.md#L92)</span>


Gets the text displayed in the preview area.


```pony
fun box get_preview_text()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_size
<span class="source-link">[[Source]](src/gtk3/GtkFontSelection.md#L100)</span>


The selected font size.


```pony
fun box get_size()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_font_name
<span class="source-link">[[Source]](src/gtk3/GtkFontSelection.md#L119)</span>


    Sets the currently-selected font.

Note that the @fontsel needs to know the screen in which it will appear
for this to work; this can be guaranteed by simply making sure that the
@fontsel is inserted in a toplevel window before you call this function.

    {:doh, %{argctype: "const gchar*", argname: "fontname", argtype: "utf8", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_font_name()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_preview_text
<span class="source-link">[[Source]](src/gtk3/GtkFontSelection.md#L131)</span>


    Sets the text displayed in the preview area.
The @text is used to show how the selected font looks.

    {:doh, %{argctype: "const gchar*", argname: "text", argtype: "utf8", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_preview_text()
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

