/*
   needs: ["Bool", "Pointer[U8 val] ref", "String", "U32", "None", "GObjectREF"]
provides: ["GtkToolItemGroup"]
*/
use "../gobject"
class GtkToolItemGroup is GtkWidget
"""
A #GtkToolItemGroup is used together with #GtkToolPalette to add
#GtkToolItems to a palette like container with different
categories and drag and drop support.

# CSS nodes

GtkToolItemGroup has a single CSS node named toolitemgroup.
"""
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create(label_pony: String) =>
    widget = @gtk_tool_item_group_new[GObjectREF](label_pony.cstring()) //


fun get_collapsed(): Bool =>
"""
Gets whether @group is collapsed or expanded.
"""
  @gtk_tool_item_group_get_collapsed[Bool](widget)

/* get_drop_item unavailable due to return typing issues
{:argctype, "GtkToolItem*"}
{:argname, "rv"}
{:argtype, "ToolItem"}
{:paramtype, :param}
{:txo, "none"} */

/* get_ellipsize unavailable due to return typing issues
{:argctype, "PangoEllipsizeMode"}
{:argname, "rv"}
{:argtype, "Pango.EllipsizeMode"}
{:paramtype, :param}
{:txo, "none"} */

/* get_header_relief unavailable due to return typing issues
{:argctype, "GtkReliefStyle"}
{:argname, "rv"}
{:argtype, "ReliefStyle"}
{:paramtype, :param}
{:txo, "none"} */

/* get_item_position unavailable due to typing issues
 {:doh, %{argctype: "GtkToolItem*", argname: "item", argtype: "ToolItem", paramtype: :param, txo: "none"}}
*/

fun get_label(): String =>
"""
Gets the label of @group.
"""
  var cstring_pony: Pointer[U8 val] ref = @gtk_tool_item_group_get_label[Pointer[U8 val] ref](widget)
  var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

/* get_label_widget unavailable due to return typing issues
{:argctype, "GtkWidget*"}
{:argname, "rv"}
{:argtype, "Widget"}
{:paramtype, :param}
{:txo, "none"} */

fun get_n_items(): U32 =>
"""
Gets the number of tool items in @group.
"""
  @gtk_tool_item_group_get_n_items[U32](widget)

/* get_nth_item unavailable due to return typing issues
{:argctype, "GtkToolItem*"}
{:argname, "rv"}
{:argtype, "ToolItem"}
{:paramtype, :param}
{:txo, "none"} */

/* insert unavailable due to typing issues
 {:doh, %{argctype: "GtkToolItem*", argname: "item", argtype: "ToolItem", paramtype: :param, txo: "none"}}
*/

fun set_collapsed(collapsed_pony: Bool): None =>
"""
Sets whether the @group should be collapsed or expanded.
"""
  @gtk_tool_item_group_set_collapsed[None](widget, collapsed_pony)

/* set_ellipsize unavailable due to typing issues
 {:doh, %{argctype: "PangoEllipsizeMode", argname: "ellipsize", argtype: "Pango.EllipsizeMode", paramtype: :param, txo: "none"}}
*/

/* set_header_relief unavailable due to typing issues
 {:doh, %{argctype: "GtkReliefStyle", argname: "style", argtype: "ReliefStyle", paramtype: :param, txo: "none"}}
*/

/* set_item_position unavailable due to typing issues
 {:doh, %{argctype: "GtkToolItem*", argname: "item", argtype: "ToolItem", paramtype: :param, txo: "none"}}
*/

/* set_label unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "label", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* set_label_widget unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "label_widget", argtype: "Widget", paramtype: :param, txo: "none"}}
*/

