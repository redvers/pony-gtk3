# GtkMisc
<span class="source-link">[[Source]](src/gtk3/GtkMisc.md#L6)</span>

The #GtkMisc widget is an abstract widget which is not useful itself, but
is used to derive subclasses which have alignment and padding attributes.

The horizontal and vertical padding attributes allows extra space to be
added around the widget.

The horizontal and vertical alignment attributes enable the widget to be
positioned within its allocated area. Note that if the widget is added to
a container in such a way that it expands automatically to fill its
allocated area, the alignment settings will not alter the widget's position.

Note that the desired effect can in most cases be achieved by using the
#GtkWidget:halign, #GtkWidget:valign and #GtkWidget:margin properties
on the child widget, so GtkMisc should not be used in new code. To reflect
this fact, all #GtkMisc API has been deprecated.


```pony
class val GtkMisc is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkMisc.md#L28)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkMisc val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkMisc](gtk3-GtkMisc.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkMisc.md#L31)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkMisc val^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkMisc](gtk3-GtkMisc.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkMisc.md#L34)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkMisc val^
```

#### Returns

* [GtkMisc](gtk3-GtkMisc.md) val^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkMisc.md#L24)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkMisc.md#L26)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_alignment
<span class="source-link">[[Source]](src/gtk3/GtkMisc.md#L40)</span>


    Gets the X and Y alignment of the widget within its allocation.
See gtk_misc_set_alignment().

    {:doh, %{argctype: "gfloat*", argname: "xalign", argtype: "gfloat", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gfloat*", argname: "yalign", argtype: "gfloat", paramtype: :param, txo: "full"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_alignment()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_padding
<span class="source-link">[[Source]](src/gtk3/GtkMisc.md#L50)</span>


    Gets the padding in the X and Y directions of the widget.
See gtk_misc_set_padding().

    {:doh, %{argctype: "gint*", argname: "xpad", argtype: "gint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gint*", argname: "ypad", argtype: "gint", paramtype: :param, txo: "full"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_padding()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_alignment
<span class="source-link">[[Source]](src/gtk3/GtkMisc.md#L60)</span>


    Sets the alignment of the widget.

    {:doh, %{argctype: "gfloat", argname: "xalign", argtype: "gfloat", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gfloat", argname: "yalign", argtype: "gfloat", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_alignment()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### set_padding
<span class="source-link">[[Source]](src/gtk3/GtkMisc.md#L69)</span>


Sets the amount of space to add around the widget.


```pony
fun box set_padding(
  xpad_pony: I32 val,
  ypad_pony: I32 val)
: None val
```
#### Parameters

*   xpad_pony: [I32](builtin-I32.md) val
*   ypad_pony: [I32](builtin-I32.md) val

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

