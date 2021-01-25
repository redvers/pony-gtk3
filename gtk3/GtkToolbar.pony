/*
   needs: ["I32", "Bool", "None", "GObjectREF"]
provides: ["GtkToolbar"]
*/
class GtkToolbar is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create() =>
    widget = @gtk_toolbar_new[GObjectREF]() //


fun get_drop_index(x_pony: I32, y_pony: I32): I32 =>
  @gtk_toolbar_get_drop_index[I32](widget, x_pony, y_pony)

/* get_icon_size unavailable due to return typing issues
{:argctype, "GtkIconSize"}
{:argname, "rv"}
{:argtype, "IconSize"}
{:paramtype, :param}
{:txo, "none"} */

/* get_item_index unavailable due to typing issues
 {:doh, %{argctype: "GtkToolItem*", argname: "item", argtype: "ToolItem", paramtype: :param, txo: "none"}}
*/

fun get_n_items(): I32 =>
  @gtk_toolbar_get_n_items[I32](widget)

/* get_nth_item unavailable due to return typing issues
{:argctype, "GtkToolItem*"}
{:argname, "rv"}
{:argtype, "ToolItem"}
{:paramtype, :param}
{:txo, "none"} */

/* get_relief_style unavailable due to return typing issues
{:argctype, "GtkReliefStyle"}
{:argname, "rv"}
{:argtype, "ReliefStyle"}
{:paramtype, :param}
{:txo, "none"} */

fun get_show_arrow(): Bool =>
  @gtk_toolbar_get_show_arrow[Bool](widget)

/* get_style unavailable due to return typing issues
{:argctype, "GtkToolbarStyle"}
{:argname, "rv"}
{:argtype, "ToolbarStyle"}
{:paramtype, :param}
{:txo, "none"} */

/* insert unavailable due to typing issues
 {:doh, %{argctype: "GtkToolItem*", argname: "item", argtype: "ToolItem", paramtype: :param, txo: "none"}}
*/

/* set_drop_highlight_item unavailable due to typing issues
 {:doh, %{argctype: "GtkToolItem*", argname: "tool_item", argtype: "ToolItem", paramtype: :param, txo: "none"}}
*/

/* set_icon_size unavailable due to typing issues
 {:doh, %{argctype: "GtkIconSize", argname: "icon_size", argtype: "IconSize", paramtype: :param, txo: "none"}}
*/

fun set_show_arrow(show_arrow_pony: Bool): None =>
  @gtk_toolbar_set_show_arrow[None](widget, show_arrow_pony)

/* set_style unavailable due to typing issues
 {:doh, %{argctype: "GtkToolbarStyle", argname: "style", argtype: "ToolbarStyle", paramtype: :param, txo: "none"}}
*/

fun unset_icon_size(): None =>
  @gtk_toolbar_unset_icon_size[None](widget)

fun unset_style(): None =>
  @gtk_toolbar_unset_style[None](widget)

