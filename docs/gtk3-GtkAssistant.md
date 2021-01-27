# GtkAssistant
<span class="source-link">[[Source]](src/gtk3/GtkAssistant.md#L6)</span>

A #GtkAssistant is a widget used to represent a generally complex
operation splitted in several steps, guiding the user through its
pages and controlling the page flow to collect the necessary data.

The design of GtkAssistant is that it controls what buttons to show
and to make sensitive, based on what it knows about the page sequence
and the [type][GtkAssistantPageType] of each page,
in addition to state information like the page
[completion][gtk-assistant-set-page-complete]
and [committed][gtk-assistant-commit] status.

If you have a case that doesn’t quite fit in #GtkAssistants way of
handling buttons, you can use the #GTK_ASSISTANT_PAGE_CUSTOM page
type and handle buttons yourself.

# GtkAssistant as GtkBuildable

The GtkAssistant implementation of the #GtkBuildable interface
exposes the @action_area as internal children with the name
“action_area”.

To add pages to an assistant in #GtkBuilder, simply add it as a
child to the GtkAssistant object, and set its child properties
as necessary.

# CSS nodes

GtkAssistant has a single CSS node with the name assistant.


```pony
class ref GtkAssistant is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkAssistant.md#L40)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkAssistant ref^
```

#### Returns

* [GtkAssistant](gtk3-GtkAssistant.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkAssistant.md#L43)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkAssistant ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkAssistant](gtk3-GtkAssistant.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkAssistant.md#L47)</span>


```pony
new ref create()
: GtkAssistant ref^
```

#### Returns

* [GtkAssistant](gtk3-GtkAssistant.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkAssistant.md#L37)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkAssistant.md#L39)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### commit
<span class="source-link">[[Source]](src/gtk3/GtkAssistant.md#L59)</span>


Erases the visited page history so the back button is not
shown on the current page, and removes the cancel button
from subsequent pages.

Use this when the information provided up to the current
page is hereafter deemed permanent and cannot be modified
or undone. For example, showing a progress page to track
a long-running, unreversible operation after the user has
clicked apply on a confirmation page.


```pony
fun box commit()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### get_current_page
<span class="source-link">[[Source]](src/gtk3/GtkAssistant.md#L73)</span>


Returns the page number of the current page.


```pony
fun box get_current_page()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### get_n_pages
<span class="source-link">[[Source]](src/gtk3/GtkAssistant.md#L79)</span>


Returns the number of pages in the @assistant


```pony
fun box get_n_pages()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### next_page
<span class="source-link">[[Source]](src/gtk3/GtkAssistant.md#L129)</span>


Navigate to the next page.

It is a programming error to call this function when
there is no next page.

This function is for use when creating pages of the
#GTK_ASSISTANT_PAGE_CUSTOM type.


```pony
fun box next_page()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### previous_page
<span class="source-link">[[Source]](src/gtk3/GtkAssistant.md#L145)</span>


Navigate to the previous visited page.

It is a programming error to call this function when
no previous page is available.

This function is for use when creating pages of the
#GTK_ASSISTANT_PAGE_CUSTOM type.


```pony
fun box previous_page()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### remove_page
<span class="source-link">[[Source]](src/gtk3/GtkAssistant.md#L161)</span>


Removes the @page_num’s page from @assistant.


```pony
fun box remove_page(
  page_num_pony: I32 val)
: None val
```
#### Parameters

*   page_num_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_current_page
<span class="source-link">[[Source]](src/gtk3/GtkAssistant.md#L167)</span>


Switches the page to @page_num.

Note that this will only be necessary in custom buttons,
as the @assistant flow can be set with
gtk_assistant_set_forward_page_func().


```pony
fun box set_current_page(
  page_num_pony: I32 val)
: None val
```
#### Parameters

*   page_num_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### update_buttons_state
<span class="source-link">[[Source]](src/gtk3/GtkAssistant.md#L211)</span>


Forces @assistant to recompute the buttons state.

GTK+ automatically takes care of this in most situations,
e.g. when the user goes to a different page, or when the
visibility or completeness of a page changes.

One situation where it can be necessary to call this
function is when changing a value on the current page
affects the future page flow of the assistant.


```pony
fun box update_buttons_state()
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

