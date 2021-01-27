# GtkMenuButton
<span class="source-link">[[Source]](src/gtk3/GtkMenuButton.md#L6)</span>

The #GtkMenuButton widget is used to display a popup when clicked on.
This popup can be provided either as a #GtkMenu, a #GtkPopover or an
abstract #GMenuModel.

The #GtkMenuButton widget can hold any valid child widget. That is, it
can hold almost any other standard #GtkWidget. The most commonly used
child is #GtkImage. If no widget is explicitely added to the #GtkMenuButton,
a #GtkImage is automatically created, using an arrow image oriented
according to #GtkMenuButton:direction or the generic “open-menu-symbolic”
icon if the direction is not set.

The positioning of the popup is determined by the #GtkMenuButton:direction
property of the menu button.

For menus, the #GtkWidget:halign and #GtkWidget:valign properties of the
menu are also taken into account. For example, when the direction is
%GTK_ARROW_DOWN and the horizontal alignment is %GTK_ALIGN_START, the
menu will be positioned below the button, with the starting edge
(depending on the text direction) of the menu aligned with the starting
edge of the button. If there is not enough space below the button, the
menu is popped up above the button instead. If the alignment would move
part of the menu offscreen, it is “pushed in”.

## Direction = Down

- halign = start

    ![](down-start.png)

- halign = center

    ![](down-center.png)

- halign = end

    ![](down-end.png)

## Direction = Up

- halign = start

    ![](up-start.png)

- halign = center

    ![](up-center.png)

- halign = end

    ![](up-end.png)

## Direction = Left

- valign = start

    ![](left-start.png)

- valign = center

    ![](left-center.png)

- valign = end

    ![](left-end.png)

## Direction = Right

- valign = start

    ![](right-start.png)

- valign = center

    ![](right-center.png)

- valign = end

    ![](right-end.png)

# CSS nodes

GtkMenuButton has a single CSS node with name button. To differentiate
it from a plain #GtkButton, it gets the .popup style class.


```pony
class ref GtkMenuButton is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkMenuButton.md#L95)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkMenuButton ref^
```

#### Returns

* [GtkMenuButton](gtk3-GtkMenuButton.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkMenuButton.md#L98)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkMenuButton ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkMenuButton](gtk3-GtkMenuButton.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkMenuButton.md#L102)</span>


```pony
new ref create()
: GtkMenuButton ref^
```

#### Returns

* [GtkMenuButton](gtk3-GtkMenuButton.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkMenuButton.md#L92)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkMenuButton.md#L94)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### get_use_popover
<span class="source-link">[[Source]](src/gtk3/GtkMenuButton.md#L141)</span>


Returns whether a #GtkPopover or a #GtkMenu will be constructed
from the menu model.


```pony
fun box get_use_popover()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### set_use_popover
<span class="source-link">[[Source]](src/gtk3/GtkMenuButton.md#L168)</span>


Sets whether to construct a #GtkPopover instead of #GtkMenu
when gtk_menu_button_set_menu_model() is called. Note that
this property is only consulted when a new menu model is set.


```pony
fun box set_use_popover(
  use_popover_pony: Bool val)
: None val
```
#### Parameters

*   use_popover_pony: [Bool](builtin-Bool.md) val

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

