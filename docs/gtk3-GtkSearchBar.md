# GtkSearchBar
<span class="source-link">[[Source]](src/gtk3/GtkSearchBar.md#L6)</span>

#GtkSearchBar is a container made to have a search entry (possibly
with additional connex widgets, such as drop-down menus, or buttons)
built-in. The search bar would appear when a search is started through
typing on the keyboard, or the application’s search mode is toggled on.

For keyboard presses to start a search, events will need to be
forwarded from the top-level window that contains the search bar.
See gtk_search_bar_handle_event() for example code. Common shortcuts
such as Ctrl+F should be handled as an application action, or through
the menu items.

You will also need to tell the search bar about which entry you
are using as your search entry using gtk_search_bar_connect_entry().
The following example shows you how to create a more complex search
entry.

# CSS nodes

GtkSearchBar has a single CSS node with name searchbar.

## Creating a search bar

[A simple example](https://gitlab.gnome.org/GNOME/gtk/blob/gtk-3-24/examples/search-bar.c)


```pony
class ref GtkSearchBar is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkSearchBar.md#L35)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkSearchBar ref^
```

#### Returns

* [GtkSearchBar](gtk3-GtkSearchBar.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkSearchBar.md#L38)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkSearchBar ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkSearchBar](gtk3-GtkSearchBar.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkSearchBar.md#L42)</span>


```pony
new ref create()
: GtkSearchBar ref^
```

#### Returns

* [GtkSearchBar](gtk3-GtkSearchBar.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkSearchBar.md#L32)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkSearchBar.md#L34)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### get_search_mode
<span class="source-link">[[Source]](src/gtk3/GtkSearchBar.md#L50)</span>


Returns whether the search mode is on or off.


```pony
fun box get_search_mode()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_show_close_button
<span class="source-link">[[Source]](src/gtk3/GtkSearchBar.md#L56)</span>


Returns whether the close button is shown.


```pony
fun box get_show_close_button()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### set_search_mode
<span class="source-link">[[Source]](src/gtk3/GtkSearchBar.md#L66)</span>


Switches the search mode on or off.


```pony
fun box set_search_mode(
  search_mode_pony: Bool val)
: None val
```
#### Parameters

*   search_mode_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_show_close_button
<span class="source-link">[[Source]](src/gtk3/GtkSearchBar.md#L72)</span>


Shows or hides the close button. Applications that
already have a “search” toggle button should not show a close
button in their search bar, as it duplicates the role of the
toggle button.


```pony
fun box set_show_close_button(
  visible_pony: Bool val)
: None val
```
#### Parameters

*   visible_pony: [Bool](builtin-Bool.md) val

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

