# GtkPrintOperation
<span class="source-link">[[Source]](src/gtk3/GtkPrintOperation.md#L6)</span>
```pony
class ref GtkPrintOperation is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkPrintOperation.md#L10)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkPrintOperation ref^
```

#### Returns

* [GtkPrintOperation](gtk3-GtkPrintOperation.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkPrintOperation.md#L13)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkPrintOperation ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkPrintOperation](gtk3-GtkPrintOperation.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkPrintOperation.md#L17)</span>


```pony
new ref create()
: GtkPrintOperation ref^
```

#### Returns

* [GtkPrintOperation](gtk3-GtkPrintOperation.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkPrintOperation.md#L7)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkPrintOperation.md#L9)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### cancel
<span class="source-link">[[Source]](src/gtk3/GtkPrintOperation.md#L21)</span>


Cancels a running print operation. This function may
be called from a #GtkPrintOperation::begin-print,
#GtkPrintOperation::paginate or #GtkPrintOperation::draw-page
signal handler to stop the currently running print
operation.


```pony
fun box cancel()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### draw_page_finish
<span class="source-link">[[Source]](src/gtk3/GtkPrintOperation.md#L31)</span>


Signalize that drawing of particular page is complete.

It is called after completion of page drawing (e.g. drawing in another
thread).
If gtk_print_operation_set_defer_drawing() was called before, then this function
has to be called by application. In another case it is called by the library
itself.


```pony
fun box draw_page_finish()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### get_embed_page_setup
<span class="source-link">[[Source]](src/gtk3/GtkPrintOperation.md#L50)</span>


Gets the value of #GtkPrintOperation:embed-page-setup property.


```pony
fun box get_embed_page_setup()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_error
<span class="source-link">[[Source]](src/gtk3/GtkPrintOperation.md#L56)</span>


Call this when the result of a print operation is
%GTK_PRINT_OPERATION_RESULT_ERROR, either as returned by
gtk_print_operation_run(), or in the #GtkPrintOperation::done signal
handler. The returned #GError will contain more details on what went wrong.


```pony
fun box get_error()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### get_has_selection
<span class="source-link">[[Source]](src/gtk3/GtkPrintOperation.md#L65)</span>


Gets the value of #GtkPrintOperation:has-selection property.


```pony
fun box get_has_selection()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_n_pages_to_print
<span class="source-link">[[Source]](src/gtk3/GtkPrintOperation.md#L71)</span>


Returns the number of pages that will be printed.

Note that this value is set during print preparation phase
(%GTK_PRINT_STATUS_PREPARING), so this function should never be
called before the data generation phase (%GTK_PRINT_STATUS_GENERATING_DATA).
You can connect to the #GtkPrintOperation::status-changed signal
and call gtk_print_operation_get_n_pages_to_print() when
print status is %GTK_PRINT_STATUS_GENERATING_DATA.
This is typically used to track the progress of print operation.


```pony
fun box get_n_pages_to_print()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### get_status_string
<span class="source-link">[[Source]](src/gtk3/GtkPrintOperation.md#L99)</span>


Returns a string representation of the status of the
print operation. The string is translated and suitable
for displaying the print status e.g. in a #GtkStatusbar.

Use gtk_print_operation_get_status() to obtain a status
value that is suitable for programmatic use.


```pony
fun box get_status_string()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_support_selection
<span class="source-link">[[Source]](src/gtk3/GtkPrintOperation.md#L112)</span>


Gets the value of #GtkPrintOperation:support-selection property.


```pony
fun box get_support_selection()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### is_finished
<span class="source-link">[[Source]](src/gtk3/GtkPrintOperation.md#L118)</span>


A convenience function to find out if the print operation
is finished, either successfully (%GTK_PRINT_STATUS_FINISHED)
or unsuccessfully (%GTK_PRINT_STATUS_FINISHED_ABORTED).

Note: when you enable print status tracking the print operation
can be in a non-finished state even after done has been called, as
the operation status then tracks the print job status on the printer.


```pony
fun box is_finished()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### set_allow_async
<span class="source-link">[[Source]](src/gtk3/GtkPrintOperation.md#L137)</span>


Sets whether the gtk_print_operation_run() may return
before the print operation is completed. Note that
some platforms may not allow asynchronous operation.


```pony
fun box set_allow_async(
  allow_async_pony: Bool val)
: None val
```
#### Parameters

*   allow_async_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_current_page
<span class="source-link">[[Source]](src/gtk3/GtkPrintOperation.md#L145)</span>


Sets the current page.

If this is called before gtk_print_operation_run(),
the user will be able to select to print only the current page.

Note that this only makes sense for pre-paginated documents.


```pony
fun box set_current_page(
  current_page_pony: I32 val)
: None val
```
#### Parameters

*   current_page_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_defer_drawing
<span class="source-link">[[Source]](src/gtk3/GtkPrintOperation.md#L164)</span>


Sets up the #GtkPrintOperation to wait for calling of
gtk_print_operation_draw_page_finish() from application. It can
be used for drawing page in another thread.

This function must be called in the callback of “draw-page” signal.


```pony
fun box set_defer_drawing()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### set_embed_page_setup
<span class="source-link">[[Source]](src/gtk3/GtkPrintOperation.md#L174)</span>


Embed page size combo box and orientation combo box into page setup page.
Selected page setup is stored as default page setup in #GtkPrintOperation.


```pony
fun box set_embed_page_setup(
  embed_pony: Bool val)
: None val
```
#### Parameters

*   embed_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_has_selection
<span class="source-link">[[Source]](src/gtk3/GtkPrintOperation.md#L185)</span>


Sets whether there is a selection to print.

Application has to set number of pages to which the selection
will draw by gtk_print_operation_set_n_pages() in a callback of
#GtkPrintOperation::begin-print.


```pony
fun box set_has_selection(
  has_selection_pony: Bool val)
: None val
```
#### Parameters

*   has_selection_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_n_pages
<span class="source-link">[[Source]](src/gtk3/GtkPrintOperation.md#L199)</span>


Sets the number of pages in the document.

This must be set to a positive number
before the rendering starts. It may be set in a
#GtkPrintOperation::begin-print signal hander.

Note that the page numbers passed to the
#GtkPrintOperation::request-page-setup
and #GtkPrintOperation::draw-page signals are 0-based, i.e. if
the user chooses to print all pages, the last ::draw-page signal
will be for page @n_pages - 1.


```pony
fun box set_n_pages(
  n_pages_pony: I32 val)
: None val
```
#### Parameters

*   n_pages_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_show_progress
<span class="source-link">[[Source]](src/gtk3/GtkPrintOperation.md#L219)</span>


If @show_progress is %TRUE, the print operation will show a
progress dialog during the print operation.


```pony
fun box set_show_progress(
  show_progress_pony: Bool val)
: None val
```
#### Parameters

*   show_progress_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_support_selection
<span class="source-link">[[Source]](src/gtk3/GtkPrintOperation.md#L226)</span>


Sets whether selection is supported by #GtkPrintOperation.


```pony
fun box set_support_selection(
  support_selection_pony: Bool val)
: None val
```
#### Parameters

*   support_selection_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_track_print_status
<span class="source-link">[[Source]](src/gtk3/GtkPrintOperation.md#L232)</span>


If track_status is %TRUE, the print operation will try to continue report
on the status of the print job in the printer queues and printer. This
can allow your application to show things like “out of paper” issues,
and when the print job actually reaches the printer.

This function is often implemented using some form of polling, so it should
not be enabled unless needed.


```pony
fun box set_track_print_status(
  track_status_pony: Bool val)
: None val
```
#### Parameters

*   track_status_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_use_full_page
<span class="source-link">[[Source]](src/gtk3/GtkPrintOperation.md#L248)</span>


If @full_page is %TRUE, the transformation for the cairo context
obtained from #GtkPrintContext puts the origin at the top left
corner of the page (which may not be the top left corner of the
sheet, depending on page orientation and the number of pages per
sheet). Otherwise, the origin is at the top left corner of the
imageable area (i.e. inside the margins).


```pony
fun box set_use_full_page(
  full_page_pony: Bool val)
: None val
```
#### Parameters

*   full_page_pony: [Bool](builtin-Bool.md) val

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

