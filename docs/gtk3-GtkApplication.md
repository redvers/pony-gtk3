# GtkApplication
<span class="source-link">[[Source]](src/gtk3/GtkApplication.md#L6)</span>
```pony
class ref GtkApplication is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkApplication.md#L10)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkApplication ref^
```

#### Returns

* [GtkApplication](gtk3-GtkApplication.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkApplication.md#L13)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkApplication ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkApplication](gtk3-GtkApplication.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkApplication.md#L17)</span>


```pony
new ref create(
  application_id_pony: String val,
  flags_pony: GApplicationFlags val)
: GtkApplication ref^
```
#### Parameters

*   application_id_pony: [String](builtin-String.md) val
*   flags_pony: [GApplicationFlags](gtk3-GApplicationFlags.md) val

#### Returns

* [GtkApplication](gtk3-GtkApplication.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkApplication.md#L7)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkApplication.md#L9)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### prefers_app_menu
<span class="source-link">[[Source]](src/gtk3/GtkApplication.md#L104)</span>


Determines if the desktop environment in which the application is
running would prefer an application menu be shown.

If this function returns %TRUE then the application should call
gtk_application_set_app_menu() with the contents of an application
menu, which will be shown by the desktop environment.  If it returns
%FALSE then you should consider using an alternate approach, such as
a menubar.

The value returned by this function is purely advisory and you are
free to ignore it.  If you call gtk_application_set_app_menu() even
if the desktop environment doesn't support app menus, then a fallback
will be provided.

Applications are similarly free not to set an app menu even if the
desktop environment wants to show one.  In that case, a fallback will
also be created by the desktop environment (GNOME, for example, uses
a menu with only a "Quit" item in it).

The value returned by this function never changes.  Once it returns a
particular value, it is guaranteed to always return the same value.

You may only call this function after the application has been
registered and after the base startup handler has run.  You're most
likely to want to use this from your own startup handler.  It may
also make sense to consult this function while constructing UI (in
activate, open or an action activation handler) in order to determine
if you should show a gear menu or not.

This function will return %FALSE on Mac OS and a default app menu
will be created automatically with the "usual" contents of that menu
typical to most Mac OS applications.  If you call
gtk_application_set_app_menu() anyway, then this menu will be
replaced with your own.


```pony
fun box prefers_app_menu()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### uninhibit
<span class="source-link">[[Source]](src/gtk3/GtkApplication.md#L165)</span>


Removes an inhibitor that has been established with gtk_application_inhibit().
Inhibitors are also cleared when the application exits.


```pony
fun box uninhibit(
  cookie_pony: U32 val)
: None val
```
#### Parameters

*   cookie_pony: [U32](builtin-U32.md) val

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

