# GtkNotebook
<span class="source-link">[[Source]](src/gtk3/GtkNotebook.md#L6)</span>
```pony
class ref GtkNotebook is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkNotebook.md#L10)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkNotebook ref^
```

#### Returns

* [GtkNotebook](gtk3-GtkNotebook.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkNotebook.md#L13)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkNotebook ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkNotebook](gtk3-GtkNotebook.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkNotebook.md#L17)</span>


```pony
new ref create()
: GtkNotebook ref^
```

#### Returns

* [GtkNotebook](gtk3-GtkNotebook.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkNotebook.md#L7)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkNotebook.md#L9)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### get_current_page
<span class="source-link">[[Source]](src/gtk3/GtkNotebook.md#L43)</span>


Returns the page number of the current page.


```pony
fun box get_current_page()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### get_group_name
<span class="source-link">[[Source]](src/gtk3/GtkNotebook.md#L49)</span>


Gets the current group name for @notebook.


```pony
fun box get_group_name()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_n_pages
<span class="source-link">[[Source]](src/gtk3/GtkNotebook.md#L68)</span>


Gets the number of pages in a notebook.


```pony
fun box get_n_pages()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### get_scrollable
<span class="source-link">[[Source]](src/gtk3/GtkNotebook.md#L81)</span>


Returns whether the tab label area has arrows for scrolling.
See gtk_notebook_set_scrollable().


```pony
fun box get_scrollable()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_show_border
<span class="source-link">[[Source]](src/gtk3/GtkNotebook.md#L88)</span>


Returns whether a bevel will be drawn around the notebook pages.
See gtk_notebook_set_show_border().


```pony
fun box get_show_border()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_show_tabs
<span class="source-link">[[Source]](src/gtk3/GtkNotebook.md#L95)</span>


Returns whether the tabs of the notebook are shown.
See gtk_notebook_set_show_tabs().


```pony
fun box get_show_tabs()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### next_page
<span class="source-link">[[Source]](src/gtk3/GtkNotebook.md#L153)</span>


Switches to the next page. Nothing happens if the current page is
the last page.


```pony
fun box next_page()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### popup_disable
<span class="source-link">[[Source]](src/gtk3/GtkNotebook.md#L164)</span>


Disables the popup menu.


```pony
fun box popup_disable()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### popup_enable
<span class="source-link">[[Source]](src/gtk3/GtkNotebook.md#L170)</span>


Enables the popup menu: if the user clicks with the right
mouse button on the tab labels, a menu with all the pages
will be popped up.


```pony
fun box popup_enable()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### prev_page
<span class="source-link">[[Source]](src/gtk3/GtkNotebook.md#L189)</span>


Switches to the previous page. Nothing happens if the current page
is the first page.


```pony
fun box prev_page()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### remove_page
<span class="source-link">[[Source]](src/gtk3/GtkNotebook.md#L196)</span>


Removes a page from the notebook given its index
in the notebook.


```pony
fun box remove_page(
  page_num_pony: I32 val)
: None val
```
#### Parameters

*   page_num_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_current_page
<span class="source-link">[[Source]](src/gtk3/GtkNotebook.md#L212)</span>


Switches to the page number @page_num.

Note that due to historical reasons, GtkNotebook refuses
to switch to a page unless the child widget is visible.
Therefore, it is recommended to show child widgets before
adding them to a notebook.


```pony
fun box set_current_page(
  page_num_pony: I32 val)
: None val
```
#### Parameters

*   page_num_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_scrollable
<span class="source-link">[[Source]](src/gtk3/GtkNotebook.md#L237)</span>


Sets whether the tab label area will have arrows for
scrolling if there are too many tabs to fit in the area.


```pony
fun box set_scrollable(
  scrollable_pony: Bool val)
: None val
```
#### Parameters

*   scrollable_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_show_border
<span class="source-link">[[Source]](src/gtk3/GtkNotebook.md#L244)</span>


Sets whether a bevel will be drawn around the notebook pages.
This only has a visual effect when the tabs are not shown.
See gtk_notebook_set_show_tabs().


```pony
fun box set_show_border(
  show_border_pony: Bool val)
: None val
```
#### Parameters

*   show_border_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_show_tabs
<span class="source-link">[[Source]](src/gtk3/GtkNotebook.md#L252)</span>


Sets whether to show the tabs for the notebook or not.


```pony
fun box set_show_tabs(
  show_tabs_pony: Bool val)
: None val
```
#### Parameters

*   show_tabs_pony: [Bool](builtin-Bool.md) val

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

