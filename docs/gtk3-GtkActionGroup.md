# GtkActionGroup
<span class="source-link">[[Source]](src/gtk3/GtkActionGroup.md#L6)</span>

Actions are organised into groups. An action group is essentially a
map from names to #GtkAction objects.

All actions that would make sense to use in a particular context
should be in a single group. Multiple action groups may be used for a
particular user interface. In fact, it is expected that most nontrivial
applications will make use of multiple groups. For example, in an
application that can edit multiple documents, one group holding global
actions (e.g. quit, about, new), and one group per document holding
actions that act on that document (eg. save, cut/copy/paste, etc). Each
window’s menus would be constructed from a combination of two action
groups.

## Accelerators ## {#Action-Accel}

Accelerators are handled by the GTK+ accelerator map. All actions are
assigned an accelerator path (which normally has the form
`<Actions>/group-name/action-name`) and a shortcut is associated with
this accelerator path. All menuitems and toolitems take on this accelerator
path. The GTK+ accelerator map code makes sure that the correct shortcut
is displayed next to the menu item.

# GtkActionGroup as GtkBuildable # {#GtkActionGroup-BUILDER-UI}

The #GtkActionGroup implementation of the #GtkBuildable interface accepts
#GtkAction objects as <child> elements in UI definitions.

Note that it is probably more common to define actions and action groups
in the code, since they are directly related to what the code can do.

The GtkActionGroup implementation of the GtkBuildable interface supports
a custom <accelerator> element, which has attributes named “key“ and
“modifiers“ and allows to specify accelerators. This is similar to the
<accelerator> element of #GtkWidget, the main difference is that
it doesn’t allow you to specify a signal.

## A #GtkDialog UI definition fragment. ##
|[
<object class="GtkActionGroup" id="actiongroup">
  <child>
      <object class="GtkAction" id="About">
          <property name="name">About</property>
          <property name="stock_id">gtk-about</property>
          <signal handler="about_activate" name="activate"/>
      </object>
      <accelerator key="F1" modifiers="GDK_CONTROL_MASK | GDK_SHIFT_MASK"/>
  </child>
</object>
]|


```pony
class val GtkActionGroup is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkActionGroup.md#L62)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkActionGroup val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkActionGroup](gtk3-GtkActionGroup.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkActionGroup.md#L65)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkActionGroup val^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkActionGroup](gtk3-GtkActionGroup.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkActionGroup.md#L68)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkActionGroup val^
```

#### Returns

* [GtkActionGroup](gtk3-GtkActionGroup.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkActionGroup.md#L72)</span>


```pony
new val create(
  name_pony: String val)
: GtkActionGroup val^
```
#### Parameters

*   name_pony: [String](builtin-String.md) val

#### Returns

* [GtkActionGroup](gtk3-GtkActionGroup.md) val^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkActionGroup.md#L58)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkActionGroup.md#L60)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### pony_NOT_IMPLEMENTED_YET_add_action
<span class="source-link">[[Source]](src/gtk3/GtkActionGroup.md#L76)</span>


    Adds an action object to the action group. Note that this function
does not set up the accel path of the action, which can lead to problems
if a user tries to modify the accelerator of a menuitem associated with
the action. Therefore you must either set the accel path yourself with
gtk_action_set_accel_path(), or use
`gtk_action_group_add_action_with_accel (..., NULL)`.

    {:doh, %{argctype: "GtkAction*", argname: "action", argtype: "Action", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_add_action()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_add_action_with_accel
<span class="source-link">[[Source]](src/gtk3/GtkActionGroup.md#L89)</span>


    Adds an action object to the action group and sets up the accelerator.

If @accelerator is %NULL, attempts to use the accelerator associated
with the stock_id of the action.

Accel paths are set to `<Actions>/group-name/action-name`.

    {:doh, %{argctype: "GtkAction*", argname: "action", argtype: "Action", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "accelerator", argtype: "utf8", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_add_action_with_accel()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_add_actions
<span class="source-link">[[Source]](src/gtk3/GtkActionGroup.md#L103)</span>


    This is a convenience function to create a number of actions and add them
to the action group.

The “activate” signals of the actions are connected to the callbacks
and their accel paths are set to `<Actions>/group-name/action-name`.

    {:doh, %{argctype: "", argname: "entries", argtype: "", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "user_data", argtype: "gpointer", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_add_actions()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_add_actions_full
<span class="source-link">[[Source]](src/gtk3/GtkActionGroup.md#L116)</span>


    This variant of gtk_action_group_add_actions() adds a #GDestroyNotify
callback for @user_data.

    {:doh, %{argctype: "", argname: "entries", argtype: "", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "user_data", argtype: "gpointer", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GDestroyNotify", argname: "destroy", argtype: "GLib.DestroyNotify", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_add_actions_full()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_add_radio_actions
<span class="source-link">[[Source]](src/gtk3/GtkActionGroup.md#L127)</span>


    This is a convenience routine to create a group of radio actions and
add them to the action group.

The “changed” signal of the first radio action is connected to the
@on_change callback and the accel paths of the actions are set to
`<Actions>/group-name/action-name`.

    {:doh, %{argctype: "", argname: "entries", argtype: "", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GCallback", argname: "on_change", argtype: "GObject.Callback", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "user_data", argtype: "gpointer", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_add_radio_actions()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_add_radio_actions_full
<span class="source-link">[[Source]](src/gtk3/GtkActionGroup.md#L142)</span>


    This variant of gtk_action_group_add_radio_actions() adds a
#GDestroyNotify callback for @user_data.

    {:doh, %{argctype: "", argname: "entries", argtype: "", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GCallback", argname: "on_change", argtype: "GObject.Callback", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "user_data", argtype: "gpointer", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GDestroyNotify", argname: "destroy", argtype: "GLib.DestroyNotify", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_add_radio_actions_full()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_add_toggle_actions
<span class="source-link">[[Source]](src/gtk3/GtkActionGroup.md#L154)</span>


    This is a convenience function to create a number of toggle actions and add them
to the action group.

The “activate” signals of the actions are connected to the callbacks
and their accel paths are set to `<Actions>/group-name/action-name`.

    {:doh, %{argctype: "", argname: "entries", argtype: "", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "user_data", argtype: "gpointer", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_add_toggle_actions()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_add_toggle_actions_full
<span class="source-link">[[Source]](src/gtk3/GtkActionGroup.md#L167)</span>


    This variant of gtk_action_group_add_toggle_actions() adds a
#GDestroyNotify callback for @user_data.

    {:doh, %{argctype: "", argname: "entries", argtype: "", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "user_data", argtype: "gpointer", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GDestroyNotify", argname: "destroy", argtype: "GLib.DestroyNotify", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_add_toggle_actions_full()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_accel_group
<span class="source-link">[[Source]](src/gtk3/GtkActionGroup.md#L178)</span>


    Gets the accelerator group.

    {:argctype, "GtkAccelGroup*"}
{:argname, "rv"}
{:argtype, "AccelGroup"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_accel_group()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_action
<span class="source-link">[[Source]](src/gtk3/GtkActionGroup.md#L190)</span>


    Looks up an action in the action group by name.

    {:argctype, "GtkAction*"}
{:argname, "rv"}
{:argtype, "Action"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_action()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### get_name
<span class="source-link">[[Source]](src/gtk3/GtkActionGroup.md#L202)</span>


Gets the name of the action group.


```pony
fun box get_name()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_sensitive
<span class="source-link">[[Source]](src/gtk3/GtkActionGroup.md#L210)</span>


Returns %TRUE if the group is sensitive.  The constituent actions
can only be logically sensitive (see gtk_action_is_sensitive()) if
they are sensitive (see gtk_action_get_sensitive()) and their group
is sensitive.


```pony
fun box get_sensitive()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_visible
<span class="source-link">[[Source]](src/gtk3/GtkActionGroup.md#L219)</span>


Returns %TRUE if the group is visible.  The constituent actions
can only be logically visible (see gtk_action_is_visible()) if
they are visible (see gtk_action_get_visible()) and their group
is visible.


```pony
fun box get_visible()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### pony_NOT_IMPLEMENTED_YET_list_actions
<span class="source-link">[[Source]](src/gtk3/GtkActionGroup.md#L228)</span>


    Lists the actions in the action group.

    {:argctype, "GList*"}
{:argname, "rv"}
{:argtype, "GLib.List"}
{:paramtype, :param}
{:txo, "container"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_list_actions()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_remove_action
<span class="source-link">[[Source]](src/gtk3/GtkActionGroup.md#L240)</span>


    Removes an action object from the action group.

    {:doh, %{argctype: "GtkAction*", argname: "action", argtype: "Action", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_remove_action()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_accel_group
<span class="source-link">[[Source]](src/gtk3/GtkActionGroup.md#L248)</span>


    Sets the accelerator group to be used by every action in this group.

    {:doh, %{argctype: "GtkAccelGroup*", argname: "accel_group", argtype: "AccelGroup", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_accel_group()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### set_sensitive
<span class="source-link">[[Source]](src/gtk3/GtkActionGroup.md#L256)</span>


Changes the sensitivity of @action_group


```pony
fun box set_sensitive(
  sensitive_pony: Bool val)
: None val
```
#### Parameters

*   sensitive_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_translate_func
<span class="source-link">[[Source]](src/gtk3/GtkActionGroup.md#L262)</span>


    Sets a function to be used for translating the @label and @tooltip of
#GtkActionEntrys added by gtk_action_group_add_actions().

If you’re using gettext(), it is enough to set the translation domain
with gtk_action_group_set_translation_domain().

    {:doh, %{argctype: "GtkTranslateFunc", argname: "func", argtype: "TranslateFunc", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "data", argtype: "gpointer", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GDestroyNotify", argname: "notify", argtype: "GLib.DestroyNotify", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_translate_func()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_translation_domain
<span class="source-link">[[Source]](src/gtk3/GtkActionGroup.md#L276)</span>


    Sets the translation domain and uses g_dgettext() for translating the
@label and @tooltip of #GtkActionEntrys added by
gtk_action_group_add_actions().

If you’re not using gettext() for localization, see
gtk_action_group_set_translate_func().

    {:doh, %{argctype: "const gchar*", argname: "domain", argtype: "utf8", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_translation_domain()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### set_visible
<span class="source-link">[[Source]](src/gtk3/GtkActionGroup.md#L289)</span>


Changes the visible of @action_group.


```pony
fun box set_visible(
  visible_pony: Bool val)
: None val
```
#### Parameters

*   visible_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_translate_string
<span class="source-link">[[Source]](src/gtk3/GtkActionGroup.md#L295)</span>


    Translates a string using the function set with
gtk_action_group_set_translate_func(). This
is mainly intended for language bindings.

    {:doh, %{argctype: "const gchar*", argname: "string", argtype: "utf8", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_translate_string()
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

