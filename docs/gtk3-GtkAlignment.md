# GtkAlignment
<span class="source-link">[[Source]](src/gtk3/GtkAlignment.md#L6)</span>

The #GtkAlignment widget controls the alignment and size of its child widget.
It has four settings: xscale, yscale, xalign, and yalign.

The scale settings are used to specify how much the child widget should
expand to fill the space allocated to the #GtkAlignment.
The values can range from 0 (meaning the child doesn’t expand at all) to
1 (meaning the child expands to fill all of the available space).

The align settings are used to place the child widget within the available
area. The values range from 0 (top or left) to 1 (bottom or right).
Of course, if the scale settings are both set to 1, the alignment settings
have no effect.

GtkAlignment has been deprecated in 3.14 and should not be used in
newly-written code. The desired effect can be achieved by using the
#GtkWidget:halign, #GtkWidget:valign and #GtkWidget:margin properties on the
child widget.


```pony
class ref GtkAlignment is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkAlignment.md#L29)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkAlignment ref^
```

#### Returns

* [GtkAlignment](gtk3-GtkAlignment.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkAlignment.md#L32)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkAlignment ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkAlignment](gtk3-GtkAlignment.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkAlignment.md#L36)</span>


```pony
new ref create(
  xalign_pony: F32 val,
  yalign_pony: F32 val,
  xscale_pony: F32 val,
  yscale_pony: F32 val)
: GtkAlignment ref^
```
#### Parameters

*   xalign_pony: [F32](builtin-F32.md) val
*   yalign_pony: [F32](builtin-F32.md) val
*   xscale_pony: [F32](builtin-F32.md) val
*   yscale_pony: [F32](builtin-F32.md) val

#### Returns

* [GtkAlignment](gtk3-GtkAlignment.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkAlignment.md#L26)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkAlignment.md#L28)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### set_padding
<span class="source-link">[[Source]](src/gtk3/GtkAlignment.md#L54)</span>


Sets the padding on the different sides of the widget.
The padding adds blank space to the sides of the widget. For instance,
this can be used to indent the child widget towards the right by adding
padding on the left.


```pony
fun box set_padding(
  padding_top_pony: U32 val,
  padding_bottom_pony: U32 val,
  padding_left_pony: U32 val,
  padding_right_pony: U32 val)
: None val
```
#### Parameters

*   padding_top_pony: [U32](builtin-U32.md) val
*   padding_bottom_pony: [U32](builtin-U32.md) val
*   padding_left_pony: [U32](builtin-U32.md) val
*   padding_right_pony: [U32](builtin-U32.md) val

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

