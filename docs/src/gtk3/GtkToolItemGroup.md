```````pony-full-source
/*
   needs: ["Bool", "Pointer[U8 val] ref", "String", "GObjectREF", "GtkWidget val", "U32", "None"]
provides: ["GtkToolItemGroup val"]
*/
use "../gobject"
class val GtkToolItemGroup is GtkWidget
"""
A #GtkToolItemGroup is used together with #GtkToolPalette to add
#GtkToolItems to a palette like container with different
categories and drag and drop support.

# CSS nodes

GtkToolItemGroup has a single CSS node named toolitemgroup.
"""
  var widget: GObjectREF val

  fun gtkwidget(): GObjectREF val => widget

  new val create_from_GtkBuilder(gtkbuilder: GtkBuilder, glade_id: String) =>
    widget = @gtk_builder_get_object[GObjectREF](gtkbuilder.gtkwidget(), glade_id.cstring())

  new val create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'

  new val never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF


  new val create(label_pony: String) =>
    widget = @gtk_tool_item_group_new[GObjectREF](label_pony.cstring()) //


fun get_collapsed(): Bool =>
"""
Gets whether @group is collapsed or expanded.
"""
  @gtk_tool_item_group_get_collapsed[Bool](widget)

  fun pony_NOT_IMPLEMENTED_YET_get_drop_item(): None =>
    """
    Gets the tool item at position (x, y).

    {:argctype, "GtkToolItem*"}
{:argname, "rv"}
{:argtype, "ToolItem"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_ellipsize(): None =>
    """
    Gets the ellipsization mode of @group.

    {:argctype, "PangoEllipsizeMode"}
{:argname, "rv"}
{:argtype, "Pango.EllipsizeMode"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_header_relief(): None =>
    """
    Gets the relief mode of the header button of @group.

    {:argctype, "GtkReliefStyle"}
{:argname, "rv"}
{:argtype, "ReliefStyle"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_item_position(): None =>
    """
    Gets the position of @item in @group as index.

    {:doh, %{argctype: "GtkToolItem*", argname: "item", argtype: "ToolItem", paramtype: :param, txo: "none"}}
*/
    """

fun get_label(): String =>
"""
Gets the label of @group.
"""
  var cstring_pony: Pointer[U8 val] ref = @gtk_tool_item_group_get_label[Pointer[U8 val] ref](widget)
  var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

/* Needs conversion code 
Gets the label widget of @group.
See gtk_tool_item_group_set_label_widget().
  fun get_label_widget(): GtkWidget val =>
    @gtk_tool_item_group_get_label_widget[GObjectREF](widget)
*/

fun get_n_items(): U32 =>
"""
Gets the number of tool items in @group.
"""
  @gtk_tool_item_group_get_n_items[U32](widget)

  fun pony_NOT_IMPLEMENTED_YET_get_nth_item(): None =>
    """
    Gets the tool item at @index in group.

    {:argctype, "GtkToolItem*"}
{:argname, "rv"}
{:argtype, "ToolItem"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_insert(): None =>
    """
    Inserts @item at @position in the list of children of @group.

    {:doh, %{argctype: "GtkToolItem*", argname: "item", argtype: "ToolItem", paramtype: :param, txo: "none"}}
*/
    """

fun set_collapsed(collapsed_pony: Bool): None =>
"""
Sets whether the @group should be collapsed or expanded.
"""
  @gtk_tool_item_group_set_collapsed[None](widget, collapsed_pony)

  fun pony_NOT_IMPLEMENTED_YET_set_ellipsize(): None =>
    """
    Sets the ellipsization mode which should be used by labels in @group.

    {:doh, %{argctype: "PangoEllipsizeMode", argname: "ellipsize", argtype: "Pango.EllipsizeMode", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_set_header_relief(): None =>
    """
    Set the button relief of the group header.
See gtk_button_set_relief() for details.

    {:doh, %{argctype: "GtkReliefStyle", argname: "style", argtype: "ReliefStyle", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_set_item_position(): None =>
    """
    Sets the position of @item in the list of children of @group.

    {:doh, %{argctype: "GtkToolItem*", argname: "item", argtype: "ToolItem", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_set_label(): None =>
    """
    Sets the label of the tool item group. The label is displayed in the header
of the group.

    {:doh, %{argctype: "const gchar*", argname: "label", argtype: "utf8", paramtype: :param, txo: "none"}}
*/
    """

fun set_label_widget(label_widget_pony: GtkWidget val): None =>
"""
Sets the label of the tool item group.
The label widget is displayed in the header of the group, in place
of the usual label.
"""
  @gtk_tool_item_group_set_label_widget[None](widget, label_widget_pony.gtkwidget())


```````