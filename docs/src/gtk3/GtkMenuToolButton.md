```````pony-full-source
/*
   needs: ["GObjectREF", "GtkWidget", "String"]
provides: ["GtkMenuToolButton"]
*/
use "../gobject"
class GtkMenuToolButton is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create(icon_widget_pony: GtkWidget, label_pony: String) =>
    widget = @gtk_menu_tool_button_new[GObjectREF](icon_widget_pony.gtkwidget(), label_pony.cstring()) //

  new new_from_stock(stock_id_pony: String) =>
    widget = @gtk_menu_tool_button_new_from_stock[GObjectREF](stock_id_pony.cstring()) //


/* get_menu unavailable due to return typing issues
{:argctype, "GtkWidget*"}
{:argname, "rv"}
{:argtype, "Widget"}
{:paramtype, :param}
{:txo, "none"} */

/* set_arrow_tooltip_markup unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "markup", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* set_arrow_tooltip_text unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "text", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* set_menu unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "menu", argtype: "Widget", paramtype: :param, txo: "none"}}
*/


```````