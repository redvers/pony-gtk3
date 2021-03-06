/*
   needs: ["Bool", "I32", "Pointer[U8 val] ref", "String", "None", "GObjectREF", "GtkEntryBuffer val"]
provides: ["GtkEntry val"]
*/
use "../gobject"
class val GtkEntry is GtkWidget
"""
The #GtkEntry widget is a single line text entry
widget. A fairly large set of key bindings are supported
by default. If the entered text is longer than the allocation
of the widget, the widget will scroll so that the cursor
position is visible.

When using an entry for passwords and other sensitive information,
it can be put into “password mode” using gtk_entry_set_visibility().
In this mode, entered text is displayed using a “invisible” character.
By default, GTK+ picks the best invisible character that is available
in the current font, but it can be changed with
gtk_entry_set_invisible_char(). Since 2.16, GTK+ displays a warning
when Caps Lock or input methods might interfere with entering text in
a password entry. The warning can be turned off with the
#GtkEntry:caps-lock-warning property.

Since 2.16, GtkEntry has the ability to display progress or activity
information behind the text. To make an entry display such information,
use gtk_entry_set_progress_fraction() or gtk_entry_set_progress_pulse_step().

Additionally, GtkEntry can show icons at either side of the entry. These
icons can be activatable by clicking, can be set up as drag source and
can have tooltips. To add an icon, use gtk_entry_set_icon_from_gicon() or
one of the various other functions that set an icon from a stock id, an
icon name or a pixbuf. To trigger an action when the user clicks an icon,
connect to the #GtkEntry::icon-press signal. To allow DND operations
from an icon, use gtk_entry_set_icon_drag_source(). To set a tooltip on
an icon, use gtk_entry_set_icon_tooltip_text() or the corresponding function
for markup.

Note that functionality or information that is only available by clicking
on an icon in an entry may not be accessible at all to users which are not
able to use a mouse or other pointing device. It is therefore recommended
that any such functionality should also be available by other means, e.g.
via the context menu of the entry.

# CSS nodes

|[<!-- language="plain" -->
entry[.read-only][.flat][.warning][.error]
├── image.left
├── image.right
├── undershoot.left
├── undershoot.right
├── [selection]
├── [progress[.pulse]]
╰── [window.popup]
]|

GtkEntry has a main node with the name entry. Depending on the properties
of the entry, the style classes .read-only and .flat may appear. The style
classes .warning and .error may also be used with entries.

When the entry shows icons, it adds subnodes with the name image and the
style class .left or .right, depending on where the icon appears.

When the entry has a selection, it adds a subnode with the name selection.

When the entry shows progress, it adds a subnode with the name progress.
The node has the style class .pulse when the shown progress is pulsing.

The CSS node for a context menu is added as a subnode below entry as well.

The undershoot nodes are used to draw the underflow indication when content
is scrolled out of view. These nodes get the .left and .right style classes
added depending on where the indication is drawn.

When touch is used and touch selection handles are shown, they are using
CSS nodes with name cursor-handle. They get the .top or .bottom style class
depending on where they are shown in relation to the selection. If there is
just a single handle for the text cursor, it gets the style class
.insertion-cursor.
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
    widget = @gtk_entry_new[GObjectREF]() //

  new val new_with_buffer(buffer_pony: GtkEntryBuffer val) =>
    widget = @gtk_entry_new_with_buffer[GObjectREF](buffer_pony.gtkwidget()) //


fun get_activates_default(): Bool =>
"""
Retrieves the value set by gtk_entry_set_activates_default().
"""
  @gtk_entry_get_activates_default[Bool](widget)

  fun pony_NOT_IMPLEMENTED_YET_get_alignment(): None =>
    """
    Gets the value set by gtk_entry_set_alignment().

    {:argctype, "gfloat"}
{:argname, "rv"}
{:argtype, "gfloat"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_attributes(): None =>
    """
    Gets the attribute list that was set on the entry using
gtk_entry_set_attributes(), if any.

    {:argctype, "PangoAttrList*"}
{:argname, "rv"}
{:argtype, "Pango.AttrList"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_buffer(): None =>
    """
    Get the #GtkEntryBuffer object which holds the text for
this widget.

    {:argctype, "GtkEntryBuffer*"}
{:argname, "rv"}
{:argtype, "EntryBuffer"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_completion(): None =>
    """
    Returns the auxiliary completion object currently in use by @entry.

    {:argctype, "GtkEntryCompletion*"}
{:argname, "rv"}
{:argtype, "EntryCompletion"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

fun get_current_icon_drag_source(): I32 =>
"""
Returns the index of the icon which is the source of the current
DND operation, or -1.

This function is meant to be used in a #GtkWidget::drag-data-get
callback.
"""
  @gtk_entry_get_current_icon_drag_source[I32](widget)

  fun pony_NOT_IMPLEMENTED_YET_get_cursor_hadjustment(): None =>
    """
    Retrieves the horizontal cursor adjustment for the entry.
See gtk_entry_set_cursor_hadjustment().

    {:argctype, "GtkAdjustment*"}
{:argname, "rv"}
{:argtype, "Adjustment"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

fun get_has_frame(): Bool =>
"""
Gets the value set by gtk_entry_set_has_frame().
"""
  @gtk_entry_get_has_frame[Bool](widget)

  fun pony_NOT_IMPLEMENTED_YET_get_icon_activatable(): None =>
    """
    Returns whether the icon is activatable.

    {:doh, %{argctype: "GtkEntryIconPosition", argname: "icon_pos", argtype: "EntryIconPosition", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_icon_area(): None =>
    """
    Gets the area where entry’s icon at @icon_pos is drawn.
This function is useful when drawing something to the
entry in a draw callback.

If the entry is not realized or has no icon at the given position,
@icon_area is filled with zeros. Otherwise, @icon_area will be filled
with the icon’s allocation, relative to @entry’s allocation.

See also gtk_entry_get_text_area()

    {:doh, %{argctype: "GtkEntryIconPosition", argname: "icon_pos", argtype: "EntryIconPosition", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkRectangle*", argname: "icon_area", argtype: "Gdk.Rectangle", paramtype: :param, txo: "none"}}
*/
    """

fun get_icon_at_pos(x_pony: I32, y_pony: I32): I32 =>
"""
Finds the icon at the given position and return its index. The
position’s coordinates are relative to the @entry’s top left corner.
If @x, @y doesn’t lie inside an icon, -1 is returned.
This function is intended for use in a #GtkWidget::query-tooltip
signal handler.
"""
  @gtk_entry_get_icon_at_pos[I32](widget, x_pony, y_pony)

  fun pony_NOT_IMPLEMENTED_YET_get_icon_gicon(): None =>
    """
    Retrieves the #GIcon used for the icon, or %NULL if there is
no icon or if the icon was set by some other method (e.g., by
stock, pixbuf, or icon name).

    {:argctype, "GIcon*"}
{:argname, "rv"}
{:argtype, "Gio.Icon"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_icon_name(): None =>
    """
    Retrieves the icon name used for the icon, or %NULL if there is
no icon or if the icon was set by some other method (e.g., by
pixbuf, stock or gicon).

    {:doh, %{argctype: "GtkEntryIconPosition", argname: "icon_pos", argtype: "EntryIconPosition", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_icon_pixbuf(): None =>
    """
    Retrieves the image used for the icon.

Unlike the other methods of setting and getting icon data, this
method will work regardless of whether the icon was set using a
#GdkPixbuf, a #GIcon, a stock item, or an icon name.

    {:argctype, "GdkPixbuf*"}
{:argname, "rv"}
{:argtype, "GdkPixbuf.Pixbuf"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_icon_sensitive(): None =>
    """
    Returns whether the icon appears sensitive or insensitive.

    {:doh, %{argctype: "GtkEntryIconPosition", argname: "icon_pos", argtype: "EntryIconPosition", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_icon_stock(): None =>
    """
    Retrieves the stock id used for the icon, or %NULL if there is
no icon or if the icon was set by some other method (e.g., by
pixbuf, icon name or gicon).

    {:doh, %{argctype: "GtkEntryIconPosition", argname: "icon_pos", argtype: "EntryIconPosition", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_icon_storage_type(): None =>
    """
    Gets the type of representation being used by the icon
to store image data. If the icon has no image data,
the return value will be %GTK_IMAGE_EMPTY.

    {:argctype, "GtkImageType"}
{:argname, "rv"}
{:argtype, "ImageType"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_icon_tooltip_markup(): None =>
    """
    Gets the contents of the tooltip on the icon at the specified
position in @entry.

    {:argctype, "gchar*"}
{:argname, "rv"}
{:argtype, "utf8"}
{:paramtype, :param}
{:txo, "full"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_icon_tooltip_text(): None =>
    """
    Gets the contents of the tooltip on the icon at the specified
position in @entry.

    {:argctype, "gchar*"}
{:argname, "rv"}
{:argtype, "utf8"}
{:paramtype, :param}
{:txo, "full"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_inner_border(): None =>
    """
    This function returns the entry’s #GtkEntry:inner-border property. See
gtk_entry_set_inner_border() for more information.

    {:argctype, "const GtkBorder*"}
{:argname, "rv"}
{:argtype, "Border"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_input_hints(): None =>
    """
    Gets the value of the #GtkEntry:input-hints property.

    {:argctype, "GtkInputHints"}
{:argname, "rv"}
{:argtype, "InputHints"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_input_purpose(): None =>
    """
    Gets the value of the #GtkEntry:input-purpose property.

    {:argctype, "GtkInputPurpose"}
{:argname, "rv"}
{:argtype, "InputPurpose"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_invisible_char(): None =>
    """
    Retrieves the character displayed in place of the real characters
for entries with visibility set to false. See gtk_entry_set_invisible_char().

    {:argctype, "gunichar"}
{:argname, "rv"}
{:argtype, "gunichar"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_layout(): None =>
    """
    Gets the #PangoLayout used to display the entry.
The layout is useful to e.g. convert text positions to
pixel positions, in combination with gtk_entry_get_layout_offsets().
The returned layout is owned by the entry and must not be
modified or freed by the caller.

Keep in mind that the layout text may contain a preedit string, so
gtk_entry_layout_index_to_text_index() and
gtk_entry_text_index_to_layout_index() are needed to convert byte
indices in the layout to byte indices in the entry contents.

    {:argctype, "PangoLayout*"}
{:argname, "rv"}
{:argtype, "Pango.Layout"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_layout_offsets(): None =>
    """
    Obtains the position of the #PangoLayout used to render text
in the entry, in widget coordinates. Useful if you want to line
up the text in an entry with some other text, e.g. when using the
entry to implement editable cells in a sheet widget.

Also useful to convert mouse events into coordinates inside the
#PangoLayout, e.g. to take some action if some part of the entry text
is clicked.

Note that as the user scrolls around in the entry the offsets will
change; you’ll need to connect to the “notify::scroll-offset”
signal to track this. Remember when using the #PangoLayout
functions you need to convert to and from pixels using
PANGO_PIXELS() or #PANGO_SCALE.

Keep in mind that the layout text may contain a preedit string, so
gtk_entry_layout_index_to_text_index() and
gtk_entry_text_index_to_layout_index() are needed to convert byte
indices in the layout to byte indices in the entry contents.

    {:doh, %{argctype: "gint*", argname: "x", argtype: "gint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gint*", argname: "y", argtype: "gint", paramtype: :param, txo: "full"}}
*/
    """

fun get_max_length(): I32 =>
"""
Retrieves the maximum allowed length of the text in
@entry. See gtk_entry_set_max_length().

This is equivalent to getting @entry's #GtkEntryBuffer and
calling gtk_entry_buffer_get_max_length() on it.
"""
  @gtk_entry_get_max_length[I32](widget)

fun get_max_width_chars(): I32 =>
"""
Retrieves the desired maximum width of @entry, in characters.
See gtk_entry_set_max_width_chars().
"""
  @gtk_entry_get_max_width_chars[I32](widget)

fun get_overwrite_mode(): Bool =>
"""
Gets the value set by gtk_entry_set_overwrite_mode().
"""
  @gtk_entry_get_overwrite_mode[Bool](widget)

fun get_placeholder_text(): String =>
"""
Retrieves the text that will be displayed when @entry is empty and unfocused
"""
  var cstring_pony: Pointer[U8 val] ref = @gtk_entry_get_placeholder_text[Pointer[U8 val] ref](widget)
  var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

  fun pony_NOT_IMPLEMENTED_YET_get_progress_fraction(): None =>
    """
    Returns the current fraction of the task that’s been completed.
See gtk_entry_set_progress_fraction().

    {:argctype, "gdouble"}
{:argname, "rv"}
{:argtype, "gdouble"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_progress_pulse_step(): None =>
    """
    Retrieves the pulse step set with gtk_entry_set_progress_pulse_step().

    {:argctype, "gdouble"}
{:argname, "rv"}
{:argtype, "gdouble"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_tabs(): None =>
    """
    Gets the tabstops that were set on the entry using gtk_entry_set_tabs(), if
any.

    {:argctype, "PangoTabArray*"}
{:argname, "rv"}
{:argtype, "Pango.TabArray"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

fun get_text(): String =>
"""
Retrieves the contents of the entry widget.
See also gtk_editable_get_chars().

This is equivalent to getting @entry's #GtkEntryBuffer and calling
gtk_entry_buffer_get_text() on it.
"""
  var cstring_pony: Pointer[U8 val] ref = @gtk_entry_get_text[Pointer[U8 val] ref](widget)
  var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

  fun pony_NOT_IMPLEMENTED_YET_get_text_area(): None =>
    """
    Gets the area where the entry’s text is drawn. This function is
useful when drawing something to the entry in a draw callback.

If the entry is not realized, @text_area is filled with zeros.

See also gtk_entry_get_icon_area().

    {:doh, %{argctype: "GdkRectangle*", argname: "text_area", argtype: "Gdk.Rectangle", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_text_length(): None =>
    """
    Retrieves the current length of the text in
@entry.

This is equivalent to getting @entry's #GtkEntryBuffer and
calling gtk_entry_buffer_get_length() on it.

    {:argctype, "guint16"}
{:argname, "rv"}
{:argtype, "guint16"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

fun get_visibility(): Bool =>
"""
Retrieves whether the text in @entry is visible. See
gtk_entry_set_visibility().
"""
  @gtk_entry_get_visibility[Bool](widget)

fun get_width_chars(): I32 =>
"""
Gets the value set by gtk_entry_set_width_chars().
"""
  @gtk_entry_get_width_chars[I32](widget)

fun grab_focus_without_selecting(): None =>
"""
Causes @entry to have keyboard focus.

It behaves like gtk_widget_grab_focus(),
except that it doesn't select the contents of the entry.
You only want to call this on some special entries
which the user usually doesn't want to replace all text in,
such as search-as-you-type entries.
"""
  @gtk_entry_grab_focus_without_selecting[None](widget)

  fun pony_NOT_IMPLEMENTED_YET_im_context_filter_keypress(): None =>
    """
    Allow the #GtkEntry input method to internally handle key press
and release events. If this function returns %TRUE, then no further
processing should be done for this key event. See
gtk_im_context_filter_keypress().

Note that you are expected to call this function from your handler
when overriding key event handling. This is needed in the case when
you need to insert your own key handling between the input method
and the default key event handling of the #GtkEntry.
See gtk_text_view_reset_im_context() for an example of use.

    {:doh, %{argctype: "GdkEventKey*", argname: "event", argtype: "Gdk.EventKey", paramtype: :param, txo: "none"}}
*/
    """

fun layout_index_to_text_index(layout_index_pony: I32): I32 =>
"""
Converts from a position in the entry’s #PangoLayout (returned by
gtk_entry_get_layout()) to a position in the entry contents
(returned by gtk_entry_get_text()).
"""
  @gtk_entry_layout_index_to_text_index[I32](widget, layout_index_pony)

fun progress_pulse(): None =>
"""
Indicates that some progress is made, but you don’t know how much.
Causes the entry’s progress indicator to enter “activity mode,”
where a block bounces back and forth. Each call to
gtk_entry_progress_pulse() causes the block to move by a little bit
(the amount of movement per pulse is determined by
gtk_entry_set_progress_pulse_step()).
"""
  @gtk_entry_progress_pulse[None](widget)

fun reset_im_context(): None =>
"""
Reset the input method context of the entry if needed.

This can be necessary in the case where modifying the buffer
would confuse on-going input method behavior.
"""
  @gtk_entry_reset_im_context[None](widget)

fun set_activates_default(setting_pony: Bool): None =>
"""
If @setting is %TRUE, pressing Enter in the @entry will activate the default
widget for the window containing the entry. This usually means that
the dialog box containing the entry will be closed, since the default
widget is usually one of the dialog buttons.

(For experts: if @setting is %TRUE, the entry calls
gtk_window_activate_default() on the window containing the entry, in
the default handler for the #GtkEntry::activate signal.)
"""
  @gtk_entry_set_activates_default[None](widget, setting_pony)

  fun pony_NOT_IMPLEMENTED_YET_set_alignment(): None =>
    """
    Sets the alignment for the contents of the entry. This controls
the horizontal positioning of the contents when the displayed
text is shorter than the width of the entry.

    {:doh, %{argctype: "gfloat", argname: "xalign", argtype: "gfloat", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_set_attributes(): None =>
    """
    Sets a #PangoAttrList; the attributes in the list are applied to the
entry text.

    {:doh, %{argctype: "PangoAttrList*", argname: "attrs", argtype: "Pango.AttrList", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_set_buffer(): None =>
    """
    Set the #GtkEntryBuffer object which holds the text for
this widget.

    {:doh, %{argctype: "GtkEntryBuffer*", argname: "buffer", argtype: "EntryBuffer", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_set_completion(): None =>
    """
    Sets @completion to be the auxiliary completion object to use with @entry.
All further configuration of the completion mechanism is done on
@completion using the #GtkEntryCompletion API. Completion is disabled if
@completion is set to %NULL.

    {:doh, %{argctype: "GtkEntryCompletion*", argname: "completion", argtype: "EntryCompletion", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_set_cursor_hadjustment(): None =>
    """
    Hooks up an adjustment to the cursor position in an entry, so that when
the cursor is moved, the adjustment is scrolled to show that position.
See gtk_scrolled_window_get_hadjustment() for a typical way of obtaining
the adjustment.

The adjustment has to be in pixel units and in the same coordinate system
as the entry.

    {:doh, %{argctype: "GtkAdjustment*", argname: "adjustment", argtype: "Adjustment", paramtype: :param, txo: "none"}}
*/
    """

fun set_has_frame(setting_pony: Bool): None =>
"""
Sets whether the entry has a beveled frame around it.
"""
  @gtk_entry_set_has_frame[None](widget, setting_pony)

  fun pony_NOT_IMPLEMENTED_YET_set_icon_activatable(): None =>
    """
    Sets whether the icon is activatable.

    {:doh, %{argctype: "GtkEntryIconPosition", argname: "icon_pos", argtype: "EntryIconPosition", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_set_icon_drag_source(): None =>
    """
    Sets up the icon at the given position so that GTK+ will start a drag
operation when the user clicks and drags the icon.

To handle the drag operation, you need to connect to the usual
#GtkWidget::drag-data-get (or possibly #GtkWidget::drag-data-delete)
signal, and use gtk_entry_get_current_icon_drag_source() in
your signal handler to find out if the drag was started from
an icon.

By default, GTK+ uses the icon as the drag icon. You can use the
#GtkWidget::drag-begin signal to set a different icon. Note that you
have to use g_signal_connect_after() to ensure that your signal handler
gets executed after the default handler.

    {:doh, %{argctype: "GtkEntryIconPosition", argname: "icon_pos", argtype: "EntryIconPosition", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkTargetList*", argname: "target_list", argtype: "TargetList", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkDragAction", argname: "actions", argtype: "Gdk.DragAction", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_set_icon_from_gicon(): None =>
    """
    Sets the icon shown in the entry at the specified position
from the current icon theme.
If the icon isn’t known, a “broken image” icon will be displayed
instead.

If @icon is %NULL, no icon will be shown in the specified position.

    {:doh, %{argctype: "GtkEntryIconPosition", argname: "icon_pos", argtype: "EntryIconPosition", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GIcon*", argname: "icon", argtype: "Gio.Icon", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_set_icon_from_icon_name(): None =>
    """
    Sets the icon shown in the entry at the specified position
from the current icon theme.

If the icon name isn’t known, a “broken image” icon will be displayed
instead.

If @icon_name is %NULL, no icon will be shown in the specified position.

    {:doh, %{argctype: "GtkEntryIconPosition", argname: "icon_pos", argtype: "EntryIconPosition", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "icon_name", argtype: "utf8", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_set_icon_from_pixbuf(): None =>
    """
    Sets the icon shown in the specified position using a pixbuf.

If @pixbuf is %NULL, no icon will be shown in the specified position.

    {:doh, %{argctype: "GtkEntryIconPosition", argname: "icon_pos", argtype: "EntryIconPosition", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkPixbuf*", argname: "pixbuf", argtype: "GdkPixbuf.Pixbuf", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_set_icon_from_stock(): None =>
    """
    Sets the icon shown in the entry at the specified position from
a stock image.

If @stock_id is %NULL, no icon will be shown in the specified position.

    {:doh, %{argctype: "GtkEntryIconPosition", argname: "icon_pos", argtype: "EntryIconPosition", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "stock_id", argtype: "utf8", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_set_icon_sensitive(): None =>
    """
    Sets the sensitivity for the specified icon.

    {:doh, %{argctype: "GtkEntryIconPosition", argname: "icon_pos", argtype: "EntryIconPosition", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_set_icon_tooltip_markup(): None =>
    """
    Sets @tooltip as the contents of the tooltip for the icon at
the specified position. @tooltip is assumed to be marked up with
the [Pango text markup language][PangoMarkupFormat].

Use %NULL for @tooltip to remove an existing tooltip.

See also gtk_widget_set_tooltip_markup() and
gtk_entry_set_icon_tooltip_text().

    {:doh, %{argctype: "GtkEntryIconPosition", argname: "icon_pos", argtype: "EntryIconPosition", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "tooltip", argtype: "utf8", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_set_icon_tooltip_text(): None =>
    """
    Sets @tooltip as the contents of the tooltip for the icon
at the specified position.

Use %NULL for @tooltip to remove an existing tooltip.

See also gtk_widget_set_tooltip_text() and
gtk_entry_set_icon_tooltip_markup().

If you unset the widget tooltip via gtk_widget_set_tooltip_text() or
gtk_widget_set_tooltip_markup(), this sets GtkWidget:has-tooltip to %FALSE,
which suppresses icon tooltips too. You can resolve this by then calling
gtk_widget_set_has_tooltip() to set GtkWidget:has-tooltip back to %TRUE, or
setting at least one non-empty tooltip on any icon achieves the same result.

    {:doh, %{argctype: "GtkEntryIconPosition", argname: "icon_pos", argtype: "EntryIconPosition", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "tooltip", argtype: "utf8", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_set_inner_border(): None =>
    """
    Sets %entry’s inner-border property to @border, or clears it if %NULL
is passed. The inner-border is the area around the entry’s text, but
inside its frame.

If set, this property overrides the inner-border style property.
Overriding the style-provided border is useful when you want to do
in-place editing of some text in a canvas or list widget, where
pixel-exact positioning of the entry is important.

    {:doh, %{argctype: "const GtkBorder*", argname: "border", argtype: "Border", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_set_input_hints(): None =>
    """
    Sets the #GtkEntry:input-hints property, which
allows input methods to fine-tune their behaviour.

    {:doh, %{argctype: "GtkInputHints", argname: "hints", argtype: "InputHints", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_set_input_purpose(): None =>
    """
    Sets the #GtkEntry:input-purpose property which
can be used by on-screen keyboards and other input
methods to adjust their behaviour.

    {:doh, %{argctype: "GtkInputPurpose", argname: "purpose", argtype: "InputPurpose", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_set_invisible_char(): None =>
    """
    Sets the character to use in place of the actual text when
gtk_entry_set_visibility() has been called to set text visibility
to %FALSE. i.e. this is the character used in “password mode” to
show the user how many characters have been typed. By default, GTK+
picks the best invisible char available in the current font. If you
set the invisible char to 0, then the user will get no feedback
at all; there will be no text on the screen as they type.

    {:doh, %{argctype: "gunichar", argname: "ch", argtype: "gunichar", paramtype: :param, txo: "none"}}
*/
    """

fun set_max_length(max_pony: I32): None =>
"""
Sets the maximum allowed length of the contents of the widget. If
the current contents are longer than the given length, then they
will be truncated to fit.

This is equivalent to getting @entry's #GtkEntryBuffer and
calling gtk_entry_buffer_set_max_length() on it.
]|
"""
  @gtk_entry_set_max_length[None](widget, max_pony)

fun set_max_width_chars(n_chars_pony: I32): None =>
"""
Sets the desired maximum width in characters of @entry.
"""
  @gtk_entry_set_max_width_chars[None](widget, n_chars_pony)

fun set_overwrite_mode(overwrite_pony: Bool): None =>
"""
Sets whether the text is overwritten when typing in the #GtkEntry.
"""
  @gtk_entry_set_overwrite_mode[None](widget, overwrite_pony)

  fun pony_NOT_IMPLEMENTED_YET_set_placeholder_text(): None =>
    """
    Sets text to be displayed in @entry when it is empty and unfocused.
This can be used to give a visual hint of the expected contents of
the #GtkEntry.

Note that since the placeholder text gets removed when the entry
received focus, using this feature is a bit problematic if the entry
is given the initial focus in a window. Sometimes this can be
worked around by delaying the initial focus setting until the
first key event arrives.

    {:doh, %{argctype: "const gchar*", argname: "text", argtype: "utf8", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_set_progress_fraction(): None =>
    """
    Causes the entry’s progress indicator to “fill in” the given
fraction of the bar. The fraction should be between 0.0 and 1.0,
inclusive.

    {:doh, %{argctype: "gdouble", argname: "fraction", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_set_progress_pulse_step(): None =>
    """
    Sets the fraction of total entry width to move the progress
bouncing block for each call to gtk_entry_progress_pulse().

    {:doh, %{argctype: "gdouble", argname: "fraction", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_set_tabs(): None =>
    """
    Sets a #PangoTabArray; the tabstops in the array are applied to the entry
text.

    {:doh, %{argctype: "PangoTabArray*", argname: "tabs", argtype: "Pango.TabArray", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_set_text(): None =>
    """
    Sets the text in the widget to the given
value, replacing the current contents.

See gtk_entry_buffer_set_text().

    {:doh, %{argctype: "const gchar*", argname: "text", argtype: "utf8", paramtype: :param, txo: "none"}}
*/
    """

fun set_visibility(visible_pony: Bool): None =>
"""
Sets whether the contents of the entry are visible or not.
When visibility is set to %FALSE, characters are displayed
as the invisible char, and will also appear that way when
the text in the entry widget is copied elsewhere.

By default, GTK+ picks the best invisible character available
in the current font, but it can be changed with
gtk_entry_set_invisible_char().

Note that you probably want to set #GtkEntry:input-purpose
to %GTK_INPUT_PURPOSE_PASSWORD or %GTK_INPUT_PURPOSE_PIN to
inform input methods about the purpose of this entry,
in addition to setting visibility to %FALSE.
"""
  @gtk_entry_set_visibility[None](widget, visible_pony)

fun set_width_chars(n_chars_pony: I32): None =>
"""
Changes the size request of the entry to be about the right size
for @n_chars characters. Note that it changes the size
request, the size can still be affected by
how you pack the widget into containers. If @n_chars is -1, the
size reverts to the default entry size.
"""
  @gtk_entry_set_width_chars[None](widget, n_chars_pony)

fun text_index_to_layout_index(text_index_pony: I32): I32 =>
"""
Converts from a position in the entry contents (returned
by gtk_entry_get_text()) to a position in the
entry’s #PangoLayout (returned by gtk_entry_get_layout(),
with text retrieved via pango_layout_get_text()).
"""
  @gtk_entry_text_index_to_layout_index[I32](widget, text_index_pony)

fun unset_invisible_char(): None =>
"""
Unsets the invisible char previously set with
gtk_entry_set_invisible_char(). So that the
default invisible char is used again.
"""
  @gtk_entry_unset_invisible_char[None](widget)

