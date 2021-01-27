# GtkClipboard
<span class="source-link">[[Source]](src/gtk3/GtkClipboard.md#L6)</span>
```pony
class ref GtkClipboard is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkClipboard.md#L10)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkClipboard ref^
```

#### Returns

* [GtkClipboard](gtk3-GtkClipboard.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkClipboard.md#L13)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkClipboard ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkClipboard](gtk3-GtkClipboard.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkClipboard.md#L7)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkClipboard.md#L9)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### clear
<span class="source-link">[[Source]](src/gtk3/GtkClipboard.md#L19)</span>


Clears the contents of the clipboard. Generally this should only
be called between the time you call gtk_clipboard_set_with_owner()
or gtk_clipboard_set_with_data(),
and when the @clear_func you supplied is called. Otherwise, the
clipboard may be owned by someone else.


```pony
fun box clear()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### store
<span class="source-link">[[Source]](src/gtk3/GtkClipboard.md#L108)</span>


Stores the current clipboard data somewhere so that it will stay
around after the application has quit.


```pony
fun box store()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### wait_is_image_available
<span class="source-link">[[Source]](src/gtk3/GtkClipboard.md#L155)</span>


Test to see if there is an image available to be pasted
This is done by requesting the TARGETS atom and checking
if it contains any of the supported image targets. This function
waits for the data to be received using the main loop, so events,
timeouts, etc, may be dispatched during the wait.

This function is a little faster than calling
gtk_clipboard_wait_for_image() since it doesn’t need to retrieve
the actual image data.


```pony
fun box wait_is_image_available()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### wait_is_text_available
<span class="source-link">[[Source]](src/gtk3/GtkClipboard.md#L177)</span>


Test to see if there is text available to be pasted
This is done by requesting the TARGETS atom and checking
if it contains any of the supported text targets. This function
waits for the data to be received using the main loop, so events,
timeouts, etc, may be dispatched during the wait.

This function is a little faster than calling
gtk_clipboard_wait_for_text() since it doesn’t need to retrieve
the actual text.


```pony
fun box wait_is_text_available()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### wait_is_uris_available
<span class="source-link">[[Source]](src/gtk3/GtkClipboard.md#L191)</span>


Test to see if there is a list of URIs available to be pasted
This is done by requesting the TARGETS atom and checking
if it contains the URI targets. This function
waits for the data to be received using the main loop, so events,
timeouts, etc, may be dispatched during the wait.

This function is a little faster than calling
gtk_clipboard_wait_for_uris() since it doesn’t need to retrieve
the actual URI data.


```pony
fun box wait_is_uris_available()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

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

