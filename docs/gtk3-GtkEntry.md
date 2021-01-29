# GtkEntry
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L6)</span>

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


```pony
class val GtkEntry is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L85)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkEntry val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkEntry](gtk3-GtkEntry.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L88)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkEntry val^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkEntry](gtk3-GtkEntry.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L91)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkEntry val^
```

#### Returns

* [GtkEntry](gtk3-GtkEntry.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L95)</span>


```pony
new val create()
: GtkEntry val^
```

#### Returns

* [GtkEntry](gtk3-GtkEntry.md) val^

---

### new_with_buffer
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L98)</span>


```pony
new val new_with_buffer(
  buffer_pony: GtkEntryBuffer val)
: GtkEntry val^
```
#### Parameters

*   buffer_pony: [GtkEntryBuffer](gtk3-GtkEntryBuffer.md) val

#### Returns

* [GtkEntry](gtk3-GtkEntry.md) val^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L81)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L83)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### get_activates_default
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L102)</span>


Retrieves the value set by gtk_entry_set_activates_default().


```pony
fun box get_activates_default()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_alignment
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L108)</span>


    Gets the value set by gtk_entry_set_alignment().

    {:argctype, "gfloat"}
{:argname, "rv"}
{:argtype, "gfloat"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_alignment()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_attributes
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L120)</span>


    Gets the attribute list that was set on the entry using
gtk_entry_set_attributes(), if any.

    {:argctype, "PangoAttrList*"}
{:argname, "rv"}
{:argtype, "Pango.AttrList"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_attributes()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_buffer
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L133)</span>


    Get the #GtkEntryBuffer object which holds the text for
this widget.

    {:argctype, "GtkEntryBuffer*"}
{:argname, "rv"}
{:argtype, "EntryBuffer"}
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

### pony_NOT_IMPLEMENTED_YET_get_completion
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L146)</span>


    Returns the auxiliary completion object currently in use by @entry.

    {:argctype, "GtkEntryCompletion*"}
{:argname, "rv"}
{:argtype, "EntryCompletion"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_completion()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### get_current_icon_drag_source
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L158)</span>


Returns the index of the icon which is the source of the current
DND operation, or -1.

This function is meant to be used in a #GtkWidget::drag-data-get
callback.


```pony
fun box get_current_icon_drag_source()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_cursor_hadjustment
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L168)</span>


    Retrieves the horizontal cursor adjustment for the entry.
See gtk_entry_set_cursor_hadjustment().

    {:argctype, "GtkAdjustment*"}
{:argname, "rv"}
{:argtype, "Adjustment"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_cursor_hadjustment()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### get_has_frame
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L181)</span>


Gets the value set by gtk_entry_set_has_frame().


```pony
fun box get_has_frame()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_icon_activatable
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L187)</span>


    Returns whether the icon is activatable.

    {:doh, %{argctype: "GtkEntryIconPosition", argname: "icon_pos", argtype: "EntryIconPosition", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_icon_activatable()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_icon_area
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L195)</span>


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


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_icon_area()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### get_icon_at_pos
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L212)</span>


Finds the icon at the given position and return its index. The
position’s coordinates are relative to the @entry’s top left corner.
If @x, @y doesn’t lie inside an icon, -1 is returned.
This function is intended for use in a #GtkWidget::query-tooltip
signal handler.


```pony
fun box get_icon_at_pos(
  x_pony: I32 val,
  y_pony: I32 val)
: I32 val
```
#### Parameters

*   x_pony: [I32](builtin-I32.md) val
*   y_pony: [I32](builtin-I32.md) val

#### Returns

* [I32](builtin-I32.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_icon_gicon
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L222)</span>


    Retrieves the #GIcon used for the icon, or %NULL if there is
no icon or if the icon was set by some other method (e.g., by
stock, pixbuf, or icon name).

    {:argctype, "GIcon*"}
{:argname, "rv"}
{:argtype, "Gio.Icon"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_icon_gicon()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_icon_name
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L236)</span>


    Retrieves the icon name used for the icon, or %NULL if there is
no icon or if the icon was set by some other method (e.g., by
pixbuf, stock or gicon).

    {:doh, %{argctype: "GtkEntryIconPosition", argname: "icon_pos", argtype: "EntryIconPosition", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_icon_name()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_icon_pixbuf
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L246)</span>


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


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_icon_pixbuf()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_icon_sensitive
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L262)</span>


    Returns whether the icon appears sensitive or insensitive.

    {:doh, %{argctype: "GtkEntryIconPosition", argname: "icon_pos", argtype: "EntryIconPosition", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_icon_sensitive()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_icon_stock
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L270)</span>


    Retrieves the stock id used for the icon, or %NULL if there is
no icon or if the icon was set by some other method (e.g., by
pixbuf, icon name or gicon).

    {:doh, %{argctype: "GtkEntryIconPosition", argname: "icon_pos", argtype: "EntryIconPosition", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_icon_stock()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_icon_storage_type
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L280)</span>


    Gets the type of representation being used by the icon
to store image data. If the icon has no image data,
the return value will be %GTK_IMAGE_EMPTY.

    {:argctype, "GtkImageType"}
{:argname, "rv"}
{:argtype, "ImageType"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_icon_storage_type()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_icon_tooltip_markup
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L294)</span>


    Gets the contents of the tooltip on the icon at the specified
position in @entry.

    {:argctype, "gchar*"}
{:argname, "rv"}
{:argtype, "utf8"}
{:paramtype, :param}
{:txo, "full"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_icon_tooltip_markup()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_icon_tooltip_text
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L307)</span>


    Gets the contents of the tooltip on the icon at the specified
position in @entry.

    {:argctype, "gchar*"}
{:argname, "rv"}
{:argtype, "utf8"}
{:paramtype, :param}
{:txo, "full"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_icon_tooltip_text()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_inner_border
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L320)</span>


    This function returns the entry’s #GtkEntry:inner-border property. See
gtk_entry_set_inner_border() for more information.

    {:argctype, "const GtkBorder*"}
{:argname, "rv"}
{:argtype, "Border"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_inner_border()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_input_hints
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L333)</span>


    Gets the value of the #GtkEntry:input-hints property.

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
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L345)</span>


    Gets the value of the #GtkEntry:input-purpose property.

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

### pony_NOT_IMPLEMENTED_YET_get_invisible_char
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L357)</span>


    Retrieves the character displayed in place of the real characters
for entries with visibility set to false. See gtk_entry_set_invisible_char().

    {:argctype, "gunichar"}
{:argname, "rv"}
{:argtype, "gunichar"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_invisible_char()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_layout
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L370)</span>


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


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_layout()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_layout_offsets
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L391)</span>


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


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_layout_offsets()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### get_max_length
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L418)</span>


Retrieves the maximum allowed length of the text in
@entry. See gtk_entry_set_max_length().

This is equivalent to getting @entry's #GtkEntryBuffer and
calling gtk_entry_buffer_get_max_length() on it.


```pony
fun box get_max_length()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### get_max_width_chars
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L428)</span>


Retrieves the desired maximum width of @entry, in characters.
See gtk_entry_set_max_width_chars().


```pony
fun box get_max_width_chars()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### get_overwrite_mode
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L435)</span>


Gets the value set by gtk_entry_set_overwrite_mode().


```pony
fun box get_overwrite_mode()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_placeholder_text
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L441)</span>


Retrieves the text that will be displayed when @entry is empty and unfocused


```pony
fun box get_placeholder_text()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_progress_fraction
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L449)</span>


    Returns the current fraction of the task that’s been completed.
See gtk_entry_set_progress_fraction().

    {:argctype, "gdouble"}
{:argname, "rv"}
{:argtype, "gdouble"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_progress_fraction()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_progress_pulse_step
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L462)</span>


    Retrieves the pulse step set with gtk_entry_set_progress_pulse_step().

    {:argctype, "gdouble"}
{:argname, "rv"}
{:argtype, "gdouble"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_progress_pulse_step()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_tabs
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L474)</span>


    Gets the tabstops that were set on the entry using gtk_entry_set_tabs(), if
any.

    {:argctype, "PangoTabArray*"}
{:argname, "rv"}
{:argtype, "Pango.TabArray"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_tabs()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### get_text
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L487)</span>


Retrieves the contents of the entry widget.
See also gtk_editable_get_chars().

This is equivalent to getting @entry's #GtkEntryBuffer and calling
gtk_entry_buffer_get_text() on it.


```pony
fun box get_text()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_text_area
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L499)</span>


    Gets the area where the entry’s text is drawn. This function is
useful when drawing something to the entry in a draw callback.

If the entry is not realized, @text_area is filled with zeros.

See also gtk_entry_get_icon_area().

    {:doh, %{argctype: "GdkRectangle*", argname: "text_area", argtype: "Gdk.Rectangle", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_text_area()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_text_length
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L512)</span>


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


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_text_length()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### get_visibility
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L528)</span>


Retrieves whether the text in @entry is visible. See
gtk_entry_set_visibility().


```pony
fun box get_visibility()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_width_chars
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L535)</span>


Gets the value set by gtk_entry_set_width_chars().


```pony
fun box get_width_chars()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### grab_focus_without_selecting
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L541)</span>


Causes @entry to have keyboard focus.

It behaves like gtk_widget_grab_focus(),
except that it doesn't select the contents of the entry.
You only want to call this on some special entries
which the user usually doesn't want to replace all text in,
such as search-as-you-type entries.


```pony
fun box grab_focus_without_selecting()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_im_context_filter_keypress
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L553)</span>


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


```pony
fun box pony_NOT_IMPLEMENTED_YET_im_context_filter_keypress()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### layout_index_to_text_index
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L570)</span>


Converts from a position in the entry’s #PangoLayout (returned by
gtk_entry_get_layout()) to a position in the entry contents
(returned by gtk_entry_get_text()).


```pony
fun box layout_index_to_text_index(
  layout_index_pony: I32 val)
: I32 val
```
#### Parameters

*   layout_index_pony: [I32](builtin-I32.md) val

#### Returns

* [I32](builtin-I32.md) val

---

### progress_pulse
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L578)</span>


Indicates that some progress is made, but you don’t know how much.
Causes the entry’s progress indicator to enter “activity mode,”
where a block bounces back and forth. Each call to
gtk_entry_progress_pulse() causes the block to move by a little bit
(the amount of movement per pulse is determined by
gtk_entry_set_progress_pulse_step()).


```pony
fun box progress_pulse()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### reset_im_context
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L589)</span>


Reset the input method context of the entry if needed.

This can be necessary in the case where modifying the buffer
would confuse on-going input method behavior.


```pony
fun box reset_im_context()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### set_activates_default
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L598)</span>


If @setting is %TRUE, pressing Enter in the @entry will activate the default
widget for the window containing the entry. This usually means that
the dialog box containing the entry will be closed, since the default
widget is usually one of the dialog buttons.

(For experts: if @setting is %TRUE, the entry calls
gtk_window_activate_default() on the window containing the entry, in
the default handler for the #GtkEntry::activate signal.)


```pony
fun box set_activates_default(
  setting_pony: Bool val)
: None val
```
#### Parameters

*   setting_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_alignment
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L611)</span>


    Sets the alignment for the contents of the entry. This controls
the horizontal positioning of the contents when the displayed
text is shorter than the width of the entry.

    {:doh, %{argctype: "gfloat", argname: "xalign", argtype: "gfloat", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_alignment()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_attributes
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L621)</span>


    Sets a #PangoAttrList; the attributes in the list are applied to the
entry text.

    {:doh, %{argctype: "PangoAttrList*", argname: "attrs", argtype: "Pango.AttrList", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_attributes()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_buffer
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L630)</span>


    Set the #GtkEntryBuffer object which holds the text for
this widget.

    {:doh, %{argctype: "GtkEntryBuffer*", argname: "buffer", argtype: "EntryBuffer", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_buffer()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_completion
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L639)</span>


    Sets @completion to be the auxiliary completion object to use with @entry.
All further configuration of the completion mechanism is done on
@completion using the #GtkEntryCompletion API. Completion is disabled if
@completion is set to %NULL.

    {:doh, %{argctype: "GtkEntryCompletion*", argname: "completion", argtype: "EntryCompletion", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_completion()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_cursor_hadjustment
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L650)</span>


    Hooks up an adjustment to the cursor position in an entry, so that when
the cursor is moved, the adjustment is scrolled to show that position.
See gtk_scrolled_window_get_hadjustment() for a typical way of obtaining
the adjustment.

The adjustment has to be in pixel units and in the same coordinate system
as the entry.

    {:doh, %{argctype: "GtkAdjustment*", argname: "adjustment", argtype: "Adjustment", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_cursor_hadjustment()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### set_has_frame
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L664)</span>


Sets whether the entry has a beveled frame around it.


```pony
fun box set_has_frame(
  setting_pony: Bool val)
: None val
```
#### Parameters

*   setting_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_icon_activatable
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L670)</span>


    Sets whether the icon is activatable.

    {:doh, %{argctype: "GtkEntryIconPosition", argname: "icon_pos", argtype: "EntryIconPosition", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_icon_activatable()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_icon_drag_source
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L678)</span>


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


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_icon_drag_source()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_icon_from_gicon
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L700)</span>


    Sets the icon shown in the entry at the specified position
from the current icon theme.
If the icon isn’t known, a “broken image” icon will be displayed
instead.

If @icon is %NULL, no icon will be shown in the specified position.

    {:doh, %{argctype: "GtkEntryIconPosition", argname: "icon_pos", argtype: "EntryIconPosition", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GIcon*", argname: "icon", argtype: "Gio.Icon", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_icon_from_gicon()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_icon_from_icon_name
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L714)</span>


    Sets the icon shown in the entry at the specified position
from the current icon theme.

If the icon name isn’t known, a “broken image” icon will be displayed
instead.

If @icon_name is %NULL, no icon will be shown in the specified position.

    {:doh, %{argctype: "GtkEntryIconPosition", argname: "icon_pos", argtype: "EntryIconPosition", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "icon_name", argtype: "utf8", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_icon_from_icon_name()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_icon_from_pixbuf
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L729)</span>


    Sets the icon shown in the specified position using a pixbuf.

If @pixbuf is %NULL, no icon will be shown in the specified position.

    {:doh, %{argctype: "GtkEntryIconPosition", argname: "icon_pos", argtype: "EntryIconPosition", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkPixbuf*", argname: "pixbuf", argtype: "GdkPixbuf.Pixbuf", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_icon_from_pixbuf()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_icon_from_stock
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L740)</span>


    Sets the icon shown in the entry at the specified position from
a stock image.

If @stock_id is %NULL, no icon will be shown in the specified position.

    {:doh, %{argctype: "GtkEntryIconPosition", argname: "icon_pos", argtype: "EntryIconPosition", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "stock_id", argtype: "utf8", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_icon_from_stock()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_icon_sensitive
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L752)</span>


    Sets the sensitivity for the specified icon.

    {:doh, %{argctype: "GtkEntryIconPosition", argname: "icon_pos", argtype: "EntryIconPosition", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_icon_sensitive()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_icon_tooltip_markup
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L760)</span>


    Sets @tooltip as the contents of the tooltip for the icon at
the specified position. @tooltip is assumed to be marked up with
the [Pango text markup language][PangoMarkupFormat].

Use %NULL for @tooltip to remove an existing tooltip.

See also gtk_widget_set_tooltip_markup() and
gtk_entry_set_icon_tooltip_text().

    {:doh, %{argctype: "GtkEntryIconPosition", argname: "icon_pos", argtype: "EntryIconPosition", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "tooltip", argtype: "utf8", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_icon_tooltip_markup()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_icon_tooltip_text
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L776)</span>


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


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_icon_tooltip_text()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_inner_border
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L797)</span>


    Sets %entry’s inner-border property to @border, or clears it if %NULL
is passed. The inner-border is the area around the entry’s text, but
inside its frame.

If set, this property overrides the inner-border style property.
Overriding the style-provided border is useful when you want to do
in-place editing of some text in a canvas or list widget, where
pixel-exact positioning of the entry is important.

    {:doh, %{argctype: "const GtkBorder*", argname: "border", argtype: "Border", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_inner_border()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_input_hints
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L812)</span>


    Sets the #GtkEntry:input-hints property, which
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
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L821)</span>


    Sets the #GtkEntry:input-purpose property which
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

### pony_NOT_IMPLEMENTED_YET_set_invisible_char
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L831)</span>


    Sets the character to use in place of the actual text when
gtk_entry_set_visibility() has been called to set text visibility
to %FALSE. i.e. this is the character used in “password mode” to
show the user how many characters have been typed. By default, GTK+
picks the best invisible char available in the current font. If you
set the invisible char to 0, then the user will get no feedback
at all; there will be no text on the screen as they type.

    {:doh, %{argctype: "gunichar", argname: "ch", argtype: "gunichar", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_invisible_char()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### set_max_length
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L845)</span>


Sets the maximum allowed length of the contents of the widget. If
the current contents are longer than the given length, then they
will be truncated to fit.

This is equivalent to getting @entry's #GtkEntryBuffer and
calling gtk_entry_buffer_set_max_length() on it.
]|


```pony
fun box set_max_length(
  max_pony: I32 val)
: None val
```
#### Parameters

*   max_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_max_width_chars
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L857)</span>


Sets the desired maximum width in characters of @entry.


```pony
fun box set_max_width_chars(
  n_chars_pony: I32 val)
: None val
```
#### Parameters

*   n_chars_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_overwrite_mode
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L863)</span>


Sets whether the text is overwritten when typing in the #GtkEntry.


```pony
fun box set_overwrite_mode(
  overwrite_pony: Bool val)
: None val
```
#### Parameters

*   overwrite_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_placeholder_text
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L869)</span>


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


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_placeholder_text()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_progress_fraction
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L885)</span>


    Causes the entry’s progress indicator to “fill in” the given
fraction of the bar. The fraction should be between 0.0 and 1.0,
inclusive.

    {:doh, %{argctype: "gdouble", argname: "fraction", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_progress_fraction()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_progress_pulse_step
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L895)</span>


    Sets the fraction of total entry width to move the progress
bouncing block for each call to gtk_entry_progress_pulse().

    {:doh, %{argctype: "gdouble", argname: "fraction", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_progress_pulse_step()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_tabs
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L904)</span>


    Sets a #PangoTabArray; the tabstops in the array are applied to the entry
text.

    {:doh, %{argctype: "PangoTabArray*", argname: "tabs", argtype: "Pango.TabArray", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_tabs()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_text
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L913)</span>


    Sets the text in the widget to the given
value, replacing the current contents.

See gtk_entry_buffer_set_text().

    {:doh, %{argctype: "const gchar*", argname: "text", argtype: "utf8", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_text()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### set_visibility
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L924)</span>


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


```pony
fun box set_visibility(
  visible_pony: Bool val)
: None val
```
#### Parameters

*   visible_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_width_chars
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L942)</span>


Changes the size request of the entry to be about the right size
for @n_chars characters. Note that it changes the size
request, the size can still be affected by
how you pack the widget into containers. If @n_chars is -1, the
size reverts to the default entry size.


```pony
fun box set_width_chars(
  n_chars_pony: I32 val)
: None val
```
#### Parameters

*   n_chars_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### text_index_to_layout_index
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L952)</span>


Converts from a position in the entry contents (returned
by gtk_entry_get_text()) to a position in the
entry’s #PangoLayout (returned by gtk_entry_get_layout(),
with text retrieved via pango_layout_get_text()).


```pony
fun box text_index_to_layout_index(
  text_index_pony: I32 val)
: I32 val
```
#### Parameters

*   text_index_pony: [I32](builtin-I32.md) val

#### Returns

* [I32](builtin-I32.md) val

---

### unset_invisible_char
<span class="source-link">[[Source]](src/gtk3/GtkEntry.md#L961)</span>


Unsets the invisible char previously set with
gtk_entry_set_invisible_char(). So that the
default invisible char is used again.


```pony
fun box unset_invisible_char()
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

