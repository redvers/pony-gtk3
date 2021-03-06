/*
   needs: ["Pointer[U8 val] ref", "String", "Bool", "I32", "U32", "GObjectREF", "GtkWidget val", "None"]
provides: ["GtkLabel val"]
*/
use "../gobject"
class val GtkLabel is GtkWidget
"""
The #GtkLabel widget displays a small amount of text. As the name
implies, most labels are used to label another widget such as a
#GtkButton, a #GtkMenuItem, or a #GtkComboBox.

# CSS nodes

|[<!-- language="plain" -->
label
├── [selection]
├── [link]
┊
╰── [link]
]|

GtkLabel has a single CSS node with the name label. A wide variety
of style classes may be applied to labels, such as .title, .subtitle,
.dim-label, etc. In the #GtkShortcutsWindow, labels are used wth the
.keycap style class.

If the label has a selection, it gets a subnode with name selection.

If the label has links, there is one subnode per link. These subnodes
carry the link or visited state depending on whether they have been
visited.

# GtkLabel as GtkBuildable

The GtkLabel implementation of the GtkBuildable interface supports a
custom <attributes> element, which supports any number of <attribute>
elements. The <attribute> element has attributes named “name“, “value“,
“start“ and “end“ and allows you to specify #PangoAttribute values for
this label.

An example of a UI definition fragment specifying Pango attributes:
|[
<object class="GtkLabel">
  <attributes>
    <attribute name="weight" value="PANGO_WEIGHT_BOLD"/>
    <attribute name="background" value="red" start="5" end="10"/>
  </attributes>
</object>
]|

The start and end attributes specify the range of characters to which the
Pango attribute applies. If start and end are not specified, the attribute is
applied to the whole text. Note that specifying ranges does not make much
sense with translatable attributes. Use markup embedded in the translatable
content instead.

# Mnemonics

Labels may contain “mnemonics”. Mnemonics are
underlined characters in the label, used for keyboard navigation.
Mnemonics are created by providing a string with an underscore before
the mnemonic character, such as `"_File"`, to the
functions gtk_label_new_with_mnemonic() or
gtk_label_set_text_with_mnemonic().

Mnemonics automatically activate any activatable widget the label is
inside, such as a #GtkButton; if the label is not inside the
mnemonic’s target widget, you have to tell the label about the target
using gtk_label_set_mnemonic_widget(). Here’s a simple example where
the label is inside a button:

|[<!-- language="C" -->
  // Pressing Alt+H will activate this button
  GtkWidget *button = gtk_button_new ();
  GtkWidget *label = gtk_label_new_with_mnemonic ("_Hello");
  gtk_container_add (GTK_CONTAINER (button), label);
]|

There’s a convenience function to create buttons with a mnemonic label
already inside:

|[<!-- language="C" -->
  // Pressing Alt+H will activate this button
  GtkWidget *button = gtk_button_new_with_mnemonic ("_Hello");
]|

To create a mnemonic for a widget alongside the label, such as a
#GtkEntry, you have to point the label at the entry with
gtk_label_set_mnemonic_widget():

|[<!-- language="C" -->
  // Pressing Alt+H will focus the entry
  GtkWidget *entry = gtk_entry_new ();
  GtkWidget *label = gtk_label_new_with_mnemonic ("_Hello");
  gtk_label_set_mnemonic_widget (GTK_LABEL (label), entry);
]|

# Markup (styled text)

To make it easy to format text in a label (changing colors,
fonts, etc.), label text can be provided in a simple
[markup format][PangoMarkupFormat].

Here’s how to create a label with a small font:
|[<!-- language="C" -->
  GtkWidget *label = gtk_label_new (NULL);
  gtk_label_set_markup (GTK_LABEL (label), "<small>Small text</small>");
]|

(See [complete documentation][PangoMarkupFormat] of available
tags in the Pango manual.)

The markup passed to gtk_label_set_markup() must be valid; for example,
literal <, > and & characters must be escaped as &lt;, &gt;, and &amp;.
If you pass text obtained from the user, file, or a network to
gtk_label_set_markup(), you’ll want to escape it with
g_markup_escape_text() or g_markup_printf_escaped().

Markup strings are just a convenient way to set the #PangoAttrList on
a label; gtk_label_set_attributes() may be a simpler way to set
attributes in some cases. Be careful though; #PangoAttrList tends to
cause internationalization problems, unless you’re applying attributes
to the entire string (i.e. unless you set the range of each attribute
to [0, %G_MAXINT)). The reason is that specifying the start_index and
end_index for a #PangoAttribute requires knowledge of the exact string
being displayed, so translations will cause problems.

# Selectable labels

Labels can be made selectable with gtk_label_set_selectable().
Selectable labels allow the user to copy the label contents to
the clipboard. Only labels that contain useful-to-copy information
— such as error messages — should be made selectable.

# Text layout # {#label-text-layout}

A label can contain any number of paragraphs, but will have
performance problems if it contains more than a small number.
Paragraphs are separated by newlines or other paragraph separators
understood by Pango.

Labels can automatically wrap text if you call
gtk_label_set_line_wrap().

gtk_label_set_justify() sets how the lines in a label align
with one another. If you want to set how the label as a whole
aligns in its available space, see the #GtkWidget:halign and
#GtkWidget:valign properties.

The #GtkLabel:width-chars and #GtkLabel:max-width-chars properties
can be used to control the size allocation of ellipsized or wrapped
labels. For ellipsizing labels, if either is specified (and less
than the actual text size), it is used as the minimum width, and the actual
text size is used as the natural width of the label. For wrapping labels,
width-chars is used as the minimum width, if specified, and max-width-chars
is used as the natural width. Even if max-width-chars specified, wrapping
labels will be rewrapped to use all of the available width.

Note that the interpretation of #GtkLabel:width-chars and
#GtkLabel:max-width-chars has changed a bit with the introduction of
[width-for-height geometry management.][geometry-management]

# Links

Since 2.18, GTK+ supports markup for clickable hyperlinks in addition
to regular Pango markup. The markup for links is borrowed from HTML,
using the `<a>` with “href“ and “title“ attributes. GTK+ renders links
similar to the way they appear in web browsers, with colored, underlined
text. The “title“ attribute is displayed as a tooltip on the link.

An example looks like this:

|[<!-- language="C" -->
const gchar *text =
"Go to the"
"<a href=\"http://www.gtk.org title=\"&lt;i&gt;Our&lt;/i&gt; website\">"
"GTK+ website</a> for more...";
GtkWidget *label = gtk_label_new (NULL);
gtk_label_set_markup (GTK_LABEL (label), text);
]|

It is possible to implement custom handling for links and their tooltips with
the #GtkLabel::activate-link signal and the gtk_label_get_current_uri() function.
"""
  var widget: GObjectREF val

  fun gtkwidget(): GObjectREF val => widget

  new val create_from_GtkBuilder(gtkbuilder: GtkBuilder, glade_id: String) =>
    widget = @gtk_builder_get_object[GObjectREF](gtkbuilder.gtkwidget(), glade_id.cstring())

  new val create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'

  new val never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF


  new val create(str_pony: String) =>
    widget = @gtk_label_new[GObjectREF](str_pony.cstring()) //

  new val new_with_mnemonic(str_pony: String) =>
    widget = @gtk_label_new_with_mnemonic[GObjectREF](str_pony.cstring()) //


  fun pony_NOT_IMPLEMENTED_YET_get_angle(): None =>
    """
    Gets the angle of rotation for the label. See
gtk_label_set_angle().

    {:argctype, "gdouble"}
{:argname, "rv"}
{:argtype, "gdouble"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_attributes(): None =>
    """
    Gets the attribute list that was set on the label using
gtk_label_set_attributes(), if any. This function does
not reflect attributes that come from the labels markup
(see gtk_label_set_markup()). If you want to get the
effective attributes for the label, use
pango_layout_get_attribute (gtk_label_get_layout (label)).

    {:argctype, "PangoAttrList*"}
{:argname, "rv"}
{:argtype, "Pango.AttrList"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

fun get_current_uri(): String =>
"""
Returns the URI for the currently active link in the label.
The active link is the one under the mouse pointer or, in a
selectable label, the link in which the text cursor is currently
positioned.

This function is intended for use in a #GtkLabel::activate-link handler
or for use in a #GtkWidget::query-tooltip handler.
"""
  var cstring_pony: Pointer[U8 val] ref = @gtk_label_get_current_uri[Pointer[U8 val] ref](widget)
  var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

  fun pony_NOT_IMPLEMENTED_YET_get_ellipsize(): None =>
    """
    Returns the ellipsizing position of the label. See gtk_label_set_ellipsize().

    {:argctype, "PangoEllipsizeMode"}
{:argname, "rv"}
{:argtype, "Pango.EllipsizeMode"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_justify(): None =>
    """
    Returns the justification of the label. See gtk_label_set_justify().

    {:argctype, "GtkJustification"}
{:argname, "rv"}
{:argtype, "Justification"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

fun get_label(): String =>
"""
Fetches the text from a label widget including any embedded
underlines indicating mnemonics and Pango markup. (See
gtk_label_get_text()).
"""
  var cstring_pony: Pointer[U8 val] ref = @gtk_label_get_label[Pointer[U8 val] ref](widget)
  var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

  fun pony_NOT_IMPLEMENTED_YET_get_layout(): None =>
    """
    Gets the #PangoLayout used to display the label.
The layout is useful to e.g. convert text positions to
pixel positions, in combination with gtk_label_get_layout_offsets().
The returned layout is owned by the @label so need not be
freed by the caller. The @label is free to recreate its layout at
any time, so it should be considered read-only.

    {:argctype, "PangoLayout*"}
{:argname, "rv"}
{:argtype, "Pango.Layout"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_layout_offsets(): None =>
    """
    Obtains the coordinates where the label will draw the #PangoLayout
representing the text in the label; useful to convert mouse events
into coordinates inside the #PangoLayout, e.g. to take some action
if some part of the label is clicked. Of course you will need to
create a #GtkEventBox to receive the events, and pack the label
inside it, since labels are windowless (they return %FALSE from
gtk_widget_get_has_window()). Remember
when using the #PangoLayout functions you need to convert to
and from pixels using PANGO_PIXELS() or #PANGO_SCALE.

    {:doh, %{argctype: "gint*", argname: "x", argtype: "gint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gint*", argname: "y", argtype: "gint", paramtype: :param, txo: "full"}}
*/
    """

fun get_line_wrap(): Bool =>
"""
Returns whether lines in the label are automatically wrapped.
See gtk_label_set_line_wrap().
"""
  @gtk_label_get_line_wrap[Bool](widget)

  fun pony_NOT_IMPLEMENTED_YET_get_line_wrap_mode(): None =>
    """
    Returns line wrap mode used by the label. See gtk_label_set_line_wrap_mode().

    {:argctype, "PangoWrapMode"}
{:argname, "rv"}
{:argtype, "Pango.WrapMode"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

fun get_lines(): I32 =>
"""
Gets the number of lines to which an ellipsized, wrapping
label should be limited. See gtk_label_set_lines().
"""
  @gtk_label_get_lines[I32](widget)

fun get_max_width_chars(): I32 =>
"""
Retrieves the desired maximum width of @label, in characters. See
gtk_label_set_width_chars().
"""
  @gtk_label_get_max_width_chars[I32](widget)

fun get_mnemonic_keyval(): U32 =>
"""
If the label has been set so that it has an mnemonic key this function
returns the keyval used for the mnemonic accelerator. If there is no
mnemonic set up it returns #GDK_KEY_VoidSymbol.
"""
  @gtk_label_get_mnemonic_keyval[U32](widget)

/* Needs conversion code 
Retrieves the target of the mnemonic (keyboard shortcut) of this
label. See gtk_label_set_mnemonic_widget().
  fun get_mnemonic_widget(): GtkWidget val =>
    @gtk_label_get_mnemonic_widget[GObjectREF](widget)
*/

fun get_selectable(): Bool =>
"""
Gets the value set by gtk_label_set_selectable().
"""
  @gtk_label_get_selectable[Bool](widget)

  fun pony_NOT_IMPLEMENTED_YET_get_selection_bounds(): None =>
    """
    Gets the selected range of characters in the label, returning %TRUE
if there’s a selection.

    {:doh, %{argctype: "gint*", argname: "start", argtype: "gint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gint*", argname: "gend", argtype: "gint", paramtype: :param, txo: "full"}}
*/
    """

fun get_single_line_mode(): Bool =>
"""
Returns whether the label is in single line mode.
"""
  @gtk_label_get_single_line_mode[Bool](widget)

fun get_text(): String =>
"""
Fetches the text from a label widget, as displayed on the
screen. This does not include any embedded underlines
indicating mnemonics or Pango markup. (See gtk_label_get_label())
"""
  var cstring_pony: Pointer[U8 val] ref = @gtk_label_get_text[Pointer[U8 val] ref](widget)
  var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

fun get_track_visited_links(): Bool =>
"""
Returns whether the label is currently keeping track
of clicked links.
"""
  @gtk_label_get_track_visited_links[Bool](widget)

fun get_use_markup(): Bool =>
"""
Returns whether the label’s text is interpreted as marked up with
the [Pango text markup language][PangoMarkupFormat].
See gtk_label_set_use_markup ().
"""
  @gtk_label_get_use_markup[Bool](widget)

fun get_use_underline(): Bool =>
"""
Returns whether an embedded underline in the label indicates a
mnemonic. See gtk_label_set_use_underline().
"""
  @gtk_label_get_use_underline[Bool](widget)

fun get_width_chars(): I32 =>
"""
Retrieves the desired width of @label, in characters. See
gtk_label_set_width_chars().
"""
  @gtk_label_get_width_chars[I32](widget)

  fun pony_NOT_IMPLEMENTED_YET_get_xalign(): None =>
    """
    Gets the #GtkLabel:xalign property for @label.

    {:argctype, "gfloat"}
{:argname, "rv"}
{:argtype, "gfloat"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_yalign(): None =>
    """
    Gets the #GtkLabel:yalign property for @label.

    {:argctype, "gfloat"}
{:argname, "rv"}
{:argtype, "gfloat"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

fun select_region(start_offset_pony: I32, end_offset_pony: I32): None =>
"""
Selects a range of characters in the label, if the label is selectable.
See gtk_label_set_selectable(). If the label is not selectable,
this function has no effect. If @start_offset or
@end_offset are -1, then the end of the label will be substituted.
"""
  @gtk_label_select_region[None](widget, start_offset_pony, end_offset_pony)

  fun pony_NOT_IMPLEMENTED_YET_set_angle(): None =>
    """
    Sets the angle of rotation for the label. An angle of 90 reads from
from bottom to top, an angle of 270, from top to bottom. The angle
setting for the label is ignored if the label is selectable,
wrapped, or ellipsized.

    {:doh, %{argctype: "gdouble", argname: "angle", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_set_attributes(): None =>
    """
    Sets a #PangoAttrList; the attributes in the list are applied to the
label text.

The attributes set with this function will be applied
and merged with any other attributes previously effected by way
of the #GtkLabel:use-underline or #GtkLabel:use-markup properties.
While it is not recommended to mix markup strings with manually set
attributes, if you must; know that the attributes will be applied
to the label after the markup string is parsed.

    {:doh, %{argctype: "PangoAttrList*", argname: "attrs", argtype: "Pango.AttrList", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_set_ellipsize(): None =>
    """
    Sets the mode used to ellipsize (add an ellipsis: "...") to the text
if there is not enough space to render the entire string.

    {:doh, %{argctype: "PangoEllipsizeMode", argname: "mode", argtype: "Pango.EllipsizeMode", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_set_justify(): None =>
    """
    Sets the alignment of the lines in the text of the label relative to
each other. %GTK_JUSTIFY_LEFT is the default value when the widget is
first created with gtk_label_new(). If you instead want to set the
alignment of the label as a whole, use gtk_widget_set_halign() instead.
gtk_label_set_justify() has no effect on labels containing only a
single line.

    {:doh, %{argctype: "GtkJustification", argname: "jtype", argtype: "Justification", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_set_label(): None =>
    """
    Sets the text of the label. The label is interpreted as
including embedded underlines and/or Pango markup depending
on the values of the #GtkLabel:use-underline and
#GtkLabel:use-markup properties.

    {:doh, %{argctype: "const gchar*", argname: "str", argtype: "utf8", paramtype: :param, txo: "none"}}
*/
    """

fun set_line_wrap(wrap_pony: Bool): None =>
"""
Toggles line wrapping within the #GtkLabel widget. %TRUE makes it break
lines if text exceeds the widget’s size. %FALSE lets the text get cut off
by the edge of the widget if it exceeds the widget size.

Note that setting line wrapping to %TRUE does not make the label
wrap at its parent container’s width, because GTK+ widgets
conceptually can’t make their requisition depend on the parent
container’s size. For a label that wraps at a specific position,
set the label’s width using gtk_widget_set_size_request().
"""
  @gtk_label_set_line_wrap[None](widget, wrap_pony)

  fun pony_NOT_IMPLEMENTED_YET_set_line_wrap_mode(): None =>
    """
    If line wrapping is on (see gtk_label_set_line_wrap()) this controls how
the line wrapping is done. The default is %PANGO_WRAP_WORD which means
wrap on word boundaries.

    {:doh, %{argctype: "PangoWrapMode", argname: "wrap_mode", argtype: "Pango.WrapMode", paramtype: :param, txo: "none"}}
*/
    """

fun set_lines(lines_pony: I32): None =>
"""
Sets the number of lines to which an ellipsized, wrapping label
should be limited. This has no effect if the label is not wrapping
or ellipsized. Set this to -1 if you don’t want to limit the
number of lines.
"""
  @gtk_label_set_lines[None](widget, lines_pony)

  fun pony_NOT_IMPLEMENTED_YET_set_markup(): None =>
    """
    Parses @str which is marked up with the
[Pango text markup language][PangoMarkupFormat], setting the
label’s text and attribute list based on the parse results.

If the @str is external data, you may need to escape it with
g_markup_escape_text() or g_markup_printf_escaped():

|[<!-- language="C" -->
GtkWidget *label = gtk_label_new (NULL);
const char *str = "some text";
const char *format = "<span style=\"italic\">\%s</span>";
char *markup;

markup = g_markup_printf_escaped (format, str);
gtk_label_set_markup (GTK_LABEL (label), markup);
g_free (markup);
]|

This function will set the #GtkLabel:use-markup property to %TRUE as
a side effect.

If you set the label contents using the #GtkLabel:label property you
should also ensure that you set the #GtkLabel:use-markup property
accordingly.

See also: gtk_label_set_text()

    {:doh, %{argctype: "const gchar*", argname: "str", argtype: "utf8", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_set_markup_with_mnemonic(): None =>
    """
    Parses @str which is marked up with the
[Pango text markup language][PangoMarkupFormat],
setting the label’s text and attribute list based on the parse results.
If characters in @str are preceded by an underscore, they are underlined
indicating that they represent a keyboard accelerator called a mnemonic.

The mnemonic key can be used to activate another widget, chosen
automatically, or explicitly using gtk_label_set_mnemonic_widget().

    {:doh, %{argctype: "const gchar*", argname: "str", argtype: "utf8", paramtype: :param, txo: "none"}}
*/
    """

fun set_max_width_chars(n_chars_pony: I32): None =>
"""
Sets the desired maximum width in characters of @label to @n_chars.
"""
  @gtk_label_set_max_width_chars[None](widget, n_chars_pony)

fun set_mnemonic_widget(widget_pony: GtkWidget val): None =>
"""
If the label has been set so that it has an mnemonic key (using
i.e. gtk_label_set_markup_with_mnemonic(),
gtk_label_set_text_with_mnemonic(), gtk_label_new_with_mnemonic()
or the “use_underline” property) the label can be associated with a
widget that is the target of the mnemonic. When the label is inside
a widget (like a #GtkButton or a #GtkNotebook tab) it is
automatically associated with the correct widget, but sometimes
(i.e. when the target is a #GtkEntry next to the label) you need to
set it explicitly using this function.

The target widget will be accelerated by emitting the
GtkWidget::mnemonic-activate signal on it. The default handler for
this signal will activate the widget if there are no mnemonic collisions
and toggle focus between the colliding widgets otherwise.
"""
  @gtk_label_set_mnemonic_widget[None](widget, widget_pony.gtkwidget())

  fun pony_NOT_IMPLEMENTED_YET_set_pattern(): None =>
    """
    The pattern of underlines you want under the existing text within the
#GtkLabel widget.  For example if the current text of the label says
“FooBarBaz” passing a pattern of “___   ___” will underline
“Foo” and “Baz” but not “Bar”.

    {:doh, %{argctype: "const gchar*", argname: "pattern", argtype: "utf8", paramtype: :param, txo: "none"}}
*/
    """

fun set_selectable(setting_pony: Bool): None =>
"""
Selectable labels allow the user to select text from the label, for
copy-and-paste.
"""
  @gtk_label_set_selectable[None](widget, setting_pony)

fun set_single_line_mode(single_line_mode_pony: Bool): None =>
"""
Sets whether the label is in single line mode.
"""
  @gtk_label_set_single_line_mode[None](widget, single_line_mode_pony)

  fun pony_NOT_IMPLEMENTED_YET_set_text(): None =>
    """
    Sets the text within the #GtkLabel widget. It overwrites any text that
was there before.

This function will clear any previously set mnemonic accelerators, and
set the #GtkLabel:use-underline property to %FALSE as a side effect.

This function will set the #GtkLabel:use-markup property to %FALSE
as a side effect.

See also: gtk_label_set_markup()

    {:doh, %{argctype: "const gchar*", argname: "str", argtype: "utf8", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_set_text_with_mnemonic(): None =>
    """
    Sets the label’s text from the string @str.
If characters in @str are preceded by an underscore, they are underlined
indicating that they represent a keyboard accelerator called a mnemonic.
The mnemonic key can be used to activate another widget, chosen
automatically, or explicitly using gtk_label_set_mnemonic_widget().

    {:doh, %{argctype: "const gchar*", argname: "str", argtype: "utf8", paramtype: :param, txo: "none"}}
*/
    """

fun set_track_visited_links(track_links_pony: Bool): None =>
"""
Sets whether the label should keep track of clicked
links (and use a different color for them).
"""
  @gtk_label_set_track_visited_links[None](widget, track_links_pony)

fun set_use_markup(setting_pony: Bool): None =>
"""
Sets whether the text of the label contains markup in
[Pango’s text markup language][PangoMarkupFormat].
See gtk_label_set_markup().
"""
  @gtk_label_set_use_markup[None](widget, setting_pony)

fun set_use_underline(setting_pony: Bool): None =>
"""
If true, an underline in the text indicates the next character should be
used for the mnemonic accelerator key.
"""
  @gtk_label_set_use_underline[None](widget, setting_pony)

fun set_width_chars(n_chars_pony: I32): None =>
"""
Sets the desired width in characters of @label to @n_chars.
"""
  @gtk_label_set_width_chars[None](widget, n_chars_pony)

  fun pony_NOT_IMPLEMENTED_YET_set_xalign(): None =>
    """
    Sets the #GtkLabel:xalign property for @label.

    {:doh, %{argctype: "gfloat", argname: "xalign", argtype: "gfloat", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_set_yalign(): None =>
    """
    Sets the #GtkLabel:yalign property for @label.

    {:doh, %{argctype: "gfloat", argname: "yalign", argtype: "gfloat", paramtype: :param, txo: "none"}}
*/
    """

