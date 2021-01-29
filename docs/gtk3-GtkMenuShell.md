# GtkMenuShell
<span class="source-link">[[Source]](src/gtk3/GtkMenuShell.md#L6)</span>

A #GtkMenuShell is the abstract base class used to derive the
#GtkMenu and #GtkMenuBar subclasses.

A #GtkMenuShell is a container of #GtkMenuItem objects arranged
in a list which can be navigated, selected, and activated by the
user to perform application functions. A #GtkMenuItem can have a
submenu associated with it, allowing for nested hierarchical menus.

# Terminology

A menu item can be “selected”, this means that it is displayed
in the prelight state, and if it has a submenu, that submenu
will be popped up.

A menu is “active” when it is visible onscreen and the user
is selecting from it. A menubar is not active until the user
clicks on one of its menuitems. When a menu is active,
passing the mouse over a submenu will pop it up.

There is also is a concept of the current menu and a current
menu item. The current menu item is the selected menu item
that is furthest down in the hierarchy. (Every active menu shell
does not necessarily contain a selected menu item, but if
it does, then the parent menu shell must also contain
a selected menu item.) The current menu is the menu that
contains the current menu item. It will always have a GTK
grab and receive all key presses.


```pony
class val GtkMenuShell is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkMenuShell.md#L40)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkMenuShell val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkMenuShell](gtk3-GtkMenuShell.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkMenuShell.md#L43)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkMenuShell val^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkMenuShell](gtk3-GtkMenuShell.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkMenuShell.md#L46)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkMenuShell val^
```

#### Returns

* [GtkMenuShell](gtk3-GtkMenuShell.md) val^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkMenuShell.md#L36)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkMenuShell.md#L38)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### activate_item
<span class="source-link">[[Source]](src/gtk3/GtkMenuShell.md#L52)</span>


Activates the menu item within the menu shell.


```pony
fun box activate_item(
  menu_item_pony: GtkWidget val,
  force_deactivate_pony: Bool val)
: None val
```
#### Parameters

*   menu_item_pony: [GtkWidget](gtk3-GtkWidget.md) val
*   force_deactivate_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_append
<span class="source-link">[[Source]](src/gtk3/GtkMenuShell.md#L58)</span>


    Adds a new #GtkMenuItem to the end of the menu shell's
item list.

    {:doh, %{argctype: "GtkWidget*", argname: "child", argtype: "MenuItem", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_append()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_bind_model
<span class="source-link">[[Source]](src/gtk3/GtkMenuShell.md#L67)</span>


    Establishes a binding between a #GtkMenuShell and a #GMenuModel.

The contents of @shell are removed and then refilled with menu items
according to @model.  When @model changes, @shell is updated.
Calling this function twice on @shell with different @model will
cause the first binding to be replaced with a binding to the new
model. If @model is %NULL then any previous binding is undone and
all children are removed.

@with_separators determines if toplevel items (eg: sections) have
separators inserted between them.  This is typically desired for
menus but doesn’t make sense for menubars.

If @action_namespace is non-%NULL then the effect is as if all
actions mentioned in the @model have their names prefixed with the
namespace, plus a dot.  For example, if the action “quit” is
mentioned and @action_namespace is “app” then the effective action
name is “app.quit”.

This function uses #GtkActionable to define the action name and
target values on the created menu items.  If you want to use an
action group other than “app” and “win”, or if you want to use a
#GtkMenuShell outside of a #GtkApplicationWindow, then you will need
to attach your own action group to the widget hierarchy using
gtk_widget_insert_action_group().  As an example, if you created a
group with a “quit” action and inserted it with the name “mygroup”
then you would use the action name “mygroup.quit” in your
#GMenuModel.

For most cases you are probably better off using
gtk_menu_new_from_model() or gtk_menu_bar_new_from_model() or just
directly passing the #GMenuModel to gtk_application_set_app_menu() or
gtk_application_set_menubar().

    {:doh, %{argctype: "GMenuModel*", argname: "model", argtype: "Gio.MenuModel", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "action_namespace", argtype: "utf8", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_bind_model()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### cancel
<span class="source-link">[[Source]](src/gtk3/GtkMenuShell.md#L108)</span>


Cancels the selection within the menu shell.


```pony
fun box cancel()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### deactivate
<span class="source-link">[[Source]](src/gtk3/GtkMenuShell.md#L114)</span>


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
<span class="source-link">[[Source]](src/gtk3/GtkMenuShell.md#L123)</span>


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
<span class="source-link">[[Source]](src/gtk3/GtkMenuShell.md#L145)</span>


Returns %TRUE if the menu shell will take the keyboard focus on popup.


```pony
fun box get_take_focus()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### insert
<span class="source-link">[[Source]](src/gtk3/GtkMenuShell.md#L151)</span>


Adds a new #GtkMenuItem to the menu shell’s item list
at the position indicated by @position.


```pony
fun box insert(
  child_pony: GtkWidget val,
  position_pony: I32 val)
: None val
```
#### Parameters

*   child_pony: [GtkWidget](gtk3-GtkWidget.md) val
*   position_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### prepend
<span class="source-link">[[Source]](src/gtk3/GtkMenuShell.md#L158)</span>


Adds a new #GtkMenuItem to the beginning of the menu shell's
item list.


```pony
fun box prepend(
  child_pony: GtkWidget val)
: None val
```
#### Parameters

*   child_pony: [GtkWidget](gtk3-GtkWidget.md) val

#### Returns

* [None](builtin-None.md) val

---

### select_first
<span class="source-link">[[Source]](src/gtk3/GtkMenuShell.md#L165)</span>


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

### select_item
<span class="source-link">[[Source]](src/gtk3/GtkMenuShell.md#L173)</span>


Selects the menu item from the menu shell.


```pony
fun box select_item(
  menu_item_pony: GtkWidget val)
: None val
```
#### Parameters

*   menu_item_pony: [GtkWidget](gtk3-GtkWidget.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_take_focus
<span class="source-link">[[Source]](src/gtk3/GtkMenuShell.md#L179)</span>


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

