```````pony-full-source
/*
   needs: ["None", "GObjectREF"]
provides: ["GtkToolPalette val"]
*/
use "../gobject"
class val GtkToolPalette is GtkWidget
"""
A #GtkToolPalette allows you to add #GtkToolItems to a palette-like
container with different categories and drag and drop support.

A #GtkToolPalette is created with a call to gtk_tool_palette_new().

#GtkToolItems cannot be added directly to a #GtkToolPalette -
instead they are added to a #GtkToolItemGroup which can than be added
to a #GtkToolPalette. To add a #GtkToolItemGroup to a #GtkToolPalette,
use gtk_container_add().

|[<!-- language="C" -->
GtkWidget *palette, *group;
GtkToolItem *item;

palette = gtk_tool_palette_new ();
group = gtk_tool_item_group_new (_("Test Category"));
gtk_container_add (GTK_CONTAINER (palette), group);

item = gtk_tool_button_new (NULL, _("_Open"));
gtk_tool_button_set_icon_name (GTK_TOOL_BUTTON (item), "document-open");
gtk_tool_item_group_insert (GTK_TOOL_ITEM_GROUP (group), item, -1);
]|

The easiest way to use drag and drop with #GtkToolPalette is to call
gtk_tool_palette_add_drag_dest() with the desired drag source @palette
and the desired drag target @widget. Then gtk_tool_palette_get_drag_item()
can be used to get the dragged item in the #GtkWidget::drag-data-received
signal handler of the drag target.

|[<!-- language="C" -->
static void
passive_canvas_drag_data_received (GtkWidget        *widget,
                                   GdkDragContext   *context,
                                   gint              x,
                                   gint              y,
                                   GtkSelectionData *selection,
                                   guint             info,
                                   guint             time,
                                   gpointer          data)
{
  GtkWidget *palette;
  GtkWidget *item;

  // Get the dragged item
  palette = gtk_widget_get_ancestor (gtk_drag_get_source_widget (context),
                                     GTK_TYPE_TOOL_PALETTE);
  if (palette != NULL)
    item = gtk_tool_palette_get_drag_item (GTK_TOOL_PALETTE (palette),
                                           selection);

  // Do something with item
}

GtkWidget *target, palette;

palette = gtk_tool_palette_new ();
target = gtk_drawing_area_new ();

g_signal_connect (G_OBJECT (target), "drag-data-received",
                  G_CALLBACK (passive_canvas_drag_data_received), NULL);
gtk_tool_palette_add_drag_dest (GTK_TOOL_PALETTE (palette), target,
                                GTK_DEST_DEFAULT_ALL,
                                GTK_TOOL_PALETTE_DRAG_ITEMS,
                                GDK_ACTION_COPY);
]|

# CSS nodes

GtkToolPalette has a single CSS node named toolpalette.
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
    widget = @gtk_tool_palette_new[GObjectREF]() //


  fun pony_NOT_IMPLEMENTED_YET_add_drag_dest(): None =>
    """
    Sets @palette as drag source (see gtk_tool_palette_set_drag_source())
and sets @widget as a drag destination for drags from @palette.
See gtk_drag_dest_set().

    {:doh, %{argctype: "GtkDestDefaults", argname: "flags", argtype: "DestDefaults", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkToolPaletteDragTargets", argname: "targets", argtype: "ToolPaletteDragTargets", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkDragAction", argname: "actions", argtype: "Gdk.DragAction", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_drag_item(): None =>
    """
    Get the dragged item from the selection.
This could be a #GtkToolItem or a #GtkToolItemGroup.

    {:doh, %{argctype: "const GtkSelectionData*", argname: "selection", argtype: "SelectionData", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_drop_group(): None =>
    """
    Gets the group at position (x, y).

    {:argctype, "GtkToolItemGroup*"}
{:argname, "rv"}
{:argtype, "ToolItemGroup"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_drop_item(): None =>
    """
    Gets the item at position (x, y).
See gtk_tool_palette_get_drop_group().

    {:argctype, "GtkToolItem*"}
{:argname, "rv"}
{:argtype, "ToolItem"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_exclusive(): None =>
    """
    Gets whether @group is exclusive or not.
See gtk_tool_palette_set_exclusive().

    {:doh, %{argctype: "GtkToolItemGroup*", argname: "group", argtype: "ToolItemGroup", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_expand(): None =>
    """
    Gets whether group should be given extra space.
See gtk_tool_palette_set_expand().

    {:doh, %{argctype: "GtkToolItemGroup*", argname: "group", argtype: "ToolItemGroup", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_group_position(): None =>
    """
    Gets the position of @group in @palette as index.
See gtk_tool_palette_set_group_position().

    {:doh, %{argctype: "GtkToolItemGroup*", argname: "group", argtype: "ToolItemGroup", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_hadjustment(): None =>
    """
    Gets the horizontal adjustment of the tool palette.

    {:argctype, "GtkAdjustment*"}
{:argname, "rv"}
{:argtype, "Adjustment"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_icon_size(): None =>
    """
    Gets the size of icons in the tool palette.
See gtk_tool_palette_set_icon_size().

    {:argctype, "GtkIconSize"}
{:argname, "rv"}
{:argtype, "gint"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_style(): None =>
    """
    Gets the style (icons, text or both) of items in the tool palette.

    {:argctype, "GtkToolbarStyle"}
{:argname, "rv"}
{:argtype, "ToolbarStyle"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_vadjustment(): None =>
    """
    Gets the vertical adjustment of the tool palette.

    {:argctype, "GtkAdjustment*"}
{:argname, "rv"}
{:argtype, "Adjustment"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_set_drag_source(): None =>
    """
    Sets the tool palette as a drag source.
Enables all groups and items in the tool palette as drag sources
on button 1 and button 3 press with copy and move actions.
See gtk_drag_source_set().

    {:doh, %{argctype: "GtkToolPaletteDragTargets", argname: "targets", argtype: "ToolPaletteDragTargets", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_set_exclusive(): None =>
    """
    Sets whether the group should be exclusive or not.
If an exclusive group is expanded all other groups are collapsed.

    {:doh, %{argctype: "GtkToolItemGroup*", argname: "group", argtype: "ToolItemGroup", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_set_expand(): None =>
    """
    Sets whether the group should be given extra space.

    {:doh, %{argctype: "GtkToolItemGroup*", argname: "group", argtype: "ToolItemGroup", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_set_group_position(): None =>
    """
    Sets the position of the group as an index of the tool palette.
If position is 0 the group will become the first child, if position is
-1 it will become the last child.

    {:doh, %{argctype: "GtkToolItemGroup*", argname: "group", argtype: "ToolItemGroup", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_set_icon_size(): None =>
    """
    Sets the size of icons in the tool palette.

    {:doh, %{argctype: "GtkIconSize", argname: "icon_size", argtype: "gint", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_set_style(): None =>
    """
    Sets the style (text, icons or both) of items in the tool palette.

    {:doh, %{argctype: "GtkToolbarStyle", argname: "style", argtype: "ToolbarStyle", paramtype: :param, txo: "none"}}
*/
    """

fun unset_icon_size(): None =>
"""
Unsets the tool palette icon size set with gtk_tool_palette_set_icon_size(),
so that user preferences will be used to determine the icon size.
"""
  @gtk_tool_palette_unset_icon_size[None](widget)

fun unset_style(): None =>
"""
Unsets a toolbar style set with gtk_tool_palette_set_style(),
so that user preferences will be used to determine the toolbar style.
"""
  @gtk_tool_palette_unset_style[None](widget)


```````