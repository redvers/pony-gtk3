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
class val GtkAssistant is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkAssistant.md#L41)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkAssistant val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkAssistant](gtk3-GtkAssistant.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkAssistant.md#L44)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkAssistant val^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkAssistant](gtk3-GtkAssistant.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkAssistant.md#L47)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkAssistant val^
```

#### Returns

* [GtkAssistant](gtk3-GtkAssistant.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkAssistant.md#L51)</span>


```pony
new val create()
: GtkAssistant val^
```

#### Returns

* [GtkAssistant](gtk3-GtkAssistant.md) val^

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

### add_action_widget
<span class="source-link">[[Source]](src/gtk3/GtkAssistant.md#L55)</span>


Adds a widget to the action area of a #GtkAssistant.


```pony
fun box add_action_widget(
  child_pony: GtkWidget val)
: None val
```
#### Parameters

*   child_pony: [GtkWidget](gtk3-GtkWidget.md) val

#### Returns

* [None](builtin-None.md) val

---

### append_page
<span class="source-link">[[Source]](src/gtk3/GtkAssistant.md#L61)</span>


Appends a page to the @assistant.


```pony
fun box append_page(
  page_pony: GtkWidget val)
: I32 val
```
#### Parameters

*   page_pony: [GtkWidget](gtk3-GtkWidget.md) val

#### Returns

* [I32](builtin-I32.md) val

---

### commit
<span class="source-link">[[Source]](src/gtk3/GtkAssistant.md#L67)</span>


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
<span class="source-link">[[Source]](src/gtk3/GtkAssistant.md#L81)</span>


Returns the page number of the current page.


```pony
fun box get_current_page()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### get_n_pages
<span class="source-link">[[Source]](src/gtk3/GtkAssistant.md#L87)</span>


Returns the number of pages in the @assistant


```pony
fun box get_n_pages()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### get_page_complete
<span class="source-link">[[Source]](src/gtk3/GtkAssistant.md#L99)</span>


Gets whether @page is complete.


```pony
fun box get_page_complete(
  page_pony: GtkWidget val)
: Bool val
```
#### Parameters

*   page_pony: [GtkWidget](gtk3-GtkWidget.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_page_has_padding
<span class="source-link">[[Source]](src/gtk3/GtkAssistant.md#L105)</span>


Gets whether page has padding.


```pony
fun box get_page_has_padding(
  page_pony: GtkWidget val)
: Bool val
```
#### Parameters

*   page_pony: [GtkWidget](gtk3-GtkWidget.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_page_header_image
<span class="source-link">[[Source]](src/gtk3/GtkAssistant.md#L111)</span>


    Gets the header image for @page.

    {:argctype, "GdkPixbuf*"}
{:argname, "rv"}
{:argtype, "GdkPixbuf.Pixbuf"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_page_header_image()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_page_side_image
<span class="source-link">[[Source]](src/gtk3/GtkAssistant.md#L123)</span>


    Gets the side image for @page.

    {:argctype, "GdkPixbuf*"}
{:argname, "rv"}
{:argtype, "GdkPixbuf.Pixbuf"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_page_side_image()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### get_page_title
<span class="source-link">[[Source]](src/gtk3/GtkAssistant.md#L135)</span>


Gets the title for @page.


```pony
fun box get_page_title(
  page_pony: GtkWidget val)
: String val
```
#### Parameters

*   page_pony: [GtkWidget](gtk3-GtkWidget.md) val

#### Returns

* [String](builtin-String.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_page_type
<span class="source-link">[[Source]](src/gtk3/GtkAssistant.md#L143)</span>


    Gets the page type of @page.

    {:argctype, "GtkAssistantPageType"}
{:argname, "rv"}
{:argtype, "AssistantPageType"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_page_type()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### insert_page
<span class="source-link">[[Source]](src/gtk3/GtkAssistant.md#L155)</span>


Inserts a page in the @assistant at a given position.


```pony
fun box insert_page(
  page_pony: GtkWidget val,
  position_pony: I32 val)
: I32 val
```
#### Parameters

*   page_pony: [GtkWidget](gtk3-GtkWidget.md) val
*   position_pony: [I32](builtin-I32.md) val

#### Returns

* [I32](builtin-I32.md) val

---

### next_page
<span class="source-link">[[Source]](src/gtk3/GtkAssistant.md#L161)</span>


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

### prepend_page
<span class="source-link">[[Source]](src/gtk3/GtkAssistant.md#L173)</span>


Prepends a page to the @assistant.


```pony
fun box prepend_page(
  page_pony: GtkWidget val)
: I32 val
```
#### Parameters

*   page_pony: [GtkWidget](gtk3-GtkWidget.md) val

#### Returns

* [I32](builtin-I32.md) val

---

### previous_page
<span class="source-link">[[Source]](src/gtk3/GtkAssistant.md#L179)</span>


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

### remove_action_widget
<span class="source-link">[[Source]](src/gtk3/GtkAssistant.md#L191)</span>


Removes a widget from the action area of a #GtkAssistant.


```pony
fun box remove_action_widget(
  child_pony: GtkWidget val)
: None val
```
#### Parameters

*   child_pony: [GtkWidget](gtk3-GtkWidget.md) val

#### Returns

* [None](builtin-None.md) val

---

### remove_page
<span class="source-link">[[Source]](src/gtk3/GtkAssistant.md#L197)</span>


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
<span class="source-link">[[Source]](src/gtk3/GtkAssistant.md#L203)</span>


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

### pony_NOT_IMPLEMENTED_YET_set_forward_page_func
<span class="source-link">[[Source]](src/gtk3/GtkAssistant.md#L213)</span>


    Sets the page forwarding function to be @page_func.

This function will be used to determine what will be
the next page when the user presses the forward button.
Setting @page_func to %NULL will make the assistant to
use the default forward function, which just goes to the
next visible page.

    {:doh, %{argctype: "GtkAssistantPageFunc", argname: "page_func", argtype: "AssistantPageFunc", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "data", argtype: "gpointer", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GDestroyNotify", argname: "destroy", argtype: "GLib.DestroyNotify", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_forward_page_func()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### set_page_complete
<span class="source-link">[[Source]](src/gtk3/GtkAssistant.md#L229)</span>


Sets whether @page contents are complete.

This will make @assistant update the buttons state
to be able to continue the task.


```pony
fun box set_page_complete(
  page_pony: GtkWidget val,
  complete_pony: Bool val)
: None val
```
#### Parameters

*   page_pony: [GtkWidget](gtk3-GtkWidget.md) val
*   complete_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_page_has_padding
<span class="source-link">[[Source]](src/gtk3/GtkAssistant.md#L238)</span>


Sets whether the assistant is adding padding around
the page.


```pony
fun box set_page_has_padding(
  page_pony: GtkWidget val,
  has_padding_pony: Bool val)
: None val
```
#### Parameters

*   page_pony: [GtkWidget](gtk3-GtkWidget.md) val
*   has_padding_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_page_header_image
<span class="source-link">[[Source]](src/gtk3/GtkAssistant.md#L245)</span>


    Sets a header image for @page.

    {:doh, %{argctype: "GdkPixbuf*", argname: "pixbuf", argtype: "GdkPixbuf.Pixbuf", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_page_header_image()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_page_side_image
<span class="source-link">[[Source]](src/gtk3/GtkAssistant.md#L253)</span>


    Sets a side image for @page.

This image used to be displayed in the side area of the assistant
when @page is the current page.

    {:doh, %{argctype: "GdkPixbuf*", argname: "pixbuf", argtype: "GdkPixbuf.Pixbuf", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_page_side_image()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_page_title
<span class="source-link">[[Source]](src/gtk3/GtkAssistant.md#L264)</span>


    Sets a title for @page.

The title is displayed in the header area of the assistant
when @page is the current page.

    {:doh, %{argctype: "const gchar*", argname: "title", argtype: "utf8", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_page_title()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_page_type
<span class="source-link">[[Source]](src/gtk3/GtkAssistant.md#L275)</span>


    Sets the page type for @page.

The page type determines the page behavior in the @assistant.

    {:doh, %{argctype: "GtkAssistantPageType", argname: "gtype", argtype: "AssistantPageType", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_page_type()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### update_buttons_state
<span class="source-link">[[Source]](src/gtk3/GtkAssistant.md#L285)</span>


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

