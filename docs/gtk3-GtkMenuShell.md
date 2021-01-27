# GtkMenuShell
<span class="source-link">[[Source]](src/gtk3/GtkMenuShell.md#L6)</span>
```pony
class ref GtkMenuShell is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkMenuShell.md#L10)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkMenuShell ref^
```

#### Returns

* [GtkMenuShell](gtk3-GtkMenuShell.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkMenuShell.md#L13)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkMenuShell ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkMenuShell](gtk3-GtkMenuShell.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkMenuShell.md#L7)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkMenuShell.md#L9)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### cancel
<span class="source-link">[[Source]](src/gtk3/GtkMenuShell.md#L32)</span>


Cancels the selection within the menu shell.


```pony
fun box cancel()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### deactivate
<span class="source-link">[[Source]](src/gtk3/GtkMenuShell.md#L38)</span>


Deactivates the menu shell.

Typically this results in the menu shell being erased
from the screen.


```pony
fun box deactivate()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### deselect
<span class="source-link">[[Source]](src/gtk3/GtkMenuShell.md#L47)</span>


Deselects the currently selected item from the menu shell,
if any.


```pony
fun box deselect()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### get_take_focus
<span class="source-link">[[Source]](src/gtk3/GtkMenuShell.md#L68)</span>


Returns %TRUE if the menu shell will take the keyboard focus on popup.


```pony
fun box get_take_focus()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### select_first
<span class="source-link">[[Source]](src/gtk3/GtkMenuShell.md#L82)</span>


Select the first visible or selectable child of the menu shell;
don’t select tearoff items unless the only item is a tearoff
item.


```pony
fun box select_first(
  search_sensitive_pony: Bool val)
: None val
```
#### Parameters

*   search_sensitive_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_take_focus
<span class="source-link">[[Source]](src/gtk3/GtkMenuShell.md#L94)</span>


If @take_focus is %TRUE (the default) the menu shell will take
the keyboard focus so that it will receive all keyboard events
which is needed to enable keyboard navigation in menus.

Setting @take_focus to %FALSE is useful only for special applications
like virtual keyboard implementations which should not take keyboard
focus.

The @take_focus state of a menu or menu bar is automatically
propagated to submenus whenever a submenu is popped up, so you
don’t have to worry about recursively setting it for your entire
menu hierarchy. Only when programmatically picking a submenu and
popping it up manually, the @take_focus property of the submenu
needs to be set explicitly.

Note that setting it to %FALSE has side-effects:

If the focus is in some other app, it keeps the focus and keynav in
the menu doesn’t work. Consequently, keynav on the menu will only
work if the focus is on some toplevel owned by the onscreen keyboard.

To avoid confusing the user, menus with @take_focus set to %FALSE
should not display mnemonics or accelerators, since it cannot be
guaranteed that they will work.

See also gdk_keyboard_grab()


```pony
fun box set_take_focus(
  take_focus_pony: Bool val)
: None val
```
#### Parameters

*   take_focus_pony: [Bool](builtin-Bool.md) val

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

