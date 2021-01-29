/*
   needs: ["Pointer[U8 val] ref", "String", "Bool", "I32", "U32", "GObjectREF", "GtkWidget val", "None"]
provides: ["GtkLabel val"]
*/
primitive GtkLabelREF
class val GtkLabel is GtkMisc
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
  var widget: GtkLabelREF val

  fun gtkwidget(): GtkLabelREF val => widget
/*
  new val create_from_GtkBuilder(gtkbuilder: GtkBuilder, glade_id: String) =>
    widget = @gtk_builder_get_object[GObjectREF](gtkbuilder.gtkwidget(), glade_id.cstring())

  new val create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'

  new val never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF
*/

  new val create(str_pony: String) =>
    widget = @gtk_label_new[GtkLabelREF](str_pony.cstring()) //
