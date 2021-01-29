# GtkTextView
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L6)</span>

You may wish to begin by reading the
[text widget conceptual overview][TextWidget]
which gives an overview of all the objects and data
types related to the text widget and how they work together.

# CSS nodes

|[<!-- language="plain" -->
textview.view
├── border.top
├── border.left
├── text
│   ╰── [selection]
├── border.right
├── border.bottom
╰── [window.popup]
]|

GtkTextView has a main css node with name textview and style class .view,
and subnodes for each of the border windows, and the main text area,
with names border and text, respectively. The border nodes each get
one of the style classes .left, .right, .top or .bottom.

A node representing the selection will appear below the text node.

If a context menu is opened, the window node will appear as a subnode
of the main node.


```pony
class val GtkTextView is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L40)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkTextView val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkTextView](gtk3-GtkTextView.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L43)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkTextView val^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkTextView](gtk3-GtkTextView.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L46)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkTextView val^
```

#### Returns

* [GtkTextView](gtk3-GtkTextView.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L50)</span>


```pony
new val create()
: GtkTextView val^
```

#### Returns

* [GtkTextView](gtk3-GtkTextView.md) val^

---

### new_with_buffer
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L53)</span>


```pony
new val new_with_buffer(
  buffer_pony: GtkTextBuffer val)
: GtkTextView val^
```
#### Parameters

*   buffer_pony: [GtkTextBuffer](gtk3-GtkTextBuffer.md) val

#### Returns

* [GtkTextView](gtk3-GtkTextView.md) val^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L36)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L38)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### pony_NOT_IMPLEMENTED_YET_add_child_at_anchor
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L57)</span>


    Adds a child widget in the text buffer, at the given @anchor.

    {:doh, %{argctype: "GtkTextChildAnchor*", argname: "anchor", argtype: "TextChildAnchor", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_add_child_at_anchor()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_add_child_in_window
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L65)</span>


    Adds a child at fixed coordinates in one of the text widget's
windows.

The window must have nonzero size (see
gtk_text_view_set_border_window_size()). Note that the child
coordinates are given relative to scrolling. When
placing a child in #GTK_TEXT_WINDOW_WIDGET, scrolling is
irrelevant, the child floats above all scrollable areas. But when
placing a child in one of the scrollable windows (border windows or
text window) it will move with the scrolling as needed.

    {:doh, %{argctype: "GtkTextWindowType", argname: "which_window", argtype: "TextWindowType", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_add_child_in_window()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_backward_display_line
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L82)</span>


    Moves the given @iter backward by one display (wrapped) line.
A display line is different from a paragraph. Paragraphs are
separated by newlines or other paragraph separator characters.
Display lines are created by line-wrapping a paragraph. If
wrapping is turned off, display lines and paragraphs will be the
same. Display lines are divided differently for each view, since
they depend on the view’s width; paragraphs are the same in all
views, since they depend on the contents of the #GtkTextBuffer.

    {:doh, %{argctype: "GtkTextIter*", argname: "iter", argtype: "TextIter", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_backward_display_line()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_backward_display_line_start
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L97)</span>


    Moves the given @iter backward to the next display line start.
A display line is different from a paragraph. Paragraphs are
separated by newlines or other paragraph separator characters.
Display lines are created by line-wrapping a paragraph. If
wrapping is turned off, display lines and paragraphs will be the
same. Display lines are divided differently for each view, since
they depend on the view’s width; paragraphs are the same in all
views, since they depend on the contents of the #GtkTextBuffer.

    {:doh, %{argctype: "GtkTextIter*", argname: "iter", argtype: "TextIter", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_backward_display_line_start()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_buffer_to_window_coords
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L112)</span>


    Converts coordinate (@buffer_x, @buffer_y) to coordinates for the window
@win, and stores the result in (@window_x, @window_y).

Note that you can’t convert coordinates for a nonexisting window (see
gtk_text_view_set_border_window_size()).

    {:doh, %{argctype: "GtkTextWindowType", argname: "win", argtype: "TextWindowType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gint*", argname: "window_x", argtype: "gint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gint*", argname: "window_y", argtype: "gint", paramtype: :param, txo: "full"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_buffer_to_window_coords()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_forward_display_line
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L126)</span>


    Moves the given @iter forward by one display (wrapped) line.
A display line is different from a paragraph. Paragraphs are
separated by newlines or other paragraph separator characters.
Display lines are created by line-wrapping a paragraph. If
wrapping is turned off, display lines and paragraphs will be the
same. Display lines are divided differently for each view, since
they depend on the view’s width; paragraphs are the same in all
views, since they depend on the contents of the #GtkTextBuffer.

    {:doh, %{argctype: "GtkTextIter*", argname: "iter", argtype: "TextIter", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_forward_display_line()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_forward_display_line_end
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L141)</span>


    Moves the given @iter forward to the next display line end.
A display line is different from a paragraph. Paragraphs are
separated by newlines or other paragraph separator characters.
Display lines are created by line-wrapping a paragraph. If
wrapping is turned off, display lines and paragraphs will be the
same. Display lines are divided differently for each view, since
they depend on the view’s width; paragraphs are the same in all
views, since they depend on the contents of the #GtkTextBuffer.

    {:doh, %{argctype: "GtkTextIter*", argname: "iter", argtype: "TextIter", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_forward_display_line_end()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### get_accepts_tab
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L156)</span>


Returns whether pressing the Tab key inserts a tab characters.
gtk_text_view_set_accepts_tab().


```pony
fun box get_accepts_tab()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_border_window_size
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L163)</span>


    Gets the width of the specified border window. See
gtk_text_view_set_border_window_size().

    {:doh, %{argctype: "GtkTextWindowType", argname: "gtype", argtype: "TextWindowType", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_border_window_size()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### get_bottom_margin
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L172)</span>


Gets the bottom margin for text in the @text_view.


```pony
fun box get_bottom_margin()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_buffer
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L178)</span>


    Returns the #GtkTextBuffer being displayed by this text view.
The reference count on the buffer is not incremented; the caller
of this function won’t own a new reference.

    {:argctype, "GtkTextBuffer*"}
{:argname, "rv"}
{:argtype, "TextBuffer"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_buffer()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_cursor_locations
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L192)</span>


    Given an @iter within a text layout, determine the positions of the
strong and weak cursors if the insertion point is at that
iterator. The position of each cursor is stored as a zero-width
rectangle. The strong cursor location is the location where
characters of the directionality equal to the base direction of the
paragraph are inserted.  The weak cursor location is the location
where characters of the directionality opposite to the base
direction of the paragraph are inserted.

If @iter is %NULL, the actual cursor position is used.

Note that if @iter happens to be the actual cursor position, and
there is currently an IM preedit sequence being entered, the
returned locations will be adjusted to account for the preedit
cursor’s offset within the preedit sequence.

The rectangle position is in buffer coordinates; use
gtk_text_view_buffer_to_window_coords() to convert these
coordinates to coordinates for one of the windows in the text view.

    {:doh, %{argctype: "const GtkTextIter*", argname: "iter", argtype: "TextIter", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkRectangle*", argname: "strong", argtype: "Gdk.Rectangle", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkRectangle*", argname: "weak", argtype: "Gdk.Rectangle", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_cursor_locations()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### get_cursor_visible
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L220)</span>


Find out whether the cursor should be displayed.


```pony
fun box get_cursor_visible()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_default_attributes
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L226)</span>


    Obtains a copy of the default text attributes. These are the
attributes used for text unless a tag overrides them.
You’d typically pass the default attributes in to
gtk_text_iter_get_attributes() in order to get the
attributes in effect at a given text position.

The return value is a copy owned by the caller of this function,
and should be freed with gtk_text_attributes_unref().

    {:argctype, "GtkTextAttributes*"}
{:argname, "rv"}
{:argtype, "TextAttributes"}
{:paramtype, :param}
{:txo, "full"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_default_attributes()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### get_editable
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L245)</span>


Returns the default editability of the #GtkTextView. Tags in the
buffer may override this setting for some ranges of text.


```pony
fun box get_editable()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_hadjustment
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L252)</span>


    Gets the horizontal-scrolling #GtkAdjustment.

    {:argctype, "GtkAdjustment*"}
{:argname, "rv"}
{:argtype, "Adjustment"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_hadjustment()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### get_indent
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L264)</span>


Gets the default indentation of paragraphs in @text_view.
Tags in the view’s buffer may override the default.
The indentation may be negative.


```pony
fun box get_indent()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_input_hints
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L272)</span>


    Gets the value of the #GtkTextView:input-hints property.

    {:argctype, "GtkInputHints"}
{:argname, "rv"}
{:argtype, "InputHints"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_input_hints()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_input_purpose
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L284)</span>


    Gets the value of the #GtkTextView:input-purpose property.

    {:argctype, "GtkInputPurpose"}
{:argname, "rv"}
{:argtype, "InputPurpose"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_input_purpose()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_iter_at_location
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L296)</span>


    Retrieves the iterator at buffer coordinates @x and @y. Buffer
coordinates are coordinates for the entire buffer, not just the
currently-displayed portion.  If you have coordinates from an
event, you have to convert those to buffer coordinates with
gtk_text_view_window_to_buffer_coords().

    {:doh, %{argctype: "GtkTextIter*", argname: "iter", argtype: "TextIter", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_iter_at_location()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_iter_at_position
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L308)</span>


    Retrieves the iterator pointing to the character at buffer
coordinates @x and @y. Buffer coordinates are coordinates for
the entire buffer, not just the currently-displayed portion.
If you have coordinates from an event, you have to convert
those to buffer coordinates with
gtk_text_view_window_to_buffer_coords().

Note that this is different from gtk_text_view_get_iter_at_location(),
which returns cursor locations, i.e. positions between
characters.

    {:doh, %{argctype: "GtkTextIter*", argname: "iter", argtype: "TextIter", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gint*", argname: "trailing", argtype: "gint", paramtype: :param, txo: "full"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_iter_at_position()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_iter_location
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L326)</span>


    Gets a rectangle which roughly contains the character at @iter.
The rectangle position is in buffer coordinates; use
gtk_text_view_buffer_to_window_coords() to convert these
coordinates to coordinates for one of the windows in the text view.

    {:doh, %{argctype: "const GtkTextIter*", argname: "iter", argtype: "TextIter", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkRectangle*", argname: "location", argtype: "Gdk.Rectangle", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_iter_location()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_justification
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L338)</span>


    Gets the default justification of paragraphs in @text_view.
Tags in the buffer may override the default.

    {:argctype, "GtkJustification"}
{:argname, "rv"}
{:argtype, "Justification"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_justification()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### get_left_margin
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L351)</span>


Gets the default left margin size of paragraphs in the @text_view.
Tags in the buffer may override the default.


```pony
fun box get_left_margin()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_line_at_y
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L358)</span>


    Gets the #GtkTextIter at the start of the line containing
the coordinate @y. @y is in buffer coordinates, convert from
window coordinates with gtk_text_view_window_to_buffer_coords().
If non-%NULL, @line_top will be filled with the coordinate of the top
edge of the line.

    {:doh, %{argctype: "GtkTextIter*", argname: "target_iter", argtype: "TextIter", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gint*", argname: "line_top", argtype: "gint", paramtype: :param, txo: "full"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_line_at_y()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_line_yrange
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L371)</span>


    Gets the y coordinate of the top of the line containing @iter,
and the height of the line. The coordinate is a buffer coordinate;
convert to window coordinates with gtk_text_view_buffer_to_window_coords().

    {:doh, %{argctype: "const GtkTextIter*", argname: "iter", argtype: "TextIter", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gint*", argname: "y", argtype: "gint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gint*", argname: "height", argtype: "gint", paramtype: :param, txo: "full"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_line_yrange()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### get_monospace
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L383)</span>


Gets the value of the #GtkTextView:monospace property.


```pony
fun box get_monospace()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_overwrite
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L389)</span>


Returns whether the #GtkTextView is in overwrite mode or not.


```pony
fun box get_overwrite()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_pixels_above_lines
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L395)</span>


Gets the default number of pixels to put above paragraphs.
Adding this function with gtk_text_view_get_pixels_below_lines()
is equal to the line space between each paragraph.


```pony
fun box get_pixels_above_lines()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### get_pixels_below_lines
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L403)</span>


Gets the value set by gtk_text_view_set_pixels_below_lines().

The line space is the sum of the value returned by this function and the
value returned by gtk_text_view_get_pixels_above_lines().


```pony
fun box get_pixels_below_lines()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### get_pixels_inside_wrap
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L412)</span>


Gets the value set by gtk_text_view_set_pixels_inside_wrap().


```pony
fun box get_pixels_inside_wrap()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### get_right_margin
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L418)</span>


Gets the default right margin for text in @text_view. Tags
in the buffer may override the default.


```pony
fun box get_right_margin()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_tabs
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L425)</span>


    Gets the default tabs for @text_view. Tags in the buffer may
override the defaults. The returned array will be %NULL if
“standard” (8-space) tabs are used. Free the return value
with pango_tab_array_free().

    {:argctype, "PangoTabArray*"}
{:argname, "rv"}
{:argtype, "Pango.TabArray"}
{:paramtype, :param}
{:txo, "full"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_tabs()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### get_top_margin
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L440)</span>


Gets the top margin for text in the @text_view.


```pony
fun box get_top_margin()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_vadjustment
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L446)</span>


    Gets the vertical-scrolling #GtkAdjustment.

    {:argctype, "GtkAdjustment*"}
{:argname, "rv"}
{:argtype, "Adjustment"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_vadjustment()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_visible_rect
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L458)</span>


    Fills @visible_rect with the currently-visible
region of the buffer, in buffer coordinates. Convert to window coordinates
with gtk_text_view_buffer_to_window_coords().

    {:doh, %{argctype: "GdkRectangle*", argname: "visible_rect", argtype: "Gdk.Rectangle", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_visible_rect()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_window
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L468)</span>


    Retrieves the #GdkWindow corresponding to an area of the text view;
possible windows include the overall widget window, child windows
on the left, right, top, bottom, and the window that displays the
text buffer. Windows are %NULL and nonexistent if their width or
height is 0, and are nonexistent before the widget has been
realized.

    {:argctype, "GdkWindow*"}
{:argname, "rv"}
{:argtype, "Gdk.Window"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_window()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_window_type
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L485)</span>


    Usually used to find out which window an event corresponds to.

If you connect to an event signal on @text_view, this function
should be called on `event->window` to see which window it was.

    {:argctype, "GtkTextWindowType"}
{:argname, "rv"}
{:argtype, "TextWindowType"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_window_type()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_wrap_mode
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L500)</span>


    Gets the line wrapping for the view.

    {:argctype, "GtkWrapMode"}
{:argname, "rv"}
{:argtype, "WrapMode"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_wrap_mode()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_im_context_filter_keypress
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L512)</span>


    Allow the #GtkTextView input method to internally handle key press
and release events. If this function returns %TRUE, then no further
processing should be done for this key event. See
gtk_im_context_filter_keypress().

Note that you are expected to call this function from your handler
when overriding key event handling. This is needed in the case when
you need to insert your own key handling between the input method
and the default key event handling of the #GtkTextView.

|[<!-- language="C" -->
static gboolean
gtk_foo_bar_key_press_event (GtkWidget   *widget,
                             GdkEventKey *event)
{
  guint keyval;

  gdk_event_get_keyval ((GdkEvent*)event, &keyval);

  if (keyval == GDK_KEY_Return || keyval == GDK_KEY_KP_Enter)
    {
      if (gtk_text_view_im_context_filter_keypress (GTK_TEXT_VIEW (widget), event))
        return TRUE;
    }

  // Do some stuff

  return GTK_WIDGET_CLASS (gtk_foo_bar_parent_class)->key_press_event (widget, event);
}
]|

    {:doh, %{argctype: "GdkEventKey*", argname: "event", argtype: "Gdk.EventKey", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_im_context_filter_keypress()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### move_child
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L549)</span>


Updates the position of a child, as for gtk_text_view_add_child_in_window().


```pony
fun box move_child(
  child_pony: GtkWidget val,
  xpos_pony: I32 val,
  ypos_pony: I32 val)
: None val
```
#### Parameters

*   child_pony: [GtkWidget](gtk3-GtkWidget.md) val
*   xpos_pony: [I32](builtin-I32.md) val
*   ypos_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_move_mark_onscreen
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L555)</span>


    Moves a mark within the buffer so that it's
located within the currently-visible text area.

    {:doh, %{argctype: "GtkTextMark*", argname: "mark", argtype: "TextMark", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_move_mark_onscreen()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_move_visually
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L564)</span>


    Move the iterator a given number of characters visually, treating
it as the strong cursor position. If @count is positive, then the
new strong cursor position will be @count positions to the right of
the old cursor position. If @count is negative then the new strong
cursor position will be @count positions to the left of the old
cursor position.

In the presence of bi-directional text, the correspondence
between logical and visual order will depend on the direction
of the current run, and there may be jumps when the cursor
is moved off of the end of a run.

    {:doh, %{argctype: "GtkTextIter*", argname: "iter", argtype: "TextIter", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_move_visually()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### place_cursor_onscreen
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L582)</span>


Moves the cursor to the currently visible region of the
buffer, it it isn’t there already.


```pony
fun box place_cursor_onscreen()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### reset_cursor_blink
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L589)</span>


Ensures that the cursor is shown (i.e. not in an 'off' blink
interval) and resets the time that it will stay blinking (or
visible, in case blinking is disabled).

This function should be called in response to user input
(e.g. from derived classes that override the textview's
#GtkWidget::key-press-event handler).


```pony
fun box reset_cursor_blink()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### reset_im_context
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L601)</span>


Reset the input method context of the text view if needed.

This can be necessary in the case where modifying the buffer
would confuse on-going input method behavior.


```pony
fun box reset_im_context()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_scroll_mark_onscreen
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L610)</span>


    Scrolls @text_view the minimum distance such that @mark is contained
within the visible area of the widget.

    {:doh, %{argctype: "GtkTextMark*", argname: "mark", argtype: "TextMark", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_scroll_mark_onscreen()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_scroll_to_iter
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L619)</span>


    Scrolls @text_view so that @iter is on the screen in the position
indicated by @xalign and @yalign. An alignment of 0.0 indicates
left or top, 1.0 indicates right or bottom, 0.5 means center.
If @use_align is %FALSE, the text scrolls the minimal distance to
get the mark onscreen, possibly not scrolling at all. The effective
screen for purposes of this function is reduced by a margin of size
@within_margin.

Note that this function uses the currently-computed height of the
lines in the text buffer. Line heights are computed in an idle
handler; so this function may not have the desired effect if it’s
called before the height computations. To avoid oddness, consider
using gtk_text_view_scroll_to_mark() which saves a point to be
scrolled to after line validation.

    {:doh, %{argctype: "GtkTextIter*", argname: "iter", argtype: "TextIter", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "within_margin", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "xalign", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "yalign", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_scroll_to_iter()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_scroll_to_mark
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L643)</span>


    Scrolls @text_view so that @mark is on the screen in the position
indicated by @xalign and @yalign. An alignment of 0.0 indicates
left or top, 1.0 indicates right or bottom, 0.5 means center.
If @use_align is %FALSE, the text scrolls the minimal distance to
get the mark onscreen, possibly not scrolling at all. The effective
screen for purposes of this function is reduced by a margin of size
@within_margin.

    {:doh, %{argctype: "GtkTextMark*", argname: "mark", argtype: "TextMark", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "within_margin", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "xalign", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "yalign", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_scroll_to_mark()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### set_accepts_tab
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L660)</span>


Sets the behavior of the text widget when the Tab key is pressed.
If @accepts_tab is %TRUE, a tab character is inserted. If @accepts_tab
is %FALSE the keyboard focus is moved to the next widget in the focus
chain.


```pony
fun box set_accepts_tab(
  accepts_tab_pony: Bool val)
: None val
```
#### Parameters

*   accepts_tab_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_border_window_size
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L669)</span>


    Sets the width of %GTK_TEXT_WINDOW_LEFT or %GTK_TEXT_WINDOW_RIGHT,
or the height of %GTK_TEXT_WINDOW_TOP or %GTK_TEXT_WINDOW_BOTTOM.
Automatically destroys the corresponding window if the size is set
to 0, and creates the window if the size is set to non-zero.  This
function can only be used for the “border windows”, and it won’t
work with %GTK_TEXT_WINDOW_WIDGET, %GTK_TEXT_WINDOW_TEXT, or
%GTK_TEXT_WINDOW_PRIVATE.

    {:doh, %{argctype: "GtkTextWindowType", argname: "gtype", argtype: "TextWindowType", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_border_window_size()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### set_bottom_margin
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L683)</span>


Sets the bottom margin for text in @text_view.

Note that this function is confusingly named.
In CSS terms, the value set here is padding.


```pony
fun box set_bottom_margin(
  bottom_margin_pony: I32 val)
: None val
```
#### Parameters

*   bottom_margin_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_buffer
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L692)</span>


    Sets @buffer as the buffer being displayed by @text_view. The previous
buffer displayed by the text view is unreferenced, and a reference is
added to @buffer. If you owned a reference to @buffer before passing it
to this function, you must remove that reference yourself; #GtkTextView
will not “adopt” it.

    {:doh, %{argctype: "GtkTextBuffer*", argname: "buffer", argtype: "TextBuffer", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_buffer()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### set_cursor_visible
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L704)</span>


Toggles whether the insertion point should be displayed. A buffer with
no editable text probably shouldn’t have a visible cursor, so you may
want to turn the cursor off.

Note that this property may be overridden by the
#GtkSettings:gtk-keynave-use-caret settings.


```pony
fun box set_cursor_visible(
  setting_pony: Bool val)
: None val
```
#### Parameters

*   setting_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_editable
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L715)</span>


Sets the default editability of the #GtkTextView. You can override
this default setting with tags in the buffer, using the “editable”
attribute of tags.


```pony
fun box set_editable(
  setting_pony: Bool val)
: None val
```
#### Parameters

*   setting_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_indent
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L723)</span>


Sets the default indentation for paragraphs in @text_view.
Tags in the buffer may override the default.


```pony
fun box set_indent(
  indent_pony: I32 val)
: None val
```
#### Parameters

*   indent_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_input_hints
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L730)</span>


    Sets the #GtkTextView:input-hints property, which
allows input methods to fine-tune their behaviour.

    {:doh, %{argctype: "GtkInputHints", argname: "hints", argtype: "InputHints", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_input_hints()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_input_purpose
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L739)</span>


    Sets the #GtkTextView:input-purpose property which
can be used by on-screen keyboards and other input
methods to adjust their behaviour.

    {:doh, %{argctype: "GtkInputPurpose", argname: "purpose", argtype: "InputPurpose", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_input_purpose()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_justification
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L749)</span>


    Sets the default justification of text in @text_view.
Tags in the view’s buffer may override the default.

    {:doh, %{argctype: "GtkJustification", argname: "justification", argtype: "Justification", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_justification()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### set_left_margin
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L758)</span>


Sets the default left margin for text in @text_view.
Tags in the buffer may override the default.

Note that this function is confusingly named.
In CSS terms, the value set here is padding.


```pony
fun box set_left_margin(
  left_margin_pony: I32 val)
: None val
```
#### Parameters

*   left_margin_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_monospace
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L768)</span>


Sets the #GtkTextView:monospace property, which
indicates that the text view should use monospace
fonts.


```pony
fun box set_monospace(
  monospace_pony: Bool val)
: None val
```
#### Parameters

*   monospace_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_overwrite
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L776)</span>


Changes the #GtkTextView overwrite mode.


```pony
fun box set_overwrite(
  overwrite_pony: Bool val)
: None val
```
#### Parameters

*   overwrite_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_pixels_above_lines
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L782)</span>


Sets the default number of blank pixels above paragraphs in @text_view.
Tags in the buffer for @text_view may override the defaults.


```pony
fun box set_pixels_above_lines(
  pixels_above_lines_pony: I32 val)
: None val
```
#### Parameters

*   pixels_above_lines_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_pixels_below_lines
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L789)</span>


Sets the default number of pixels of blank space
to put below paragraphs in @text_view. May be overridden
by tags applied to @text_view’s buffer.


```pony
fun box set_pixels_below_lines(
  pixels_below_lines_pony: I32 val)
: None val
```
#### Parameters

*   pixels_below_lines_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_pixels_inside_wrap
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L797)</span>


Sets the default number of pixels of blank space to leave between
display/wrapped lines within a paragraph. May be overridden by
tags in @text_view’s buffer.


```pony
fun box set_pixels_inside_wrap(
  pixels_inside_wrap_pony: I32 val)
: None val
```
#### Parameters

*   pixels_inside_wrap_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_right_margin
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L805)</span>


Sets the default right margin for text in the text view.
Tags in the buffer may override the default.

Note that this function is confusingly named.
In CSS terms, the value set here is padding.


```pony
fun box set_right_margin(
  right_margin_pony: I32 val)
: None val
```
#### Parameters

*   right_margin_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_tabs
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L815)</span>


    Sets the default tab stops for paragraphs in @text_view.
Tags in the buffer may override the default.

    {:doh, %{argctype: "PangoTabArray*", argname: "tabs", argtype: "Pango.TabArray", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_tabs()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### set_top_margin
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L824)</span>


Sets the top margin for text in @text_view.

Note that this function is confusingly named.
In CSS terms, the value set here is padding.


```pony
fun box set_top_margin(
  top_margin_pony: I32 val)
: None val
```
#### Parameters

*   top_margin_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_wrap_mode
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L833)</span>


    Sets the line wrapping for the view.

    {:doh, %{argctype: "GtkWrapMode", argname: "wrap_mode", argtype: "WrapMode", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_wrap_mode()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_starts_display_line
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L841)</span>


    Determines whether @iter is at the start of a display line.
See gtk_text_view_forward_display_line() for an explanation of
display lines vs. paragraphs.

    {:doh, %{argctype: "const GtkTextIter*", argname: "iter", argtype: "TextIter", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_starts_display_line()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_window_to_buffer_coords
<span class="source-link">[[Source]](src/gtk3/GtkTextView.md#L851)</span>


    Converts coordinates on the window identified by @win to buffer
coordinates, storing the result in (@buffer_x,@buffer_y).

Note that you can’t convert coordinates for a nonexisting window (see
gtk_text_view_set_border_window_size()).

    {:doh, %{argctype: "GtkTextWindowType", argname: "win", argtype: "TextWindowType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gint*", argname: "buffer_x", argtype: "gint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gint*", argname: "buffer_y", argtype: "gint", paramtype: :param, txo: "full"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_window_to_buffer_coords()
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

