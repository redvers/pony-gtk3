/*
   needs: ["None", "Bool", "I32", "GObjectREF", "GtkTextTagTable val"]
provides: ["GtkTextBuffer val"]
*/
use "../gobject"
class val GtkTextBuffer is GtkWidget
"""
You may wish to begin by reading the
[text widget conceptual overview][TextWidget]
which gives an overview of all the objects and data
types related to the text widget and how they work together.
"""
  var widget: GObjectREF val

  fun gtkwidget(): GObjectREF val => widget

  new val create_from_GtkBuilder(gtkbuilder: GtkBuilder, glade_id: String) =>
    widget = @gtk_builder_get_object[GObjectREF](gtkbuilder.gtkwidget(), glade_id.cstring())

  new val create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'

  new val never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF


  new val create(table_pony: GtkTextTagTable val) =>
    widget = @gtk_text_buffer_new[GObjectREF](table_pony.gtkwidget()) //


  fun pony_NOT_IMPLEMENTED_YET_add_mark(): None =>
    """
    Adds the mark at position @where. The mark must not be added to
another buffer, and if its name is not %NULL then there must not
be another mark in the buffer with the same name.

Emits the #GtkTextBuffer::mark-set signal as notification of the mark's
initial placement.

    {:doh, %{argctype: "GtkTextMark*", argname: "mark", argtype: "TextMark", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const GtkTextIter*", argname: "where", argtype: "TextIter", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_add_selection_clipboard(): None =>
    """
    Adds @clipboard to the list of clipboards in which the selection
contents of @buffer are available. In most cases, @clipboard will be
the #GtkClipboard of type %GDK_SELECTION_PRIMARY for a view of @buffer.

    {:doh, %{argctype: "GtkClipboard*", argname: "clipboard", argtype: "Clipboard", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_apply_tag(): None =>
    """
    Emits the “apply-tag” signal on @buffer. The default
handler for the signal applies @tag to the given range.
@start and @end do not have to be in order.

    {:doh, %{argctype: "GtkTextTag*", argname: "gtag", argtype: "TextTag", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const GtkTextIter*", argname: "start", argtype: "TextIter", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const GtkTextIter*", argname: "gend", argtype: "TextIter", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_apply_tag_by_name(): None =>
    """
    Calls gtk_text_tag_table_lookup() on the buffer’s tag table to
get a #GtkTextTag, then calls gtk_text_buffer_apply_tag().

    {:doh, %{argctype: "const gchar*", argname: "name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const GtkTextIter*", argname: "start", argtype: "TextIter", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const GtkTextIter*", argname: "gend", argtype: "TextIter", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_backspace(): None =>
    """
    Performs the appropriate action as if the user hit the delete
key with the cursor at the position specified by @iter. In the
normal case a single character will be deleted, but when
combining accents are involved, more than one character can
be deleted, and when precomposed character and accent combinations
are involved, less than one character will be deleted.

Because the buffer is modified, all outstanding iterators become
invalid after calling this function; however, the @iter will be
re-initialized to point to the location where text was deleted.

    {:doh, %{argctype: "GtkTextIter*", argname: "iter", argtype: "TextIter", paramtype: :param, txo: "none"}}
*/
    """

fun begin_user_action(): None =>
"""
Called to indicate that the buffer operations between here and a
call to gtk_text_buffer_end_user_action() are part of a single
user-visible operation. The operations between
gtk_text_buffer_begin_user_action() and
gtk_text_buffer_end_user_action() can then be grouped when creating
an undo stack. #GtkTextBuffer maintains a count of calls to
gtk_text_buffer_begin_user_action() that have not been closed with
a call to gtk_text_buffer_end_user_action(), and emits the
“begin-user-action” and “end-user-action” signals only for the
outermost pair of calls. This allows you to build user actions
from other user actions.

The “interactive” buffer mutation functions, such as
gtk_text_buffer_insert_interactive(), automatically call begin/end
user action around the buffer operations they perform, so there's
no need to add extra calls if you user action consists solely of a
single call to one of those functions.
"""
  @gtk_text_buffer_begin_user_action[None](widget)

  fun pony_NOT_IMPLEMENTED_YET_copy_clipboard(): None =>
    """
    Copies the currently-selected text to a clipboard.

    {:doh, %{argctype: "GtkClipboard*", argname: "clipboard", argtype: "Clipboard", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_create_child_anchor(): None =>
    """
    This is a convenience function which simply creates a child anchor
with gtk_text_child_anchor_new() and inserts it into the buffer
with gtk_text_buffer_insert_child_anchor(). The new anchor is
owned by the buffer; no reference count is returned to
the caller of gtk_text_buffer_create_child_anchor().

    {:argctype, "GtkTextChildAnchor*"}
{:argname, "rv"}
{:argtype, "TextChildAnchor"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_create_mark(): None =>
    """
    Creates a mark at position @where. If @mark_name is %NULL, the mark
is anonymous; otherwise, the mark can be retrieved by name using
gtk_text_buffer_get_mark(). If a mark has left gravity, and text is
inserted at the mark’s current location, the mark will be moved to
the left of the newly-inserted text. If the mark has right gravity
(@left_gravity = %FALSE), the mark will end up on the right of
newly-inserted text. The standard left-to-right cursor is a mark
with right gravity (when you type, the cursor stays on the right
side of the text you’re typing).

The caller of this function does not own a
reference to the returned #GtkTextMark, so you can ignore the
return value if you like. Marks are owned by the buffer and go
away when the buffer does.

Emits the #GtkTextBuffer::mark-set signal as notification of the mark's
initial placement.

    {:argctype, "GtkTextMark*"}
{:argname, "rv"}
{:argtype, "TextMark"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_create_tag(): None =>
    """
    Creates a tag and adds it to the tag table for @buffer.
Equivalent to calling gtk_text_tag_new() and then adding the
tag to the buffer’s tag table. The returned tag is owned by
the buffer’s tag table, so the ref count will be equal to one.

If @tag_name is %NULL, the tag is anonymous.

If @tag_name is non-%NULL, a tag called @tag_name must not already
exist in the tag table for this buffer.

The @first_property_name argument and subsequent arguments are a list
of properties to set on the tag, as with g_object_set().

    {:argctype, "GtkTextTag*"}
{:argname, "rv"}
{:argtype, "TextTag"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_cut_clipboard(): None =>
    """
    Copies the currently-selected text to a clipboard, then deletes
said text if it’s editable.

    {:doh, %{argctype: "GtkClipboard*", argname: "clipboard", argtype: "Clipboard", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_delete(): None =>
    """
    Deletes text between @start and @end. The order of @start and @end
is not actually relevant; gtk_text_buffer_delete() will reorder
them. This function actually emits the “delete-range” signal, and
the default handler of that signal deletes the text. Because the
buffer is modified, all outstanding iterators become invalid after
calling this function; however, the @start and @end will be
re-initialized to point to the location where text was deleted.

    {:doh, %{argctype: "GtkTextIter*", argname: "start", argtype: "TextIter", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkTextIter*", argname: "gend", argtype: "TextIter", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_delete_interactive(): None =>
    """
    Deletes all editable text in the given range.
Calls gtk_text_buffer_delete() for each editable sub-range of
[@start,@end). @start and @end are revalidated to point to
the location of the last deleted range, or left untouched if
no text was deleted.

    {:doh, %{argctype: "GtkTextIter*", argname: "start_iter", argtype: "TextIter", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkTextIter*", argname: "end_iter", argtype: "TextIter", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_delete_mark(): None =>
    """
    Deletes @mark, so that it’s no longer located anywhere in the
buffer. Removes the reference the buffer holds to the mark, so if
you haven’t called g_object_ref() on the mark, it will be freed. Even
if the mark isn’t freed, most operations on @mark become
invalid, until it gets added to a buffer again with
gtk_text_buffer_add_mark(). Use gtk_text_mark_get_deleted() to
find out if a mark has been removed from its buffer.
The #GtkTextBuffer::mark-deleted signal will be emitted as notification after
the mark is deleted.

    {:doh, %{argctype: "GtkTextMark*", argname: "mark", argtype: "TextMark", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_delete_mark_by_name(): None =>
    """
    Deletes the mark named @name; the mark must exist. See
gtk_text_buffer_delete_mark() for details.

    {:doh, %{argctype: "const gchar*", argname: "name", argtype: "utf8", paramtype: :param, txo: "none"}}
*/
    """

fun delete_selection(interactive_pony: Bool, default_editable_pony: Bool): Bool =>
"""
Deletes the range between the “insert” and “selection_bound” marks,
that is, the currently-selected text. If @interactive is %TRUE,
the editability of the selection will be considered (users can’t delete
uneditable text).
"""
  @gtk_text_buffer_delete_selection[Bool](widget, interactive_pony, default_editable_pony)

  fun pony_NOT_IMPLEMENTED_YET_deserialize(): None =>
    """
    This function deserializes rich text in format @format and inserts
it at @iter.

@formats to be used must be registered using
gtk_text_buffer_register_deserialize_format() or
gtk_text_buffer_register_deserialize_tagset() beforehand.

    {:doh, %{argctype: "GtkTextBuffer*", argname: "content_buffer", argtype: "TextBuffer", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkAtom", argname: "format", argtype: "Gdk.Atom", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkTextIter*", argname: "iter", argtype: "TextIter", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "", argname: "data", argtype: "", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gsize", argname: "length", argtype: "gsize", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_deserialize_get_can_create_tags(): None =>
    """
    This functions returns the value set with
gtk_text_buffer_deserialize_set_can_create_tags()

    {:doh, %{argctype: "GdkAtom", argname: "format", argtype: "Gdk.Atom", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_deserialize_set_can_create_tags(): None =>
    """
    Use this function to allow a rich text deserialization function to
create new tags in the receiving buffer. Note that using this
function is almost always a bad idea, because the rich text
functions you register should know how to map the rich text format
they handler to your text buffers set of tags.

The ability of creating new (arbitrary!) tags in the receiving buffer
is meant for special rich text formats like the internal one that
is registered using gtk_text_buffer_register_deserialize_tagset(),
because that format is essentially a dump of the internal structure
of the source buffer, including its tag names.

You should allow creation of tags only if you know what you are
doing, e.g. if you defined a tagset name for your application
suite’s text buffers and you know that it’s fine to receive new
tags from these buffers, because you know that your application can
handle the newly created tags.

    {:doh, %{argctype: "GdkAtom", argname: "format", argtype: "Gdk.Atom", paramtype: :param, txo: "none"}}
*/
    """

fun end_user_action(): None =>
"""
Should be paired with a call to gtk_text_buffer_begin_user_action().
See that function for a full explanation.
"""
  @gtk_text_buffer_end_user_action[None](widget)

  fun pony_NOT_IMPLEMENTED_YET_get_bounds(): None =>
    """
    Retrieves the first and last iterators in the buffer, i.e. the
entire buffer lies within the range [@start,@end).

    {:doh, %{argctype: "GtkTextIter*", argname: "start", argtype: "TextIter", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkTextIter*", argname: "gend", argtype: "TextIter", paramtype: :param, txo: "none"}}
*/
    """

fun get_char_count(): I32 =>
"""
Gets the number of characters in the buffer; note that characters
and bytes are not the same, you can’t e.g. expect the contents of
the buffer in string form to be this many bytes long. The character
count is cached, so this function is very fast.
"""
  @gtk_text_buffer_get_char_count[I32](widget)

  fun pony_NOT_IMPLEMENTED_YET_get_copy_target_list(): None =>
    """
    This function returns the list of targets this text buffer can
provide for copying and as DND source. The targets in the list are
added with @info values from the #GtkTextBufferTargetInfo enum,
using gtk_target_list_add_rich_text_targets() and
gtk_target_list_add_text_targets().

    {:argctype, "GtkTargetList*"}
{:argname, "rv"}
{:argtype, "TargetList"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_deserialize_formats(): None =>
    """
    This function returns the rich text deserialize formats registered
with @buffer using gtk_text_buffer_register_deserialize_format() or
gtk_text_buffer_register_deserialize_tagset()

    {:argctype, ""}
{:argname, "rv"}
{:argtype, ""}
{:paramtype, :param}
{:txo, "container"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_end_iter(): None =>
    """
    Initializes @iter with the “end iterator,” one past the last valid
character in the text buffer. If dereferenced with
gtk_text_iter_get_char(), the end iterator has a character value of 0.
The entire buffer lies in the range from the first position in
the buffer (call gtk_text_buffer_get_start_iter() to get
character position 0) to the end iterator.

    {:doh, %{argctype: "GtkTextIter*", argname: "iter", argtype: "TextIter", paramtype: :param, txo: "none"}}
*/
    """

fun get_has_selection(): Bool =>
"""
Indicates whether the buffer has some text currently selected.
"""
  @gtk_text_buffer_get_has_selection[Bool](widget)

  fun pony_NOT_IMPLEMENTED_YET_get_insert(): None =>
    """
    Returns the mark that represents the cursor (insertion point).
Equivalent to calling gtk_text_buffer_get_mark() to get the mark
named “insert”, but very slightly more efficient, and involves less
typing.

    {:argctype, "GtkTextMark*"}
{:argname, "rv"}
{:argtype, "TextMark"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_iter_at_child_anchor(): None =>
    """
    Obtains the location of @anchor within @buffer.

    {:doh, %{argctype: "GtkTextIter*", argname: "iter", argtype: "TextIter", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkTextChildAnchor*", argname: "anchor", argtype: "TextChildAnchor", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_iter_at_line(): None =>
    """
    Initializes @iter to the start of the given line. If @line_number is greater
than the number of lines in the @buffer, the end iterator is returned.

    {:doh, %{argctype: "GtkTextIter*", argname: "iter", argtype: "TextIter", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_iter_at_line_index(): None =>
    """
    Obtains an iterator pointing to @byte_index within the given line.
@byte_index must be the start of a UTF-8 character. Note bytes, not
characters; UTF-8 may encode one character as multiple bytes.

Before the 3.20 version, it was not allowed to pass an invalid location.

Since the 3.20 version, if @line_number is greater than the number of lines
in the @buffer, the end iterator is returned. And if @byte_index is off the
end of the line, the iterator at the end of the line is returned.

    {:doh, %{argctype: "GtkTextIter*", argname: "iter", argtype: "TextIter", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_iter_at_line_offset(): None =>
    """
    Obtains an iterator pointing to @char_offset within the given line. Note
characters, not bytes; UTF-8 may encode one character as multiple bytes.

Before the 3.20 version, it was not allowed to pass an invalid location.

Since the 3.20 version, if @line_number is greater than the number of lines
in the @buffer, the end iterator is returned. And if @char_offset is off the
end of the line, the iterator at the end of the line is returned.

    {:doh, %{argctype: "GtkTextIter*", argname: "iter", argtype: "TextIter", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_iter_at_mark(): None =>
    """
    Initializes @iter with the current position of @mark.

    {:doh, %{argctype: "GtkTextIter*", argname: "iter", argtype: "TextIter", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkTextMark*", argname: "mark", argtype: "TextMark", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_iter_at_offset(): None =>
    """
    Initializes @iter to a position @char_offset chars from the start
of the entire buffer. If @char_offset is -1 or greater than the number
of characters in the buffer, @iter is initialized to the end iterator,
the iterator one past the last valid character in the buffer.

    {:doh, %{argctype: "GtkTextIter*", argname: "iter", argtype: "TextIter", paramtype: :param, txo: "none"}}
*/
    """

fun get_line_count(): I32 =>
"""
Obtains the number of lines in the buffer. This value is cached, so
the function is very fast.
"""
  @gtk_text_buffer_get_line_count[I32](widget)

  fun pony_NOT_IMPLEMENTED_YET_get_mark(): None =>
    """
    Returns the mark named @name in buffer @buffer, or %NULL if no such
mark exists in the buffer.

    {:argctype, "GtkTextMark*"}
{:argname, "rv"}
{:argtype, "TextMark"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

fun get_modified(): Bool =>
"""
Indicates whether the buffer has been modified since the last call
to gtk_text_buffer_set_modified() set the modification flag to
%FALSE. Used for example to enable a “save” function in a text
editor.
"""
  @gtk_text_buffer_get_modified[Bool](widget)

  fun pony_NOT_IMPLEMENTED_YET_get_paste_target_list(): None =>
    """
    This function returns the list of targets this text buffer supports
for pasting and as DND destination. The targets in the list are
added with @info values from the #GtkTextBufferTargetInfo enum,
using gtk_target_list_add_rich_text_targets() and
gtk_target_list_add_text_targets().

    {:argctype, "GtkTargetList*"}
{:argname, "rv"}
{:argtype, "TargetList"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_selection_bound(): None =>
    """
    Returns the mark that represents the selection bound.  Equivalent
to calling gtk_text_buffer_get_mark() to get the mark named
“selection_bound”, but very slightly more efficient, and involves
less typing.

The currently-selected text in @buffer is the region between the
“selection_bound” and “insert” marks. If “selection_bound” and
“insert” are in the same place, then there is no current selection.
gtk_text_buffer_get_selection_bounds() is another convenient function
for handling the selection, if you just want to know whether there’s a
selection and what its bounds are.

    {:argctype, "GtkTextMark*"}
{:argname, "rv"}
{:argtype, "TextMark"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_selection_bounds(): None =>
    """
    Returns %TRUE if some text is selected; places the bounds
of the selection in @start and @end (if the selection has length 0,
then @start and @end are filled in with the same value).
@start and @end will be in ascending order. If @start and @end are
NULL, then they are not filled in, but the return value still indicates
whether text is selected.

    {:doh, %{argctype: "GtkTextIter*", argname: "start", argtype: "TextIter", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkTextIter*", argname: "gend", argtype: "TextIter", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_serialize_formats(): None =>
    """
    This function returns the rich text serialize formats registered
with @buffer using gtk_text_buffer_register_serialize_format() or
gtk_text_buffer_register_serialize_tagset()

    {:argctype, ""}
{:argname, "rv"}
{:argtype, ""}
{:paramtype, :param}
{:txo, "container"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_slice(): None =>
    """
    Returns the text in the range [@start,@end). Excludes undisplayed
text (text marked with tags that set the invisibility attribute) if
@include_hidden_chars is %FALSE. The returned string includes a
0xFFFC character whenever the buffer contains
embedded images, so byte and character indexes into
the returned string do correspond to byte
and character indexes into the buffer. Contrast with
gtk_text_buffer_get_text(). Note that 0xFFFC can occur in normal
text as well, so it is not a reliable indicator that a pixbuf or
widget is in the buffer.

    {:argctype, "gchar*"}
{:argname, "rv"}
{:argtype, "utf8"}
{:paramtype, :param}
{:txo, "full"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_start_iter(): None =>
    """
    Initialized @iter with the first position in the text buffer. This
is the same as using gtk_text_buffer_get_iter_at_offset() to get
the iter at character offset 0.

    {:doh, %{argctype: "GtkTextIter*", argname: "iter", argtype: "TextIter", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_tag_table(): None =>
    """
    Get the #GtkTextTagTable associated with this buffer.

    {:argctype, "GtkTextTagTable*"}
{:argname, "rv"}
{:argtype, "TextTagTable"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_text(): None =>
    """
    Returns the text in the range [@start,@end). Excludes undisplayed
text (text marked with tags that set the invisibility attribute) if
@include_hidden_chars is %FALSE. Does not include characters
representing embedded images, so byte and character indexes into
the returned string do not correspond to byte
and character indexes into the buffer. Contrast with
gtk_text_buffer_get_slice().

    {:argctype, "gchar*"}
{:argname, "rv"}
{:argtype, "utf8"}
{:paramtype, :param}
{:txo, "full"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_insert(): None =>
    """
    Inserts @len bytes of @text at position @iter.  If @len is -1,
@text must be nul-terminated and will be inserted in its
entirety. Emits the “insert-text” signal; insertion actually occurs
in the default handler for the signal. @iter is invalidated when
insertion occurs (because the buffer contents change), but the
default signal handler revalidates it to point to the end of the
inserted text.

    {:doh, %{argctype: "GtkTextIter*", argname: "iter", argtype: "TextIter", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "text", argtype: "utf8", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_insert_at_cursor(): None =>
    """
    Simply calls gtk_text_buffer_insert(), using the current
cursor position as the insertion point.

    {:doh, %{argctype: "const gchar*", argname: "text", argtype: "utf8", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_insert_child_anchor(): None =>
    """
    Inserts a child widget anchor into the text buffer at @iter. The
anchor will be counted as one character in character counts, and
when obtaining the buffer contents as a string, will be represented
by the Unicode “object replacement character” 0xFFFC. Note that the
“slice” variants for obtaining portions of the buffer as a string
include this character for child anchors, but the “text” variants do
not. E.g. see gtk_text_buffer_get_slice() and
gtk_text_buffer_get_text(). Consider
gtk_text_buffer_create_child_anchor() as a more convenient
alternative to this function. The buffer will add a reference to
the anchor, so you can unref it after insertion.

    {:doh, %{argctype: "GtkTextIter*", argname: "iter", argtype: "TextIter", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkTextChildAnchor*", argname: "anchor", argtype: "TextChildAnchor", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_insert_interactive(): None =>
    """
    Like gtk_text_buffer_insert(), but the insertion will not occur if
@iter is at a non-editable location in the buffer. Usually you
want to prevent insertions at ineditable locations if the insertion
results from a user action (is interactive).

@default_editable indicates the editability of text that doesn't
have a tag affecting editability applied to it. Typically the
result of gtk_text_view_get_editable() is appropriate here.

    {:doh, %{argctype: "GtkTextIter*", argname: "iter", argtype: "TextIter", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "text", argtype: "utf8", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_insert_interactive_at_cursor(): None =>
    """
    Calls gtk_text_buffer_insert_interactive() at the cursor
position.

@default_editable indicates the editability of text that doesn't
have a tag affecting editability applied to it. Typically the
result of gtk_text_view_get_editable() is appropriate here.

    {:doh, %{argctype: "const gchar*", argname: "text", argtype: "utf8", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_insert_markup(): None =>
    """
    Inserts the text in @markup at position @iter. @markup will be inserted
in its entirety and must be nul-terminated and valid UTF-8. Emits the
#GtkTextBuffer::insert-text signal, possibly multiple times; insertion
actually occurs in the default handler for the signal. @iter will point
to the end of the inserted text on return.

    {:doh, %{argctype: "GtkTextIter*", argname: "iter", argtype: "TextIter", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "markup", argtype: "utf8", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_insert_pixbuf(): None =>
    """
    Inserts an image into the text buffer at @iter. The image will be
counted as one character in character counts, and when obtaining
the buffer contents as a string, will be represented by the Unicode
“object replacement character” 0xFFFC. Note that the “slice”
variants for obtaining portions of the buffer as a string include
this character for pixbufs, but the “text” variants do
not. e.g. see gtk_text_buffer_get_slice() and
gtk_text_buffer_get_text().

    {:doh, %{argctype: "GtkTextIter*", argname: "iter", argtype: "TextIter", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkPixbuf*", argname: "pixbuf", argtype: "GdkPixbuf.Pixbuf", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_insert_range(): None =>
    """
    Copies text, tags, and pixbufs between @start and @end (the order
of @start and @end doesn’t matter) and inserts the copy at @iter.
Used instead of simply getting/inserting text because it preserves
images and tags. If @start and @end are in a different buffer from
@buffer, the two buffers must share the same tag table.

Implemented via emissions of the insert_text and apply_tag signals,
so expect those.

    {:doh, %{argctype: "GtkTextIter*", argname: "iter", argtype: "TextIter", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const GtkTextIter*", argname: "start", argtype: "TextIter", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const GtkTextIter*", argname: "gend", argtype: "TextIter", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_insert_range_interactive(): None =>
    """
    Same as gtk_text_buffer_insert_range(), but does nothing if the
insertion point isn’t editable. The @default_editable parameter
indicates whether the text is editable at @iter if no tags
enclosing @iter affect editability. Typically the result of
gtk_text_view_get_editable() is appropriate here.

    {:doh, %{argctype: "GtkTextIter*", argname: "iter", argtype: "TextIter", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const GtkTextIter*", argname: "start", argtype: "TextIter", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const GtkTextIter*", argname: "gend", argtype: "TextIter", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_insert_with_tags(): None =>
    """
    Inserts @text into @buffer at @iter, applying the list of tags to
the newly-inserted text. The last tag specified must be %NULL to
terminate the list. Equivalent to calling gtk_text_buffer_insert(),
then gtk_text_buffer_apply_tag() on the inserted text;
gtk_text_buffer_insert_with_tags() is just a convenience function.

    {:doh, %{argctype: "GtkTextIter*", argname: "iter", argtype: "TextIter", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "text", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkTextTag*", argname: "first_tag", argtype: "TextTag", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "", argname: "...", argtype: "", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_insert_with_tags_by_name(): None =>
    """
    Same as gtk_text_buffer_insert_with_tags(), but allows you
to pass in tag names instead of tag objects.

    {:doh, %{argctype: "GtkTextIter*", argname: "iter", argtype: "TextIter", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "text", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "first_tag_name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "", argname: "...", argtype: "", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_move_mark(): None =>
    """
    Moves @mark to the new location @where. Emits the #GtkTextBuffer::mark-set
signal as notification of the move.

    {:doh, %{argctype: "GtkTextMark*", argname: "mark", argtype: "TextMark", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const GtkTextIter*", argname: "where", argtype: "TextIter", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_move_mark_by_name(): None =>
    """
    Moves the mark named @name (which must exist) to location @where.
See gtk_text_buffer_move_mark() for details.

    {:doh, %{argctype: "const gchar*", argname: "name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const GtkTextIter*", argname: "where", argtype: "TextIter", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_paste_clipboard(): None =>
    """
    Pastes the contents of a clipboard. If @override_location is %NULL, the
pasted text will be inserted at the cursor position, or the buffer selection
will be replaced if the selection is non-empty.

Note: pasting is asynchronous, that is, we’ll ask for the paste data and
return, and at some point later after the main loop runs, the paste data will
be inserted.

    {:doh, %{argctype: "GtkClipboard*", argname: "clipboard", argtype: "Clipboard", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkTextIter*", argname: "override_location", argtype: "TextIter", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_place_cursor(): None =>
    """
    This function moves the “insert” and “selection_bound” marks
simultaneously.  If you move them to the same place in two steps
with gtk_text_buffer_move_mark(), you will temporarily select a
region in between their old and new locations, which can be pretty
inefficient since the temporarily-selected region will force stuff
to be recalculated. This function moves them as a unit, which can
be optimized.

    {:doh, %{argctype: "const GtkTextIter*", argname: "where", argtype: "TextIter", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_register_deserialize_format(): None =>
    """
    This function registers a rich text deserialization @function along with
its @mime_type with the passed @buffer.

    {:argctype, "GdkAtom"}
{:argname, "rv"}
{:argtype, "Gdk.Atom"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_register_deserialize_tagset(): None =>
    """
    This function registers GTK+’s internal rich text serialization
format with the passed @buffer. See
gtk_text_buffer_register_serialize_tagset() for details.

    {:argctype, "GdkAtom"}
{:argname, "rv"}
{:argtype, "Gdk.Atom"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_register_serialize_format(): None =>
    """
    This function registers a rich text serialization @function along with
its @mime_type with the passed @buffer.

    {:argctype, "GdkAtom"}
{:argname, "rv"}
{:argtype, "Gdk.Atom"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_register_serialize_tagset(): None =>
    """
    This function registers GTK+’s internal rich text serialization
format with the passed @buffer. The internal format does not comply
to any standard rich text format and only works between #GtkTextBuffer
instances. It is capable of serializing all of a text buffer’s tags
and embedded pixbufs.

This function is just a wrapper around
gtk_text_buffer_register_serialize_format(). The mime type used
for registering is “application/x-gtk-text-buffer-rich-text”, or
“application/x-gtk-text-buffer-rich-text;format=@tagset_name” if a
@tagset_name was passed.

The @tagset_name can be used to restrict the transfer of rich text
to buffers with compatible sets of tags, in order to avoid unknown
tags from being pasted. It is probably the common case to pass an
identifier != %NULL here, since the %NULL tagset requires the
receiving buffer to deal with with pasting of arbitrary tags.

    {:argctype, "GdkAtom"}
{:argname, "rv"}
{:argtype, "Gdk.Atom"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_remove_all_tags(): None =>
    """
    Removes all tags in the range between @start and @end.  Be careful
with this function; it could remove tags added in code unrelated to
the code you’re currently writing. That is, using this function is
probably a bad idea if you have two or more unrelated code sections
that add tags.

    {:doh, %{argctype: "const GtkTextIter*", argname: "start", argtype: "TextIter", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const GtkTextIter*", argname: "gend", argtype: "TextIter", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_remove_selection_clipboard(): None =>
    """
    Removes a #GtkClipboard added with
gtk_text_buffer_add_selection_clipboard().

    {:doh, %{argctype: "GtkClipboard*", argname: "clipboard", argtype: "Clipboard", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_remove_tag(): None =>
    """
    Emits the “remove-tag” signal. The default handler for the signal
removes all occurrences of @tag from the given range. @start and
@end don’t have to be in order.

    {:doh, %{argctype: "GtkTextTag*", argname: "gtag", argtype: "TextTag", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const GtkTextIter*", argname: "start", argtype: "TextIter", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const GtkTextIter*", argname: "gend", argtype: "TextIter", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_remove_tag_by_name(): None =>
    """
    Calls gtk_text_tag_table_lookup() on the buffer’s tag table to
get a #GtkTextTag, then calls gtk_text_buffer_remove_tag().

    {:doh, %{argctype: "const gchar*", argname: "name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const GtkTextIter*", argname: "start", argtype: "TextIter", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const GtkTextIter*", argname: "gend", argtype: "TextIter", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_select_range(): None =>
    """
    This function moves the “insert” and “selection_bound” marks
simultaneously.  If you move them in two steps
with gtk_text_buffer_move_mark(), you will temporarily select a
region in between their old and new locations, which can be pretty
inefficient since the temporarily-selected region will force stuff
to be recalculated. This function moves them as a unit, which can
be optimized.

    {:doh, %{argctype: "const GtkTextIter*", argname: "ins", argtype: "TextIter", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const GtkTextIter*", argname: "bound", argtype: "TextIter", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_serialize(): None =>
    """
    This function serializes the portion of text between @start
and @end in the rich text format represented by @format.

@formats to be used must be registered using
gtk_text_buffer_register_serialize_format() or
gtk_text_buffer_register_serialize_tagset() beforehand.

    {:argctype, ""}
{:argname, "rv"}
{:argtype, ""}
{:paramtype, :param}
{:txo, "full"}
*/
    """

fun set_modified(setting_pony: Bool): None =>
"""
Used to keep track of whether the buffer has been modified since the
last time it was saved. Whenever the buffer is saved to disk, call
gtk_text_buffer_set_modified (@buffer, FALSE). When the buffer is modified,
it will automatically toggled on the modified bit again. When the modified
bit flips, the buffer emits the #GtkTextBuffer::modified-changed signal.
"""
  @gtk_text_buffer_set_modified[None](widget, setting_pony)

  fun pony_NOT_IMPLEMENTED_YET_set_text(): None =>
    """
    Deletes current contents of @buffer, and inserts @text instead. If
@len is -1, @text must be nul-terminated. @text must be valid UTF-8.

    {:doh, %{argctype: "const gchar*", argname: "text", argtype: "utf8", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_unregister_deserialize_format(): None =>
    """
    This function unregisters a rich text format that was previously
registered using gtk_text_buffer_register_deserialize_format() or
gtk_text_buffer_register_deserialize_tagset().

    {:doh, %{argctype: "GdkAtom", argname: "format", argtype: "Gdk.Atom", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_unregister_serialize_format(): None =>
    """
    This function unregisters a rich text format that was previously
registered using gtk_text_buffer_register_serialize_format() or
gtk_text_buffer_register_serialize_tagset()

    {:doh, %{argctype: "GdkAtom", argname: "format", argtype: "Gdk.Atom", paramtype: :param, txo: "none"}}
*/
    """

