/*
   needs: ["Bool", "I32", "None", "GtkWidget val", "GObjectREF", "GtkTextBuffer val"]
provides: ["GtkTextView val"]
*/
use "../gobject"
class val GtkTextView is GtkWidget
"""
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
"""
  var widget: GObjectREF val

  fun gtkwidget(): GObjectREF val => widget

  new val create_from_GtkBuilder(gtkbuilder: GtkBuilder, glade_id: String) =>
    widget = @gtk_builder_get_object[GObjectREF](gtkbuilder.gtkwidget(), glade_id.cstring())

  new val create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'

  new val never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF


  new val create() =>
    widget = @gtk_text_view_new[GObjectREF]() //

  new val new_with_buffer(buffer_pony: GtkTextBuffer val) =>
    widget = @gtk_text_view_new_with_buffer[GObjectREF](buffer_pony.gtkwidget()) //


  fun pony_NOT_IMPLEMENTED_YET_add_child_at_anchor(): None =>
    """
    Adds a child widget in the text buffer, at the given @anchor.

    {:doh, %{argctype: "GtkTextChildAnchor*", argname: "anchor", argtype: "TextChildAnchor", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_add_child_in_window(): None =>
    """
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
    """

  fun pony_NOT_IMPLEMENTED_YET_backward_display_line(): None =>
    """
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
    """

  fun pony_NOT_IMPLEMENTED_YET_backward_display_line_start(): None =>
    """
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
    """

  fun pony_NOT_IMPLEMENTED_YET_buffer_to_window_coords(): None =>
    """
    Converts coordinate (@buffer_x, @buffer_y) to coordinates for the window
@win, and stores the result in (@window_x, @window_y).

Note that you can’t convert coordinates for a nonexisting window (see
gtk_text_view_set_border_window_size()).

    {:doh, %{argctype: "GtkTextWindowType", argname: "win", argtype: "TextWindowType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gint*", argname: "window_x", argtype: "gint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gint*", argname: "window_y", argtype: "gint", paramtype: :param, txo: "full"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_forward_display_line(): None =>
    """
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
    """

  fun pony_NOT_IMPLEMENTED_YET_forward_display_line_end(): None =>
    """
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
    """

fun get_accepts_tab(): Bool =>
"""
Returns whether pressing the Tab key inserts a tab characters.
gtk_text_view_set_accepts_tab().
"""
  @gtk_text_view_get_accepts_tab[Bool](widget)

  fun pony_NOT_IMPLEMENTED_YET_get_border_window_size(): None =>
    """
    Gets the width of the specified border window. See
gtk_text_view_set_border_window_size().

    {:doh, %{argctype: "GtkTextWindowType", argname: "gtype", argtype: "TextWindowType", paramtype: :param, txo: "none"}}
*/
    """

fun get_bottom_margin(): I32 =>
"""
Gets the bottom margin for text in the @text_view.
"""
  @gtk_text_view_get_bottom_margin[I32](widget)

  fun pony_NOT_IMPLEMENTED_YET_get_buffer(): None =>
    """
    Returns the #GtkTextBuffer being displayed by this text view.
The reference count on the buffer is not incremented; the caller
of this function won’t own a new reference.

    {:argctype, "GtkTextBuffer*"}
{:argname, "rv"}
{:argtype, "TextBuffer"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_cursor_locations(): None =>
    """
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
    """

fun get_cursor_visible(): Bool =>
"""
Find out whether the cursor should be displayed.
"""
  @gtk_text_view_get_cursor_visible[Bool](widget)

  fun pony_NOT_IMPLEMENTED_YET_get_default_attributes(): None =>
    """
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
    """

fun get_editable(): Bool =>
"""
Returns the default editability of the #GtkTextView. Tags in the
buffer may override this setting for some ranges of text.
"""
  @gtk_text_view_get_editable[Bool](widget)

  fun pony_NOT_IMPLEMENTED_YET_get_hadjustment(): None =>
    """
    Gets the horizontal-scrolling #GtkAdjustment.

    {:argctype, "GtkAdjustment*"}
{:argname, "rv"}
{:argtype, "Adjustment"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

fun get_indent(): I32 =>
"""
Gets the default indentation of paragraphs in @text_view.
Tags in the view’s buffer may override the default.
The indentation may be negative.
"""
  @gtk_text_view_get_indent[I32](widget)

  fun pony_NOT_IMPLEMENTED_YET_get_input_hints(): None =>
    """
    Gets the value of the #GtkTextView:input-hints property.

    {:argctype, "GtkInputHints"}
{:argname, "rv"}
{:argtype, "InputHints"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_input_purpose(): None =>
    """
    Gets the value of the #GtkTextView:input-purpose property.

    {:argctype, "GtkInputPurpose"}
{:argname, "rv"}
{:argtype, "InputPurpose"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_iter_at_location(): None =>
    """
    Retrieves the iterator at buffer coordinates @x and @y. Buffer
coordinates are coordinates for the entire buffer, not just the
currently-displayed portion.  If you have coordinates from an
event, you have to convert those to buffer coordinates with
gtk_text_view_window_to_buffer_coords().

    {:doh, %{argctype: "GtkTextIter*", argname: "iter", argtype: "TextIter", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_iter_at_position(): None =>
    """
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
    """

  fun pony_NOT_IMPLEMENTED_YET_get_iter_location(): None =>
    """
    Gets a rectangle which roughly contains the character at @iter.
The rectangle position is in buffer coordinates; use
gtk_text_view_buffer_to_window_coords() to convert these
coordinates to coordinates for one of the windows in the text view.

    {:doh, %{argctype: "const GtkTextIter*", argname: "iter", argtype: "TextIter", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkRectangle*", argname: "location", argtype: "Gdk.Rectangle", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_justification(): None =>
    """
    Gets the default justification of paragraphs in @text_view.
Tags in the buffer may override the default.

    {:argctype, "GtkJustification"}
{:argname, "rv"}
{:argtype, "Justification"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

fun get_left_margin(): I32 =>
"""
Gets the default left margin size of paragraphs in the @text_view.
Tags in the buffer may override the default.
"""
  @gtk_text_view_get_left_margin[I32](widget)

  fun pony_NOT_IMPLEMENTED_YET_get_line_at_y(): None =>
    """
    Gets the #GtkTextIter at the start of the line containing
the coordinate @y. @y is in buffer coordinates, convert from
window coordinates with gtk_text_view_window_to_buffer_coords().
If non-%NULL, @line_top will be filled with the coordinate of the top
edge of the line.

    {:doh, %{argctype: "GtkTextIter*", argname: "target_iter", argtype: "TextIter", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gint*", argname: "line_top", argtype: "gint", paramtype: :param, txo: "full"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_line_yrange(): None =>
    """
    Gets the y coordinate of the top of the line containing @iter,
and the height of the line. The coordinate is a buffer coordinate;
convert to window coordinates with gtk_text_view_buffer_to_window_coords().

    {:doh, %{argctype: "const GtkTextIter*", argname: "iter", argtype: "TextIter", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gint*", argname: "y", argtype: "gint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gint*", argname: "height", argtype: "gint", paramtype: :param, txo: "full"}}
*/
    """

fun get_monospace(): Bool =>
"""
Gets the value of the #GtkTextView:monospace property.
"""
  @gtk_text_view_get_monospace[Bool](widget)

fun get_overwrite(): Bool =>
"""
Returns whether the #GtkTextView is in overwrite mode or not.
"""
  @gtk_text_view_get_overwrite[Bool](widget)

fun get_pixels_above_lines(): I32 =>
"""
Gets the default number of pixels to put above paragraphs.
Adding this function with gtk_text_view_get_pixels_below_lines()
is equal to the line space between each paragraph.
"""
  @gtk_text_view_get_pixels_above_lines[I32](widget)

fun get_pixels_below_lines(): I32 =>
"""
Gets the value set by gtk_text_view_set_pixels_below_lines().

The line space is the sum of the value returned by this function and the
value returned by gtk_text_view_get_pixels_above_lines().
"""
  @gtk_text_view_get_pixels_below_lines[I32](widget)

fun get_pixels_inside_wrap(): I32 =>
"""
Gets the value set by gtk_text_view_set_pixels_inside_wrap().
"""
  @gtk_text_view_get_pixels_inside_wrap[I32](widget)

fun get_right_margin(): I32 =>
"""
Gets the default right margin for text in @text_view. Tags
in the buffer may override the default.
"""
  @gtk_text_view_get_right_margin[I32](widget)

  fun pony_NOT_IMPLEMENTED_YET_get_tabs(): None =>
    """
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
    """

fun get_top_margin(): I32 =>
"""
Gets the top margin for text in the @text_view.
"""
  @gtk_text_view_get_top_margin[I32](widget)

  fun pony_NOT_IMPLEMENTED_YET_get_vadjustment(): None =>
    """
    Gets the vertical-scrolling #GtkAdjustment.

    {:argctype, "GtkAdjustment*"}
{:argname, "rv"}
{:argtype, "Adjustment"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_visible_rect(): None =>
    """
    Fills @visible_rect with the currently-visible
region of the buffer, in buffer coordinates. Convert to window coordinates
with gtk_text_view_buffer_to_window_coords().

    {:doh, %{argctype: "GdkRectangle*", argname: "visible_rect", argtype: "Gdk.Rectangle", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_window(): None =>
    """
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
    """

  fun pony_NOT_IMPLEMENTED_YET_get_window_type(): None =>
    """
    Usually used to find out which window an event corresponds to.

If you connect to an event signal on @text_view, this function
should be called on `event->window` to see which window it was.

    {:argctype, "GtkTextWindowType"}
{:argname, "rv"}
{:argtype, "TextWindowType"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_wrap_mode(): None =>
    """
    Gets the line wrapping for the view.

    {:argctype, "GtkWrapMode"}
{:argname, "rv"}
{:argtype, "WrapMode"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_im_context_filter_keypress(): None =>
    """
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
    """

fun move_child(child_pony: GtkWidget val, xpos_pony: I32, ypos_pony: I32): None =>
"""
Updates the position of a child, as for gtk_text_view_add_child_in_window().
"""
  @gtk_text_view_move_child[None](widget, child_pony.gtkwidget(), xpos_pony, ypos_pony)

  fun pony_NOT_IMPLEMENTED_YET_move_mark_onscreen(): None =>
    """
    Moves a mark within the buffer so that it's
located within the currently-visible text area.

    {:doh, %{argctype: "GtkTextMark*", argname: "mark", argtype: "TextMark", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_move_visually(): None =>
    """
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
    """

fun place_cursor_onscreen(): Bool =>
"""
Moves the cursor to the currently visible region of the
buffer, it it isn’t there already.
"""
  @gtk_text_view_place_cursor_onscreen[Bool](widget)

fun reset_cursor_blink(): None =>
"""
Ensures that the cursor is shown (i.e. not in an 'off' blink
interval) and resets the time that it will stay blinking (or
visible, in case blinking is disabled).

This function should be called in response to user input
(e.g. from derived classes that override the textview's
#GtkWidget::key-press-event handler).
"""
  @gtk_text_view_reset_cursor_blink[None](widget)

fun reset_im_context(): None =>
"""
Reset the input method context of the text view if needed.

This can be necessary in the case where modifying the buffer
would confuse on-going input method behavior.
"""
  @gtk_text_view_reset_im_context[None](widget)

  fun pony_NOT_IMPLEMENTED_YET_scroll_mark_onscreen(): None =>
    """
    Scrolls @text_view the minimum distance such that @mark is contained
within the visible area of the widget.

    {:doh, %{argctype: "GtkTextMark*", argname: "mark", argtype: "TextMark", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_scroll_to_iter(): None =>
    """
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
    """

  fun pony_NOT_IMPLEMENTED_YET_scroll_to_mark(): None =>
    """
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
    """

fun set_accepts_tab(accepts_tab_pony: Bool): None =>
"""
Sets the behavior of the text widget when the Tab key is pressed.
If @accepts_tab is %TRUE, a tab character is inserted. If @accepts_tab
is %FALSE the keyboard focus is moved to the next widget in the focus
chain.
"""
  @gtk_text_view_set_accepts_tab[None](widget, accepts_tab_pony)

  fun pony_NOT_IMPLEMENTED_YET_set_border_window_size(): None =>
    """
    Sets the width of %GTK_TEXT_WINDOW_LEFT or %GTK_TEXT_WINDOW_RIGHT,
or the height of %GTK_TEXT_WINDOW_TOP or %GTK_TEXT_WINDOW_BOTTOM.
Automatically destroys the corresponding window if the size is set
to 0, and creates the window if the size is set to non-zero.  This
function can only be used for the “border windows”, and it won’t
work with %GTK_TEXT_WINDOW_WIDGET, %GTK_TEXT_WINDOW_TEXT, or
%GTK_TEXT_WINDOW_PRIVATE.

    {:doh, %{argctype: "GtkTextWindowType", argname: "gtype", argtype: "TextWindowType", paramtype: :param, txo: "none"}}
*/
    """

fun set_bottom_margin(bottom_margin_pony: I32): None =>
"""
Sets the bottom margin for text in @text_view.

Note that this function is confusingly named.
In CSS terms, the value set here is padding.
"""
  @gtk_text_view_set_bottom_margin[None](widget, bottom_margin_pony)

  fun pony_NOT_IMPLEMENTED_YET_set_buffer(): None =>
    """
    Sets @buffer as the buffer being displayed by @text_view. The previous
buffer displayed by the text view is unreferenced, and a reference is
added to @buffer. If you owned a reference to @buffer before passing it
to this function, you must remove that reference yourself; #GtkTextView
will not “adopt” it.

    {:doh, %{argctype: "GtkTextBuffer*", argname: "buffer", argtype: "TextBuffer", paramtype: :param, txo: "none"}}
*/
    """

fun set_cursor_visible(setting_pony: Bool): None =>
"""
Toggles whether the insertion point should be displayed. A buffer with
no editable text probably shouldn’t have a visible cursor, so you may
want to turn the cursor off.

Note that this property may be overridden by the
#GtkSettings:gtk-keynave-use-caret settings.
"""
  @gtk_text_view_set_cursor_visible[None](widget, setting_pony)

fun set_editable(setting_pony: Bool): None =>
"""
Sets the default editability of the #GtkTextView. You can override
this default setting with tags in the buffer, using the “editable”
attribute of tags.
"""
  @gtk_text_view_set_editable[None](widget, setting_pony)

fun set_indent(indent_pony: I32): None =>
"""
Sets the default indentation for paragraphs in @text_view.
Tags in the buffer may override the default.
"""
  @gtk_text_view_set_indent[None](widget, indent_pony)

  fun pony_NOT_IMPLEMENTED_YET_set_input_hints(): None =>
    """
    Sets the #GtkTextView:input-hints property, which
allows input methods to fine-tune their behaviour.

    {:doh, %{argctype: "GtkInputHints", argname: "hints", argtype: "InputHints", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_set_input_purpose(): None =>
    """
    Sets the #GtkTextView:input-purpose property which
can be used by on-screen keyboards and other input
methods to adjust their behaviour.

    {:doh, %{argctype: "GtkInputPurpose", argname: "purpose", argtype: "InputPurpose", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_set_justification(): None =>
    """
    Sets the default justification of text in @text_view.
Tags in the view’s buffer may override the default.

    {:doh, %{argctype: "GtkJustification", argname: "justification", argtype: "Justification", paramtype: :param, txo: "none"}}
*/
    """

fun set_left_margin(left_margin_pony: I32): None =>
"""
Sets the default left margin for text in @text_view.
Tags in the buffer may override the default.

Note that this function is confusingly named.
In CSS terms, the value set here is padding.
"""
  @gtk_text_view_set_left_margin[None](widget, left_margin_pony)

fun set_monospace(monospace_pony: Bool): None =>
"""
Sets the #GtkTextView:monospace property, which
indicates that the text view should use monospace
fonts.
"""
  @gtk_text_view_set_monospace[None](widget, monospace_pony)

fun set_overwrite(overwrite_pony: Bool): None =>
"""
Changes the #GtkTextView overwrite mode.
"""
  @gtk_text_view_set_overwrite[None](widget, overwrite_pony)

fun set_pixels_above_lines(pixels_above_lines_pony: I32): None =>
"""
Sets the default number of blank pixels above paragraphs in @text_view.
Tags in the buffer for @text_view may override the defaults.
"""
  @gtk_text_view_set_pixels_above_lines[None](widget, pixels_above_lines_pony)

fun set_pixels_below_lines(pixels_below_lines_pony: I32): None =>
"""
Sets the default number of pixels of blank space
to put below paragraphs in @text_view. May be overridden
by tags applied to @text_view’s buffer.
"""
  @gtk_text_view_set_pixels_below_lines[None](widget, pixels_below_lines_pony)

fun set_pixels_inside_wrap(pixels_inside_wrap_pony: I32): None =>
"""
Sets the default number of pixels of blank space to leave between
display/wrapped lines within a paragraph. May be overridden by
tags in @text_view’s buffer.
"""
  @gtk_text_view_set_pixels_inside_wrap[None](widget, pixels_inside_wrap_pony)

fun set_right_margin(right_margin_pony: I32): None =>
"""
Sets the default right margin for text in the text view.
Tags in the buffer may override the default.

Note that this function is confusingly named.
In CSS terms, the value set here is padding.
"""
  @gtk_text_view_set_right_margin[None](widget, right_margin_pony)

  fun pony_NOT_IMPLEMENTED_YET_set_tabs(): None =>
    """
    Sets the default tab stops for paragraphs in @text_view.
Tags in the buffer may override the default.

    {:doh, %{argctype: "PangoTabArray*", argname: "tabs", argtype: "Pango.TabArray", paramtype: :param, txo: "none"}}
*/
    """

fun set_top_margin(top_margin_pony: I32): None =>
"""
Sets the top margin for text in @text_view.

Note that this function is confusingly named.
In CSS terms, the value set here is padding.
"""
  @gtk_text_view_set_top_margin[None](widget, top_margin_pony)

  fun pony_NOT_IMPLEMENTED_YET_set_wrap_mode(): None =>
    """
    Sets the line wrapping for the view.

    {:doh, %{argctype: "GtkWrapMode", argname: "wrap_mode", argtype: "WrapMode", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_starts_display_line(): None =>
    """
    Determines whether @iter is at the start of a display line.
See gtk_text_view_forward_display_line() for an explanation of
display lines vs. paragraphs.

    {:doh, %{argctype: "const GtkTextIter*", argname: "iter", argtype: "TextIter", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_window_to_buffer_coords(): None =>
    """
    Converts coordinates on the window identified by @win to buffer
coordinates, storing the result in (@buffer_x,@buffer_y).

Note that you can’t convert coordinates for a nonexisting window (see
gtk_text_view_set_border_window_size()).

    {:doh, %{argctype: "GtkTextWindowType", argname: "win", argtype: "TextWindowType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gint*", argname: "buffer_x", argtype: "gint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gint*", argname: "buffer_y", argtype: "gint", paramtype: :param, txo: "full"}}
*/
    """

