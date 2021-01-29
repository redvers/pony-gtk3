# GtkFontSelectionDialog
<span class="source-link">[[Source]](src/gtk3/GtkFontSelectionDialog.md#L6)</span>

No documentation provided


```pony
class val GtkFontSelectionDialog is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkFontSelectionDialog.md#L14)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkFontSelectionDialog val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkFontSelectionDialog](gtk3-GtkFontSelectionDialog.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkFontSelectionDialog.md#L17)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkFontSelectionDialog val^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkFontSelectionDialog](gtk3-GtkFontSelectionDialog.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkFontSelectionDialog.md#L20)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkFontSelectionDialog val^
```

#### Returns

* [GtkFontSelectionDialog](gtk3-GtkFontSelectionDialog.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkFontSelectionDialog.md#L24)</span>


```pony
new val create(
  title_pony: String val)
: GtkFontSelectionDialog val^
```
#### Parameters

*   title_pony: [String](builtin-String.md) val

#### Returns

* [GtkFontSelectionDialog](gtk3-GtkFontSelectionDialog.md) val^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkFontSelectionDialog.md#L10)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkFontSelectionDialog.md#L12)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_font_name
<span class="source-link">[[Source]](src/gtk3/GtkFontSelectionDialog.md#L34)</span>


    Gets the currently-selected font name.

Note that this can be a different string than what you set with
gtk_font_selection_dialog_set_font_name(), as the font selection widget
may normalize font names and thus return a string with a different
structure. For example, “Helvetica Italic Bold 12” could be normalized
to “Helvetica Bold Italic 12”.  Use pango_font_description_equal()
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
<span class="source-link">[[Source]](src/gtk3/GtkFontSelectionDialog.md#L65)</span>


Gets the text displayed in the preview area.


```pony
fun box get_preview_text()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_font_name
<span class="source-link">[[Source]](src/gtk3/GtkFontSelectionDialog.md#L73)</span>


    Sets the currently selected font.

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
<span class="source-link">[[Source]](src/gtk3/GtkFontSelectionDialog.md#L81)</span>


    Sets the text displayed in the preview area.

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

