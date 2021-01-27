# GtkRecentChooserMenu
<span class="source-link">[[Source]](src/gtk3/GtkRecentChooserMenu.md#L6)</span>
```pony
class ref GtkRecentChooserMenu is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkRecentChooserMenu.md#L10)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkRecentChooserMenu ref^
```

#### Returns

* [GtkRecentChooserMenu](gtk3-GtkRecentChooserMenu.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkRecentChooserMenu.md#L13)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkRecentChooserMenu ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkRecentChooserMenu](gtk3-GtkRecentChooserMenu.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkRecentChooserMenu.md#L17)</span>


```pony
new ref create()
: GtkRecentChooserMenu ref^
```

#### Returns

* [GtkRecentChooserMenu](gtk3-GtkRecentChooserMenu.md) ref^

---

### new_for_manager
<span class="source-link">[[Source]](src/gtk3/GtkRecentChooserMenu.md#L20)</span>


```pony
new ref new_for_manager(
  manager_pony: GtkRecentManager ref)
: GtkRecentChooserMenu ref^
```
#### Parameters

*   manager_pony: [GtkRecentManager](gtk3-GtkRecentManager.md) ref

#### Returns

* [GtkRecentChooserMenu](gtk3-GtkRecentChooserMenu.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkRecentChooserMenu.md#L7)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkRecentChooserMenu.md#L9)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### get_show_numbers
<span class="source-link">[[Source]](src/gtk3/GtkRecentChooserMenu.md#L24)</span>


Returns the value set by gtk_recent_chooser_menu_set_show_numbers().


```pony
fun box get_show_numbers()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### set_show_numbers
<span class="source-link">[[Source]](src/gtk3/GtkRecentChooserMenu.md#L30)</span>


Sets whether a number should be added to the items of @menu.  The
numbers are shown to provide a unique character for a mnemonic to
be used inside ten menu item’s label.  Only the first the items
get a number to avoid clashes.


```pony
fun box set_show_numbers(
  show_numbers_pony: Bool val)
: None val
```
#### Parameters

*   show_numbers_pony: [Bool](builtin-Bool.md) val

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

