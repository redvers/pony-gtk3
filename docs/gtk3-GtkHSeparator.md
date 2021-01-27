# GtkHSeparator
<span class="source-link">[[Source]](src/gtk3/GtkHSeparator.md#L6)</span>

The #GtkHSeparator widget is a horizontal separator, used to group the
widgets within a window. It displays a horizontal line with a shadow to
make it appear sunken into the interface.

> The #GtkHSeparator widget is not used as a separator within menus.
> To create a separator in a menu create an empty #GtkSeparatorMenuItem
> widget using gtk_separator_menu_item_new() and add it to the menu with
> gtk_menu_shell_append().

GtkHSeparator has been deprecated, use #GtkSeparator instead.


```pony
class ref GtkHSeparator is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkHSeparator.md#L22)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkHSeparator ref^
```

#### Returns

* [GtkHSeparator](gtk3-GtkHSeparator.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkHSeparator.md#L25)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkHSeparator ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkHSeparator](gtk3-GtkHSeparator.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkHSeparator.md#L29)</span>


```pony
new ref create()
: GtkHSeparator ref^
```

#### Returns

* [GtkHSeparator](gtk3-GtkHSeparator.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkHSeparator.md#L19)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkHSeparator.md#L21)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

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

