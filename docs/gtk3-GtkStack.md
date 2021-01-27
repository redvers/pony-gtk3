# GtkStack
<span class="source-link">[[Source]](src/gtk3/GtkStack.md#L6)</span>
```pony
class ref GtkStack is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkStack.md#L10)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkStack ref^
```

#### Returns

* [GtkStack](gtk3-GtkStack.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkStack.md#L13)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkStack ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkStack](gtk3-GtkStack.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkStack.md#L17)</span>


```pony
new ref create()
: GtkStack ref^
```

#### Returns

* [GtkStack](gtk3-GtkStack.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkStack.md#L7)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkStack.md#L9)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### get_hhomogeneous
<span class="source-link">[[Source]](src/gtk3/GtkStack.md#L39)</span>


Gets whether @stack is horizontally homogeneous.
See gtk_stack_set_hhomogeneous().


```pony
fun box get_hhomogeneous()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_homogeneous
<span class="source-link">[[Source]](src/gtk3/GtkStack.md#L46)</span>


Gets whether @stack is homogeneous.
See gtk_stack_set_homogeneous().


```pony
fun box get_homogeneous()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_interpolate_size
<span class="source-link">[[Source]](src/gtk3/GtkStack.md#L53)</span>


Returns wether the #GtkStack is set up to interpolate between
the sizes of children on page switch.


```pony
fun box get_interpolate_size()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_transition_duration
<span class="source-link">[[Source]](src/gtk3/GtkStack.md#L60)</span>


Returns the amount of time (in milliseconds) that
transitions between pages in @stack will take.


```pony
fun box get_transition_duration()
: U32 val
```

#### Returns

* [U32](builtin-U32.md) val

---

### get_transition_running
<span class="source-link">[[Source]](src/gtk3/GtkStack.md#L67)</span>


Returns whether the @stack is currently in a transition from one page to
another.


```pony
fun box get_transition_running()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_vhomogeneous
<span class="source-link">[[Source]](src/gtk3/GtkStack.md#L81)</span>


Gets whether @stack is vertically homogeneous.
See gtk_stack_set_vhomogeneous().


```pony
fun box get_vhomogeneous()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_visible_child_name
<span class="source-link">[[Source]](src/gtk3/GtkStack.md#L95)</span>


Returns the name of the currently visible child of @stack, or
%NULL if there is no visible child.


```pony
fun box get_visible_child_name()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### set_hhomogeneous
<span class="source-link">[[Source]](src/gtk3/GtkStack.md#L104)</span>


Sets the #GtkStack to be horizontally homogeneous or not.
If it is homogeneous, the #GtkStack will request the same
width for all its children. If it isn't, the stack
may change width when a different child becomes visible.


```pony
fun box set_hhomogeneous(
  hhomogeneous_pony: Bool val)
: None val
```
#### Parameters

*   hhomogeneous_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_homogeneous
<span class="source-link">[[Source]](src/gtk3/GtkStack.md#L113)</span>


Sets the #GtkStack to be homogeneous or not. If it
is homogeneous, the #GtkStack will request the same
size for all its children. If it isn't, the stack
may change size when a different child becomes visible.

Since 3.16, homogeneity can be controlled separately
for horizontal and vertical size, with the
#GtkStack:hhomogeneous and #GtkStack:vhomogeneous.


```pony
fun box set_homogeneous(
  homogeneous_pony: Bool val)
: None val
```
#### Parameters

*   homogeneous_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_interpolate_size
<span class="source-link">[[Source]](src/gtk3/GtkStack.md#L126)</span>


Sets whether or not @stack will interpolate its size when
changing the visible child. If the #GtkStack:interpolate-size
property is set to %TRUE, @stack will interpolate its size between
the current one and the one it'll take after changing the
visible child, according to the set transition duration.


```pony
fun box set_interpolate_size(
  interpolate_size_pony: Bool val)
: None val
```
#### Parameters

*   interpolate_size_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_transition_duration
<span class="source-link">[[Source]](src/gtk3/GtkStack.md#L136)</span>


Sets the duration that transitions between pages in @stack
will take.


```pony
fun box set_transition_duration(
  duration_pony: U32 val)
: None val
```
#### Parameters

*   duration_pony: [U32](builtin-U32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_vhomogeneous
<span class="source-link">[[Source]](src/gtk3/GtkStack.md#L147)</span>


Sets the #GtkStack to be vertically homogeneous or not.
If it is homogeneous, the #GtkStack will request the same
height for all its children. If it isn't, the stack
may change height when a different child becomes visible.


```pony
fun box set_vhomogeneous(
  vhomogeneous_pony: Bool val)
: None val
```
#### Parameters

*   vhomogeneous_pony: [Bool](builtin-Bool.md) val

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

