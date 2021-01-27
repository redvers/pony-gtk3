# GtkActionGroup
<span class="source-link">[[Source]](src/gtk3/GtkActionGroup.md#L6)</span>
```pony
class ref GtkActionGroup is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkActionGroup.md#L10)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkActionGroup ref^
```

#### Returns

* [GtkActionGroup](gtk3-GtkActionGroup.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkActionGroup.md#L13)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkActionGroup ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkActionGroup](gtk3-GtkActionGroup.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkActionGroup.md#L17)</span>


```pony
new ref create(
  name_pony: String val)
: GtkActionGroup ref^
```
#### Parameters

*   name_pony: [String](builtin-String.md) val

#### Returns

* [GtkActionGroup](gtk3-GtkActionGroup.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkActionGroup.md#L7)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkActionGroup.md#L9)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### get_name
<span class="source-link">[[Source]](src/gtk3/GtkActionGroup.md#L79)</span>


Gets the name of the action group.


```pony
fun box get_name()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_sensitive
<span class="source-link">[[Source]](src/gtk3/GtkActionGroup.md#L87)</span>


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
<span class="source-link">[[Source]](src/gtk3/GtkActionGroup.md#L96)</span>


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

### set_sensitive
<span class="source-link">[[Source]](src/gtk3/GtkActionGroup.md#L120)</span>


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

### set_visible
<span class="source-link">[[Source]](src/gtk3/GtkActionGroup.md#L136)</span>


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

