# GtkAction
<span class="source-link">[[Source]](src/gtk3/GtkAction.md#L6)</span>

> In GTK+ 3.10, GtkAction has been deprecated. Use #GAction
> instead, and associate actions with #GtkActionable widgets. Use
> #GMenuModel for creating menus with gtk_menu_new_from_model().

Actions represent operations that the user can be perform, along with
some information how it should be presented in the interface. Each action
provides methods to create icons, menu items and toolbar items
representing itself.

As well as the callback that is called when the action gets activated,
the following also gets associated with the action:

- a name (not translated, for path lookup)

- a label (translated, for display)

- an accelerator

- whether label indicates a stock id

- a tooltip (optional, translated)

- a toolbar label (optional, shorter than label)


The action will also have some state information:

- visible (shown/hidden)

- sensitive (enabled/disabled)

Apart from regular actions, there are [toggle actions][GtkToggleAction],
which can be toggled between two states and
[radio actions][GtkRadioAction], of which only one in a group
can be in the “active” state. Other actions can be implemented as #GtkAction
subclasses.

Each action can have one or more proxy widgets. To act as an action proxy,
widget needs to implement #GtkActivatable interface. Proxies mirror the state
of the action and should change when the action’s state changes. Properties
that are always mirrored by proxies are #GtkAction:sensitive and
#GtkAction:visible. #GtkAction:gicon, #GtkAction:icon-name, #GtkAction:label,
#GtkAction:short-label and #GtkAction:stock-id properties are only mirorred
if proxy widget has #GtkActivatable:use-action-appearance property set to
%TRUE.

When the proxy is activated, it should activate its action.


```pony
class val GtkAction is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkAction.md#L60)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkAction val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkAction](gtk3-GtkAction.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkAction.md#L63)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkAction val^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkAction](gtk3-GtkAction.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkAction.md#L66)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkAction val^
```

#### Returns

* [GtkAction](gtk3-GtkAction.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkAction.md#L70)</span>


```pony
new val create(
  name_pony: String val,
  label_pony: String val,
  tooltip_pony: String val,
  stock_id_pony: String val)
: GtkAction val^
```
#### Parameters

*   name_pony: [String](builtin-String.md) val
*   label_pony: [String](builtin-String.md) val
*   tooltip_pony: [String](builtin-String.md) val
*   stock_id_pony: [String](builtin-String.md) val

#### Returns

* [GtkAction](gtk3-GtkAction.md) val^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkAction.md#L56)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkAction.md#L58)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### activate
<span class="source-link">[[Source]](src/gtk3/GtkAction.md#L74)</span>


Emits the “activate” signal on the specified action, if it isn't
insensitive. This gets called by the proxy widgets when they get
activated.

It can also be used to manually activate an action.


```pony
fun box activate()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### block_activate
<span class="source-link">[[Source]](src/gtk3/GtkAction.md#L84)</span>


Disable activation signals from the action

This is needed when updating the state of your proxy
#GtkActivatable widget could result in calling gtk_action_activate(),
this is a convenience function to avoid recursing in those
cases (updating toggle state for instance).


```pony
fun box block_activate()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### connect_accelerator
<span class="source-link">[[Source]](src/gtk3/GtkAction.md#L95)</span>


Installs the accelerator for @action if @action has an
accel path and group. See gtk_action_set_accel_path() and
gtk_action_set_accel_group()

Since multiple proxies may independently trigger the installation
of the accelerator, the @action counts the number of times this
function has been called and doesn’t remove the accelerator until
gtk_action_disconnect_accelerator() has been called as many times.


```pony
fun box connect_accelerator()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_create_icon
<span class="source-link">[[Source]](src/gtk3/GtkAction.md#L108)</span>


    This function is intended for use by action implementations to
create icons displayed in the proxy widgets.

    {:doh, %{argctype: "GtkIconSize", argname: "icon_size", argtype: "gint", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_create_icon()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### disconnect_accelerator
<span class="source-link">[[Source]](src/gtk3/GtkAction.md#L137)</span>


Undoes the effect of one call to gtk_action_connect_accelerator().


```pony
fun box disconnect_accelerator()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_accel_closure
<span class="source-link">[[Source]](src/gtk3/GtkAction.md#L143)</span>


    Returns the accel closure for this action.

    {:argctype, "GClosure*"}
{:argname, "rv"}
{:argtype, "GObject.Closure"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_accel_closure()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### get_accel_path
<span class="source-link">[[Source]](src/gtk3/GtkAction.md#L155)</span>


Returns the accel path for this action.


```pony
fun box get_accel_path()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_always_show_image
<span class="source-link">[[Source]](src/gtk3/GtkAction.md#L163)</span>


Returns whether @action's menu item proxies will always
show their image, if available.


```pony
fun box get_always_show_image()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_gicon
<span class="source-link">[[Source]](src/gtk3/GtkAction.md#L170)</span>


    Gets the gicon of @action.

    {:argctype, "GIcon*"}
{:argname, "rv"}
{:argtype, "Gio.Icon"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_gicon()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### get_icon_name
<span class="source-link">[[Source]](src/gtk3/GtkAction.md#L182)</span>


Gets the icon name of @action.


```pony
fun box get_icon_name()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_is_important
<span class="source-link">[[Source]](src/gtk3/GtkAction.md#L190)</span>


Checks whether @action is important or not


```pony
fun box get_is_important()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_label
<span class="source-link">[[Source]](src/gtk3/GtkAction.md#L196)</span>


Gets the label text of @action.


```pony
fun box get_label()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_name
<span class="source-link">[[Source]](src/gtk3/GtkAction.md#L204)</span>


Returns the name of the action.


```pony
fun box get_name()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_proxies
<span class="source-link">[[Source]](src/gtk3/GtkAction.md#L212)</span>


    Returns the proxy widgets for an action.
See also gtk_activatable_get_related_action().

    {:argctype, "GSList*"}
{:argname, "rv"}
{:argtype, "GLib.SList"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_proxies()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### get_sensitive
<span class="source-link">[[Source]](src/gtk3/GtkAction.md#L225)</span>


Returns whether the action itself is sensitive. Note that this doesn’t
necessarily mean effective sensitivity. See gtk_action_is_sensitive()
for that.


```pony
fun box get_sensitive()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_short_label
<span class="source-link">[[Source]](src/gtk3/GtkAction.md#L233)</span>


Gets the short label text of @action.


```pony
fun box get_short_label()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_stock_id
<span class="source-link">[[Source]](src/gtk3/GtkAction.md#L241)</span>


Gets the stock id of @action.


```pony
fun box get_stock_id()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_tooltip
<span class="source-link">[[Source]](src/gtk3/GtkAction.md#L249)</span>


Gets the tooltip text of @action.


```pony
fun box get_tooltip()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_visible
<span class="source-link">[[Source]](src/gtk3/GtkAction.md#L257)</span>


Returns whether the action itself is visible. Note that this doesn’t
necessarily mean effective visibility. See gtk_action_is_sensitive()
for that.


```pony
fun box get_visible()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_visible_horizontal
<span class="source-link">[[Source]](src/gtk3/GtkAction.md#L265)</span>


Checks whether @action is visible when horizontal


```pony
fun box get_visible_horizontal()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_visible_vertical
<span class="source-link">[[Source]](src/gtk3/GtkAction.md#L271)</span>


Checks whether @action is visible when horizontal


```pony
fun box get_visible_vertical()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### is_sensitive
<span class="source-link">[[Source]](src/gtk3/GtkAction.md#L277)</span>


Returns whether the action is effectively sensitive.


```pony
fun box is_sensitive()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### is_visible
<span class="source-link">[[Source]](src/gtk3/GtkAction.md#L283)</span>


Returns whether the action is effectively visible.


```pony
fun box is_visible()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_accel_group
<span class="source-link">[[Source]](src/gtk3/GtkAction.md#L289)</span>


    Sets the #GtkAccelGroup in which the accelerator for this action
will be installed.

    {:doh, %{argctype: "GtkAccelGroup*", argname: "accel_group", argtype: "AccelGroup", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_accel_group()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_accel_path
<span class="source-link">[[Source]](src/gtk3/GtkAction.md#L298)</span>


    Sets the accel path for this action.  All proxy widgets associated
with the action will have this accel path, so that their
accelerators are consistent.

Note that @accel_path string will be stored in a #GQuark. Therefore, if you
pass a static string, you can save some memory by interning it first with
g_intern_static_string().

    {:doh, %{argctype: "const gchar*", argname: "accel_path", argtype: "utf8", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_accel_path()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### set_always_show_image
<span class="source-link">[[Source]](src/gtk3/GtkAction.md#L312)</span>


Sets whether @action's menu item proxies will ignore the
#GtkSettings:gtk-menu-images setting and always show their image, if available.

Use this if the menu item would be useless or hard to use
without their image.


```pony
fun box set_always_show_image(
  always_show_pony: Bool val)
: None val
```
#### Parameters

*   always_show_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_gicon
<span class="source-link">[[Source]](src/gtk3/GtkAction.md#L322)</span>


    Sets the icon of @action.

    {:doh, %{argctype: "GIcon*", argname: "icon", argtype: "Gio.Icon", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_gicon()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_icon_name
<span class="source-link">[[Source]](src/gtk3/GtkAction.md#L330)</span>


    Sets the icon name on @action

    {:doh, %{argctype: "const gchar*", argname: "icon_name", argtype: "utf8", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_icon_name()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### set_is_important
<span class="source-link">[[Source]](src/gtk3/GtkAction.md#L338)</span>


Sets whether the action is important, this attribute is used
primarily by toolbar items to decide whether to show a label
or not.


```pony
fun box set_is_important(
  is_important_pony: Bool val)
: None val
```
#### Parameters

*   is_important_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_label
<span class="source-link">[[Source]](src/gtk3/GtkAction.md#L346)</span>


    Sets the label of @action.

    {:doh, %{argctype: "const gchar*", argname: "label", argtype: "utf8", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_label()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### set_sensitive
<span class="source-link">[[Source]](src/gtk3/GtkAction.md#L354)</span>


Sets the :sensitive property of the action to @sensitive. Note that
this doesn’t necessarily mean effective sensitivity. See
gtk_action_is_sensitive()
for that.


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

### pony_NOT_IMPLEMENTED_YET_set_short_label
<span class="source-link">[[Source]](src/gtk3/GtkAction.md#L363)</span>


    Sets a shorter label text on @action.

    {:doh, %{argctype: "const gchar*", argname: "short_label", argtype: "utf8", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_short_label()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_stock_id
<span class="source-link">[[Source]](src/gtk3/GtkAction.md#L371)</span>


    Sets the stock id on @action

    {:doh, %{argctype: "const gchar*", argname: "stock_id", argtype: "utf8", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_stock_id()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_tooltip
<span class="source-link">[[Source]](src/gtk3/GtkAction.md#L379)</span>


    Sets the tooltip text on @action

    {:doh, %{argctype: "const gchar*", argname: "tooltip", argtype: "utf8", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_tooltip()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### set_visible
<span class="source-link">[[Source]](src/gtk3/GtkAction.md#L387)</span>


Sets the :visible property of the action to @visible. Note that
this doesn’t necessarily mean effective visibility. See
gtk_action_is_visible()
for that.


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

### set_visible_horizontal
<span class="source-link">[[Source]](src/gtk3/GtkAction.md#L396)</span>


Sets whether @action is visible when horizontal


```pony
fun box set_visible_horizontal(
  visible_horizontal_pony: Bool val)
: None val
```
#### Parameters

*   visible_horizontal_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_visible_vertical
<span class="source-link">[[Source]](src/gtk3/GtkAction.md#L402)</span>


Sets whether @action is visible when vertical


```pony
fun box set_visible_vertical(
  visible_vertical_pony: Bool val)
: None val
```
#### Parameters

*   visible_vertical_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### unblock_activate
<span class="source-link">[[Source]](src/gtk3/GtkAction.md#L408)</span>


Reenable activation signals from the action


```pony
fun box unblock_activate()
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

