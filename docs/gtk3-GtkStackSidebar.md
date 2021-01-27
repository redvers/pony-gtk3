# GtkStackSidebar
<span class="source-link">[[Source]](src/gtk3/GtkStackSidebar.md#L6)</span>

A GtkStackSidebar enables you to quickly and easily provide a
consistent "sidebar" object for your user interface.

In order to use a GtkStackSidebar, you simply use a GtkStack to
organize your UI flow, and add the sidebar to your sidebar area. You
can use gtk_stack_sidebar_set_stack() to connect the #GtkStackSidebar
to the #GtkStack.

# CSS nodes

GtkStackSidebar has a single CSS node with name stacksidebar and
style class .sidebar.

When circumstances require it, GtkStackSidebar adds the
.needs-attention style class to the widgets representing the stack
pages.


```pony
class ref GtkStackSidebar is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkStackSidebar.md#L28)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkStackSidebar ref^
```

#### Returns

* [GtkStackSidebar](gtk3-GtkStackSidebar.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkStackSidebar.md#L31)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkStackSidebar ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkStackSidebar](gtk3-GtkStackSidebar.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkStackSidebar.md#L35)</span>


```pony
new ref create()
: GtkStackSidebar ref^
```

#### Returns

* [GtkStackSidebar](gtk3-GtkStackSidebar.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkStackSidebar.md#L25)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkStackSidebar.md#L27)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

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

