/*
   needs: ["Pointer[U8 val] ref", "String", "Bool", "None", "GObjectREF", "GtkWidget"]
provides: ["GtkToolButton"]
*/
use "../gobject"
class GtkToolButton is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create(icon_widget_pony: GtkWidget, label_pony: String) =>
    widget = @gtk_tool_button_new[GObjectREF](icon_widget_pony.gtkwidget(), label_pony.cstring()) //

  new new_from_stock(stock_id_pony: String) =>
    widget = @gtk_tool_button_new_from_stock[GObjectREF](stock_id_pony.cstring()) //


fun get_icon_name(): String =>
  var cstring_pony: Pointer[U8 val] ref = @gtk_tool_button_get_icon_name[Pointer[U8 val] ref](widget)
var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

/* get_icon_widget unavailable due to return typing issues
{:argctype, "GtkWidget*"}
{:argname, "rv"}
{:argtype, "Widget"}
{:paramtype, :param}
{:txo, "none"} */

fun get_label(): String =>
  var cstring_pony: Pointer[U8 val] ref = @gtk_tool_button_get_label[Pointer[U8 val] ref](widget)
var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

/* get_label_widget unavailable due to return typing issues
{:argctype, "GtkWidget*"}
{:argname, "rv"}
{:argtype, "Widget"}
{:paramtype, :param}
{:txo, "none"} */

fun get_stock_id(): String =>
  var cstring_pony: Pointer[U8 val] ref = @gtk_tool_button_get_stock_id[Pointer[U8 val] ref](widget)
var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

fun get_use_underline(): Bool =>
  @gtk_tool_button_get_use_underline[Bool](widget)

/* set_icon_name unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "icon_name", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* set_icon_widget unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "icon_widget", argtype: "Widget", paramtype: :param, txo: "none"}}
*/

/* set_label unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "label", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* set_label_widget unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "label_widget", argtype: "Widget", paramtype: :param, txo: "none"}}
*/

/* set_stock_id unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "stock_id", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

fun set_use_underline(use_underline_pony: Bool): None =>
  @gtk_tool_button_set_use_underline[None](widget, use_underline_pony)

