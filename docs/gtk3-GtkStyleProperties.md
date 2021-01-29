# GtkStyleProperties
<span class="source-link">[[Source]](src/gtk3/GtkStyleProperties.md#L6)</span>

GtkStyleProperties provides the storage for style information
that is used by #GtkStyleContext and other #GtkStyleProvider
implementations.

Before style properties can be stored in GtkStyleProperties, they
must be registered with gtk_style_properties_register_property().

Unless you are writing a #GtkStyleProvider implementation, you
are unlikely to use this API directly, as gtk_style_context_get()
and its variants are the preferred way to access styling information
from widget implementations and theming engine implementations
should use the APIs provided by #GtkThemingEngine instead.

#GtkStyleProperties has been deprecated in GTK 3.16. The CSS
machinery does not use it anymore and all users of this object
have been deprecated.


```pony
class val GtkStyleProperties is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkStyleProperties.md#L29)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkStyleProperties val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkStyleProperties](gtk3-GtkStyleProperties.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkStyleProperties.md#L32)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkStyleProperties val^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkStyleProperties](gtk3-GtkStyleProperties.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkStyleProperties.md#L35)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkStyleProperties val^
```

#### Returns

* [GtkStyleProperties](gtk3-GtkStyleProperties.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkStyleProperties.md#L39)</span>


```pony
new val create()
: GtkStyleProperties val^
```

#### Returns

* [GtkStyleProperties](gtk3-GtkStyleProperties.md) val^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkStyleProperties.md#L25)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkStyleProperties.md#L27)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### clear
<span class="source-link">[[Source]](src/gtk3/GtkStyleProperties.md#L43)</span>


Clears all style information from @props.


```pony
fun box clear()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get
<span class="source-link">[[Source]](src/gtk3/GtkStyleProperties.md#L49)</span>


    Retrieves several style property values from @props for a
given state.

    {:doh, %{argctype: "GtkStateFlags", argname: "state", argtype: "StateFlags", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "", argname: "...", argtype: "", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_property
<span class="source-link">[[Source]](src/gtk3/GtkStyleProperties.md#L59)</span>


    Gets a style property from @props for the given state. When done with @value,
g_value_unset() needs to be called to free any allocated memory.

    {:doh, %{argctype: "const gchar*", argname: "property", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkStateFlags", argname: "state", argtype: "StateFlags", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GValue*", argname: "value", argtype: "GObject.Value", paramtype: :param, txo: "full"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_property()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_valist
<span class="source-link">[[Source]](src/gtk3/GtkStyleProperties.md#L70)</span>


    Retrieves several style property values from @props for a given state.

    {:doh, %{argctype: "GtkStateFlags", argname: "state", argtype: "StateFlags", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "va_list", argname: "args", argtype: "va_list", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_valist()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_lookup_color
<span class="source-link">[[Source]](src/gtk3/GtkStyleProperties.md#L79)</span>


    Returns the symbolic color that is mapped
to @name.

    {:argctype, "GtkSymbolicColor*"}
{:argname, "rv"}
{:argtype, "SymbolicColor"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_lookup_color()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_map_color
<span class="source-link">[[Source]](src/gtk3/GtkStyleProperties.md#L92)</span>


    Maps @color so it can be referenced by @name. See
gtk_style_properties_lookup_color()

    {:doh, %{argctype: "const gchar*", argname: "name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkSymbolicColor*", argname: "color", argtype: "SymbolicColor", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_map_color()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_merge
<span class="source-link">[[Source]](src/gtk3/GtkStyleProperties.md#L102)</span>


    Merges into @props all the style information contained
in @props_to_merge. If @replace is %TRUE, the values
will be overwritten, if it is %FALSE, the older values
will prevail.

    {:doh, %{argctype: "const GtkStyleProperties*", argname: "props_to_merge", argtype: "StyleProperties", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_merge()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set
<span class="source-link">[[Source]](src/gtk3/GtkStyleProperties.md#L113)</span>


    Sets several style properties on @props.

    {:doh, %{argctype: "GtkStateFlags", argname: "state", argtype: "StateFlags", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "", argname: "...", argtype: "", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_property
<span class="source-link">[[Source]](src/gtk3/GtkStyleProperties.md#L122)</span>


    Sets a styling property in @props.

    {:doh, %{argctype: "const gchar*", argname: "property", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkStateFlags", argname: "state", argtype: "StateFlags", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const GValue*", argname: "value", argtype: "GObject.Value", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_property()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_valist
<span class="source-link">[[Source]](src/gtk3/GtkStyleProperties.md#L132)</span>


    Sets several style properties on @props.

    {:doh, %{argctype: "GtkStateFlags", argname: "state", argtype: "StateFlags", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "va_list", argname: "args", argtype: "va_list", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_valist()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_unset_property
<span class="source-link">[[Source]](src/gtk3/GtkStyleProperties.md#L141)</span>


    Unsets a style property in @props.

    {:doh, %{argctype: "const gchar*", argname: "property", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkStateFlags", argname: "state", argtype: "StateFlags", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_unset_property()
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

