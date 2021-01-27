```````pony-full-source
/*
   needs: ["None", "GObjectREF"]
provides: ["GtkToolPalette"]
*/
use "../gobject"
class GtkToolPalette is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create() =>
    widget = @gtk_tool_palette_new[GObjectREF]() //


/* add_drag_dest unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "widget", argtype: "Widget", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkDestDefaults", argname: "flags", argtype: "DestDefaults", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkToolPaletteDragTargets", argname: "targets", argtype: "ToolPaletteDragTargets", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkDragAction", argname: "actions", argtype: "Gdk.DragAction", paramtype: :param, txo: "none"}}
*/

/* get_drag_item unavailable due to return typing issues
{:argctype, "GtkWidget*"}
{:argname, "rv"}
{:argtype, "Widget"}
{:paramtype, :param}
{:txo, "none"} */

/* get_drop_group unavailable due to return typing issues
{:argctype, "GtkToolItemGroup*"}
{:argname, "rv"}
{:argtype, "ToolItemGroup"}
{:paramtype, :param}
{:txo, "none"} */

/* get_drop_item unavailable due to return typing issues
{:argctype, "GtkToolItem*"}
{:argname, "rv"}
{:argtype, "ToolItem"}
{:paramtype, :param}
{:txo, "none"} */

/* get_exclusive unavailable due to typing issues
 {:doh, %{argctype: "GtkToolItemGroup*", argname: "group", argtype: "ToolItemGroup", paramtype: :param, txo: "none"}}
*/

/* get_expand unavailable due to typing issues
 {:doh, %{argctype: "GtkToolItemGroup*", argname: "group", argtype: "ToolItemGroup", paramtype: :param, txo: "none"}}
*/

/* get_group_position unavailable due to typing issues
 {:doh, %{argctype: "GtkToolItemGroup*", argname: "group", argtype: "ToolItemGroup", paramtype: :param, txo: "none"}}
*/

/* get_hadjustment unavailable due to return typing issues
{:argctype, "GtkAdjustment*"}
{:argname, "rv"}
{:argtype, "Adjustment"}
{:paramtype, :param}
{:txo, "none"} */

/* get_icon_size unavailable due to return typing issues
{:argctype, "GtkIconSize"}
{:argname, "rv"}
{:argtype, "gint"}
{:paramtype, :param}
{:txo, "none"} */

/* get_style unavailable due to return typing issues
{:argctype, "GtkToolbarStyle"}
{:argname, "rv"}
{:argtype, "ToolbarStyle"}
{:paramtype, :param}
{:txo, "none"} */

/* get_vadjustment unavailable due to return typing issues
{:argctype, "GtkAdjustment*"}
{:argname, "rv"}
{:argtype, "Adjustment"}
{:paramtype, :param}
{:txo, "none"} */

/* set_drag_source unavailable due to typing issues
 {:doh, %{argctype: "GtkToolPaletteDragTargets", argname: "targets", argtype: "ToolPaletteDragTargets", paramtype: :param, txo: "none"}}
*/

/* set_exclusive unavailable due to typing issues
 {:doh, %{argctype: "GtkToolItemGroup*", argname: "group", argtype: "ToolItemGroup", paramtype: :param, txo: "none"}}
*/

/* set_expand unavailable due to typing issues
 {:doh, %{argctype: "GtkToolItemGroup*", argname: "group", argtype: "ToolItemGroup", paramtype: :param, txo: "none"}}
*/

/* set_group_position unavailable due to typing issues
 {:doh, %{argctype: "GtkToolItemGroup*", argname: "group", argtype: "ToolItemGroup", paramtype: :param, txo: "none"}}
*/

/* set_icon_size unavailable due to typing issues
 {:doh, %{argctype: "GtkIconSize", argname: "icon_size", argtype: "gint", paramtype: :param, txo: "none"}}
*/

/* set_style unavailable due to typing issues
 {:doh, %{argctype: "GtkToolbarStyle", argname: "style", argtype: "ToolbarStyle", paramtype: :param, txo: "none"}}
*/

fun unset_icon_size(): None =>
  @gtk_tool_palette_unset_icon_size[None](widget)

fun unset_style(): None =>
  @gtk_tool_palette_unset_style[None](widget)


```````