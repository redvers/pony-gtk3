# GtkNumerableIcon
<span class="source-link">[[Source]](src/gtk3/GtkNumerableIcon.md#L6)</span>

GtkNumerableIcon is a subclass of #GEmblemedIcon that can
show a number or short string as an emblem. The number can
be overlayed on top of another emblem, if desired.

It supports theming by taking font and color information
from a provided #GtkStyleContext; see
gtk_numerable_icon_set_style_context().

Typical numerable icons:
![](numerableicon.png)
![](numerableicon2.png)


```pony
class val GtkNumerableIcon is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkNumerableIcon.md#L24)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkNumerableIcon val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkNumerableIcon](gtk3-GtkNumerableIcon.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkNumerableIcon.md#L27)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkNumerableIcon val^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkNumerableIcon](gtk3-GtkNumerableIcon.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkNumerableIcon.md#L30)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkNumerableIcon val^
```

#### Returns

* [GtkNumerableIcon](gtk3-GtkNumerableIcon.md) val^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkNumerableIcon.md#L20)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkNumerableIcon.md#L22)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_background_gicon
<span class="source-link">[[Source]](src/gtk3/GtkNumerableIcon.md#L36)</span>


    Returns the #GIcon that was set as the base background image, or
%NULL if there’s none. The caller of this function does not own
a reference to the returned #GIcon.

    {:argctype, "GIcon*"}
{:argname, "rv"}
{:argtype, "Gio.Icon"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_background_gicon()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### get_background_icon_name
<span class="source-link">[[Source]](src/gtk3/GtkNumerableIcon.md#L50)</span>


Returns the icon name used as the base background image,
or %NULL if there’s none.


```pony
fun box get_background_icon_name()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_count
<span class="source-link">[[Source]](src/gtk3/GtkNumerableIcon.md#L59)</span>


Returns the value currently displayed by @self.


```pony
fun box get_count()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### get_label
<span class="source-link">[[Source]](src/gtk3/GtkNumerableIcon.md#L65)</span>


Returns the currently displayed label of the icon, or %NULL.


```pony
fun box get_label()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_style_context
<span class="source-link">[[Source]](src/gtk3/GtkNumerableIcon.md#L73)</span>


    Returns the #GtkStyleContext used by the icon for theming,
or %NULL if there’s none.

    {:argctype, "GtkStyleContext*"}
{:argname, "rv"}
{:argtype, "StyleContext"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_style_context()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_background_gicon
<span class="source-link">[[Source]](src/gtk3/GtkNumerableIcon.md#L86)</span>


    Updates the icon to use @icon as the base background image.
If @icon is %NULL, @self will go back using style information
or default theming for its background image.

If this method is called and an icon name was already set as
background for the icon, @icon will be used, i.e. the last method
called between gtk_numerable_icon_set_background_gicon() and
gtk_numerable_icon_set_background_icon_name() has always priority.

    {:doh, %{argctype: "GIcon*", argname: "icon", argtype: "Gio.Icon", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_background_gicon()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_background_icon_name
<span class="source-link">[[Source]](src/gtk3/GtkNumerableIcon.md#L101)</span>


    Updates the icon to use the icon named @icon_name from the
current icon theme as the base background image. If @icon_name
is %NULL, @self will go back using style information or default
theming for its background image.

If this method is called and a #GIcon was already set as
background for the icon, @icon_name will be used, i.e. the
last method called between gtk_numerable_icon_set_background_icon_name()
and gtk_numerable_icon_set_background_gicon() has always priority.

    {:doh, %{argctype: "const gchar*", argname: "icon_name", argtype: "utf8", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_background_icon_name()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### set_count
<span class="source-link">[[Source]](src/gtk3/GtkNumerableIcon.md#L117)</span>


Sets the currently displayed value of @self to @count.

The numeric value is always clamped to make it two digits, i.e.
between -99 and 99. Setting a count of zero removes the emblem.
If this method is called, and a label was already set on the icon,
it will automatically be reset to %NULL before rendering the number,
i.e. the last method called between gtk_numerable_icon_set_count()
and gtk_numerable_icon_set_label() has always priority.


```pony
fun box set_count(
  count_pony: I32 val)
: None val
```
#### Parameters

*   count_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_label
<span class="source-link">[[Source]](src/gtk3/GtkNumerableIcon.md#L130)</span>


    Sets the currently displayed value of @self to the string
in @label. Setting an empty label removes the emblem.

Note that this is meant for displaying short labels, such as
roman numbers, or single letters. For roman numbers, consider
using the Unicode characters U+2160 - U+217F. Strings longer
than two characters will likely not be rendered very well.

If this method is called, and a number was already set on the
icon, it will automatically be reset to zero before rendering
the label, i.e. the last method called between
gtk_numerable_icon_set_label() and gtk_numerable_icon_set_count()
has always priority.

    {:doh, %{argctype: "const gchar*", argname: "label", argtype: "utf8", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_label()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_style_context
<span class="source-link">[[Source]](src/gtk3/GtkNumerableIcon.md#L150)</span>


    Updates the icon to fetch theme information from the
given #GtkStyleContext.

    {:doh, %{argctype: "GtkStyleContext*", argname: "style", argtype: "StyleContext", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_style_context()
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

