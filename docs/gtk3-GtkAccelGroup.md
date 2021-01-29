# GtkAccelGroup
<span class="source-link">[[Source]](src/gtk3/GtkAccelGroup.md#L6)</span>

A #GtkAccelGroup represents a group of keyboard accelerators,
typically attached to a toplevel #GtkWindow (with
gtk_window_add_accel_group()). Usually you won’t need to create a
#GtkAccelGroup directly; instead, when using #GtkUIManager, GTK+
automatically sets up the accelerators for your menus in the ui
manager’s #GtkAccelGroup.

Note that “accelerators” are different from
“mnemonics”. Accelerators are shortcuts for
activating a menu item; they appear alongside the menu item they’re a
shortcut for. For example “Ctrl+Q” might appear alongside the “Quit”
menu item. Mnemonics are shortcuts for GUI elements such as text
entries or buttons; they appear as underlined characters. See
gtk_label_new_with_mnemonic(). Menu items can have both accelerators
and mnemonics, of course.


```pony
class val GtkAccelGroup is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkAccelGroup.md#L28)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkAccelGroup val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkAccelGroup](gtk3-GtkAccelGroup.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkAccelGroup.md#L31)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkAccelGroup val^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkAccelGroup](gtk3-GtkAccelGroup.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkAccelGroup.md#L34)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkAccelGroup val^
```

#### Returns

* [GtkAccelGroup](gtk3-GtkAccelGroup.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkAccelGroup.md#L38)</span>


```pony
new val create()
: GtkAccelGroup val^
```

#### Returns

* [GtkAccelGroup](gtk3-GtkAccelGroup.md) val^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkAccelGroup.md#L24)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkAccelGroup.md#L26)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### pony_NOT_IMPLEMENTED_YET_activate
<span class="source-link">[[Source]](src/gtk3/GtkAccelGroup.md#L42)</span>


    Finds the first accelerator in @accel_group that matches
@accel_key and @accel_mods, and activates it.

    {:doh, %{argctype: "GQuark", argname: "accel_quark", argtype: "GLib.Quark", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GObject*", argname: "acceleratable", argtype: "GObject.Object", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkModifierType", argname: "accel_mods", argtype: "Gdk.ModifierType", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_activate()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_connect
<span class="source-link">[[Source]](src/gtk3/GtkAccelGroup.md#L53)</span>


    Installs an accelerator in this group. When @accel_group is being
activated in response to a call to gtk_accel_groups_activate(),
@closure will be invoked if the @accel_key and @accel_mods from
gtk_accel_groups_activate() match those of this connection.

The signature used for the @closure is that of #GtkAccelGroupActivate.

Note that, due to implementation details, a single closure can
only be connected to one accelerator group.

    {:doh, %{argctype: "GdkModifierType", argname: "accel_mods", argtype: "Gdk.ModifierType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkAccelFlags", argname: "accel_flags", argtype: "AccelFlags", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GClosure*", argname: "closure", argtype: "GObject.Closure", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_connect()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_connect_by_path
<span class="source-link">[[Source]](src/gtk3/GtkAccelGroup.md#L71)</span>


    Installs an accelerator in this group, using an accelerator path
to look up the appropriate key and modifiers (see
gtk_accel_map_add_entry()). When @accel_group is being activated
in response to a call to gtk_accel_groups_activate(), @closure will
be invoked if the @accel_key and @accel_mods from
gtk_accel_groups_activate() match the key and modifiers for the path.

The signature used for the @closure is that of #GtkAccelGroupActivate.

Note that @accel_path string will be stored in a #GQuark. Therefore,
if you pass a static string, you can save some memory by interning it
first with g_intern_static_string().

    {:doh, %{argctype: "const gchar*", argname: "accel_path", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GClosure*", argname: "closure", argtype: "GObject.Closure", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_connect_by_path()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_disconnect
<span class="source-link">[[Source]](src/gtk3/GtkAccelGroup.md#L91)</span>


    Removes an accelerator previously installed through
gtk_accel_group_connect().

Since 2.20 @closure can be %NULL.

    {:doh, %{argctype: "GClosure*", argname: "closure", argtype: "GObject.Closure", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_disconnect()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_disconnect_key
<span class="source-link">[[Source]](src/gtk3/GtkAccelGroup.md#L102)</span>


    Removes an accelerator previously installed through
gtk_accel_group_connect().

    {:doh, %{argctype: "GdkModifierType", argname: "accel_mods", argtype: "Gdk.ModifierType", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_disconnect_key()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_find
<span class="source-link">[[Source]](src/gtk3/GtkAccelGroup.md#L111)</span>


    Finds the first entry in an accelerator group for which
@find_func returns %TRUE and returns its #GtkAccelKey.

    {:argctype, "GtkAccelKey*"}
{:argname, "rv"}
{:argtype, "AccelKey"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_find()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### get_is_locked
<span class="source-link">[[Source]](src/gtk3/GtkAccelGroup.md#L124)</span>


Locks are added and removed using gtk_accel_group_lock() and
gtk_accel_group_unlock().


```pony
fun box get_is_locked()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_modifier_mask
<span class="source-link">[[Source]](src/gtk3/GtkAccelGroup.md#L131)</span>


    Gets a #GdkModifierType representing the mask for this
@accel_group. For example, #GDK_CONTROL_MASK, #GDK_SHIFT_MASK, etc.

    {:argctype, "GdkModifierType"}
{:argname, "rv"}
{:argtype, "Gdk.ModifierType"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_modifier_mask()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### lock
<span class="source-link">[[Source]](src/gtk3/GtkAccelGroup.md#L144)</span>


Locks the given accelerator group.

Locking an acelerator group prevents the accelerators contained
within it to be changed during runtime. Refer to
gtk_accel_map_change_entry() about runtime accelerator changes.

If called more than once, @accel_group remains locked until
gtk_accel_group_unlock() has been called an equivalent number
of times.


```pony
fun box lock()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_query
<span class="source-link">[[Source]](src/gtk3/GtkAccelGroup.md#L158)</span>


    Queries an accelerator group for all entries matching @accel_key
and @accel_mods.

    {:argctype, ""}
{:argname, "rv"}
{:argtype, ""}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_query()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### unlock
<span class="source-link">[[Source]](src/gtk3/GtkAccelGroup.md#L171)</span>


Undoes the last call to gtk_accel_group_lock() on this @accel_group.


```pony
fun box unlock()
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

