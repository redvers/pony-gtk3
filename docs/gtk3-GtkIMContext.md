# GtkIMContext
<span class="source-link">[[Source]](src/gtk3/GtkIMContext.md#L6)</span>
```pony
class ref GtkIMContext is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkIMContext.md#L10)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkIMContext ref^
```

#### Returns

* [GtkIMContext](gtk3-GtkIMContext.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkIMContext.md#L13)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkIMContext ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkIMContext](gtk3-GtkIMContext.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkIMContext.md#L7)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkIMContext.md#L9)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### delete_surrounding
<span class="source-link">[[Source]](src/gtk3/GtkIMContext.md#L19)</span>


Asks the widget that the input context is attached to to delete
characters around the cursor position by emitting the
GtkIMContext::delete_surrounding signal. Note that @offset and @n_chars
are in characters not in bytes which differs from the usage other
places in #GtkIMContext.

In order to use this function, you should first call
gtk_im_context_get_surrounding() to get the current context, and
call this function immediately afterwards to make sure that you
know what you are deleting. You should also account for the fact
that even if the signal was handled, the input context might not
have deleted all the characters that were requested to be deleted.

This function is used by an input method that wants to make
subsitutions in the existing text in response to new input. It is
not useful for applications.


```pony
fun box delete_surrounding(
  offset_pony: I32 val,
  n_chars_pony: I32 val)
: Bool val
```
#### Parameters

*   offset_pony: [I32](builtin-I32.md) val
*   n_chars_pony: [I32](builtin-I32.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

### focus_in
<span class="source-link">[[Source]](src/gtk3/GtkIMContext.md#L44)</span>


Notify the input method that the widget to which this
input context corresponds has gained focus. The input method
may, for example, change the displayed feedback to reflect
this change.


```pony
fun box focus_in()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### focus_out
<span class="source-link">[[Source]](src/gtk3/GtkIMContext.md#L53)</span>


Notify the input method that the widget to which this
input context corresponds has lost focus. The input method
may, for example, change the displayed feedback or reset the contexts
state to reflect this change.


```pony
fun box focus_out()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### reset
<span class="source-link">[[Source]](src/gtk3/GtkIMContext.md#L73)</span>


Notify the input method that a change such as a change in cursor
position has been made. This will typically cause the input
method to clear the preedit state.


```pony
fun box reset()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### set_use_preedit
<span class="source-link">[[Source]](src/gtk3/GtkIMContext.md#L93)</span>


Sets whether the IM context should use the preedit string
to display feedback. If @use_preedit is FALSE (default
is TRUE), then the IM context may use some other method to display
feedback, such as displaying it in a child of the root window.


```pony
fun box set_use_preedit(
  use_preedit_pony: Bool val)
: None val
```
#### Parameters

*   use_preedit_pony: [Bool](builtin-Bool.md) val

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

