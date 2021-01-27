# GtkToolbar
<span class="source-link">[[Source]](src/gtk3/GtkToolbar.md#L6)</span>
```pony
class ref GtkToolbar is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkToolbar.md#L10)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkToolbar ref^
```

#### Returns

* [GtkToolbar](gtk3-GtkToolbar.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkToolbar.md#L13)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkToolbar ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkToolbar](gtk3-GtkToolbar.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkToolbar.md#L17)</span>


```pony
new ref create()
: GtkToolbar ref^
```

#### Returns

* [GtkToolbar](gtk3-GtkToolbar.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkToolbar.md#L7)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkToolbar.md#L9)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### get_drop_index
<span class="source-link">[[Source]](src/gtk3/GtkToolbar.md#L21)</span>


Returns the position corresponding to the indicated point on
@toolbar. This is useful when dragging items to the toolbar:
this function returns the position a new item should be
inserted.

@x and @y are in @toolbar coordinates.


```pony
fun box get_drop_index(
  x_pony: I32 val,
  y_pony: I32 val)
: I32 val
```
#### Parameters

*   x_pony: [I32](builtin-I32.md) val
*   y_pony: [I32](builtin-I32.md) val

#### Returns

* [I32](builtin-I32.md) val

---

### get_n_items
<span class="source-link">[[Source]](src/gtk3/GtkToolbar.md#L43)</span>


Returns the number of items on the toolbar.


```pony
fun box get_n_items()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### get_show_arrow
<span class="source-link">[[Source]](src/gtk3/GtkToolbar.md#L63)</span>


Returns whether the toolbar has an overflow menu.
See gtk_toolbar_set_show_arrow().


```pony
fun box get_show_arrow()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### set_show_arrow
<span class="source-link">[[Source]](src/gtk3/GtkToolbar.md#L89)</span>


Sets whether to show an overflow menu when @toolbar isn’t allocated enough
size to show all of its items. If %TRUE, items which can’t fit in @toolbar,
and which have a proxy menu item set by gtk_tool_item_set_proxy_menu_item()
or #GtkToolItem::create-menu-proxy, will be available in an overflow menu,
which can be opened by an added arrow button. If %FALSE, @toolbar will
request enough size to fit all of its child items without any overflow.


```pony
fun box set_show_arrow(
  show_arrow_pony: Bool val)
: None val
```
#### Parameters

*   show_arrow_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### unset_icon_size
<span class="source-link">[[Source]](src/gtk3/GtkToolbar.md#L104)</span>


Unsets toolbar icon size set with gtk_toolbar_set_icon_size(), so that
user preferences will be used to determine the icon size.


```pony
fun box unset_icon_size()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### unset_style
<span class="source-link">[[Source]](src/gtk3/GtkToolbar.md#L111)</span>


Unsets a toolbar style set with gtk_toolbar_set_style(), so that
user preferences will be used to determine the toolbar style.


```pony
fun box unset_style()
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

