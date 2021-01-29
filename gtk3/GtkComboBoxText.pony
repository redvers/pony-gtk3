/*
   needs: ["None", "I32", "GObjectREF"]
provides: ["GtkComboBoxText val"]
*/
use "../gobject"
class val GtkComboBoxText is GtkWidget
"""
A GtkComboBoxText is a simple variant of #GtkComboBox that hides
the model-view complexity for simple text-only use cases.

To create a GtkComboBoxText, use gtk_combo_box_text_new() or
gtk_combo_box_text_new_with_entry().

You can add items to a GtkComboBoxText with
gtk_combo_box_text_append_text(), gtk_combo_box_text_insert_text()
or gtk_combo_box_text_prepend_text() and remove options with
gtk_combo_box_text_remove().

If the GtkComboBoxText contains an entry (via the “has-entry” property),
its contents can be retrieved using gtk_combo_box_text_get_active_text().
The entry itself can be accessed by calling gtk_bin_get_child() on the
combo box.

You should not call gtk_combo_box_set_model() or attempt to pack more cells
into this combo box via its GtkCellLayout interface.

# GtkComboBoxText as GtkBuildable

The GtkComboBoxText implementation of the GtkBuildable interface supports
adding items directly using the <items> element and specifying <item>
elements for each item. Each <item> element can specify the “id”
corresponding to the appended text and also supports the regular
translation attributes “translatable”, “context” and “comments”.

Here is a UI definition fragment specifying GtkComboBoxText items:
|[
<object class="GtkComboBoxText">
  <items>
    <item translatable="yes" id="factory">Factory</item>
    <item translatable="yes" id="home">Home</item>
    <item translatable="yes" id="subway">Subway</item>
  </items>
</object>
]|

# CSS nodes

|[<!-- language="plain" -->
combobox
╰── box.linked
    ├── entry.combo
    ├── button.combo
    ╰── window.popup
]|

GtkComboBoxText has a single CSS node with name combobox. It adds
the style class .combo to the main CSS nodes of its entry and button
children, and the .linked class to the node of its internal box.
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
    widget = @gtk_combo_box_text_new[GObjectREF]() //

  new val new_with_entry() =>
    widget = @gtk_combo_box_text_new_with_entry[GObjectREF]() //


  fun pony_NOT_IMPLEMENTED_YET_append(): None =>
    """
    Appends @text to the list of strings stored in @combo_box.
If @id is non-%NULL then it is used as the ID of the row.

This is the same as calling gtk_combo_box_text_insert() with a
position of -1.

    {:doh, %{argctype: "const gchar*", argname: "id", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "text", argtype: "utf8", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_append_text(): None =>
    """
    Appends @text to the list of strings stored in @combo_box.

This is the same as calling gtk_combo_box_text_insert_text() with a
position of -1.

    {:doh, %{argctype: "const gchar*", argname: "text", argtype: "utf8", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_active_text(): None =>
    """
    Returns the currently active string in @combo_box, or %NULL
if none is selected. If @combo_box contains an entry, this
function will return its contents (which will not necessarily
be an item from the list).

    {:argctype, "gchar*"}
{:argname, "rv"}
{:argtype, "utf8"}
{:paramtype, :param}
{:txo, "full"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_insert(): None =>
    """
    Inserts @text at @position in the list of strings stored in @combo_box.
If @id is non-%NULL then it is used as the ID of the row.  See
#GtkComboBox:id-column.

If @position is negative then @text is appended.

    {:doh, %{argctype: "const gchar*", argname: "id", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "text", argtype: "utf8", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_insert_text(): None =>
    """
    Inserts @text at @position in the list of strings stored in @combo_box.

If @position is negative then @text is appended.

This is the same as calling gtk_combo_box_text_insert() with a %NULL
ID string.

    {:doh, %{argctype: "const gchar*", argname: "text", argtype: "utf8", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_prepend(): None =>
    """
    Prepends @text to the list of strings stored in @combo_box.
If @id is non-%NULL then it is used as the ID of the row.

This is the same as calling gtk_combo_box_text_insert() with a
position of 0.

    {:doh, %{argctype: "const gchar*", argname: "id", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "text", argtype: "utf8", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_prepend_text(): None =>
    """
    Prepends @text to the list of strings stored in @combo_box.

This is the same as calling gtk_combo_box_text_insert_text() with a
position of 0.

    {:doh, %{argctype: "const gchar*", argname: "text", argtype: "utf8", paramtype: :param, txo: "none"}}
*/
    """

fun remove(position_pony: I32): None =>
"""
Removes the string at @position from @combo_box.
"""
  @gtk_combo_box_text_remove[None](widget, position_pony)

fun remove_all(): None =>
"""
Removes all the text entries from the combo box.
"""
  @gtk_combo_box_text_remove_all[None](widget)

