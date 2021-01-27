```````pony-full-source
/*
   needs: ["Bool", "None", "GObjectREF"]
provides: ["GtkToolItem"]
*/
use "../gobject"
class GtkToolItem is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create() =>
    widget = @gtk_tool_item_new[GObjectREF]() //


/* get_ellipsize_mode unavailable due to return typing issues
{:argctype, "PangoEllipsizeMode"}
{:argname, "rv"}
{:argtype, "Pango.EllipsizeMode"}
{:paramtype, :param}
{:txo, "none"} */

fun get_expand(): Bool =>
  @gtk_tool_item_get_expand[Bool](widget)

fun get_homogeneous(): Bool =>
  @gtk_tool_item_get_homogeneous[Bool](widget)

/* get_icon_size unavailable due to return typing issues
{:argctype, "GtkIconSize"}
{:argname, "rv"}
{:argtype, "gint"}
{:paramtype, :param}
{:txo, "none"} */

fun get_is_important(): Bool =>
  @gtk_tool_item_get_is_important[Bool](widget)

/* get_orientation unavailable due to return typing issues
{:argctype, "GtkOrientation"}
{:argname, "rv"}
{:argtype, "Orientation"}
{:paramtype, :param}
{:txo, "none"} */

/* get_proxy_menu_item unavailable due to return typing issues
{:argctype, "GtkWidget*"}
{:argname, "rv"}
{:argtype, "Widget"}
{:paramtype, :param}
{:txo, "none"} */

/* get_relief_style unavailable due to return typing issues
{:argctype, "GtkReliefStyle"}
{:argname, "rv"}
{:argtype, "ReliefStyle"}
{:paramtype, :param}
{:txo, "none"} */

/* get_text_alignment unavailable due to return typing issues
{:argctype, "gfloat"}
{:argname, "rv"}
{:argtype, "gfloat"}
{:paramtype, :param}
{:txo, "none"} */

/* get_text_orientation unavailable due to return typing issues
{:argctype, "GtkOrientation"}
{:argname, "rv"}
{:argtype, "Orientation"}
{:paramtype, :param}
{:txo, "none"} */

/* get_text_size_group unavailable due to return typing issues
{:argctype, "GtkSizeGroup*"}
{:argname, "rv"}
{:argtype, "SizeGroup"}
{:paramtype, :param}
{:txo, "none"} */

/* get_toolbar_style unavailable due to return typing issues
{:argctype, "GtkToolbarStyle"}
{:argname, "rv"}
{:argtype, "ToolbarStyle"}
{:paramtype, :param}
{:txo, "none"} */

fun get_use_drag_window(): Bool =>
  @gtk_tool_item_get_use_drag_window[Bool](widget)

fun get_visible_horizontal(): Bool =>
  @gtk_tool_item_get_visible_horizontal[Bool](widget)

fun get_visible_vertical(): Bool =>
  @gtk_tool_item_get_visible_vertical[Bool](widget)

fun rebuild_menu(): None =>
  @gtk_tool_item_rebuild_menu[None](widget)

/* retrieve_proxy_menu_item unavailable due to return typing issues
{:argctype, "GtkWidget*"}
{:argname, "rv"}
{:argtype, "Widget"}
{:paramtype, :param}
{:txo, "none"} */

fun set_expand(expand_pony: Bool): None =>
  @gtk_tool_item_set_expand[None](widget, expand_pony)

fun set_homogeneous(homogeneous_pony: Bool): None =>
  @gtk_tool_item_set_homogeneous[None](widget, homogeneous_pony)

fun set_is_important(is_important_pony: Bool): None =>
  @gtk_tool_item_set_is_important[None](widget, is_important_pony)

/* set_proxy_menu_item unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "menu_item_id", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkWidget*", argname: "menu_item", argtype: "Widget", paramtype: :param, txo: "none"}}
*/

/* set_tooltip_markup unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "markup", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* set_tooltip_text unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "text", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

fun set_use_drag_window(use_drag_window_pony: Bool): None =>
  @gtk_tool_item_set_use_drag_window[None](widget, use_drag_window_pony)

fun set_visible_horizontal(visible_horizontal_pony: Bool): None =>
  @gtk_tool_item_set_visible_horizontal[None](widget, visible_horizontal_pony)

fun set_visible_vertical(visible_vertical_pony: Bool): None =>
  @gtk_tool_item_set_visible_vertical[None](widget, visible_vertical_pony)

fun toolbar_reconfigured(): None =>
  @gtk_tool_item_toolbar_reconfigured[None](widget)


```````