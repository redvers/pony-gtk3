```````pony-full-source
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
"""
Returns the name of the themed icon for the tool button,
see gtk_tool_button_set_icon_name().
"""
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
"""
Returns the label used by the tool button, or %NULL if the tool button
doesn’t have a label. or uses a the label from a stock item. The returned
string is owned by GTK+, and must not be modified or freed.
"""
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
"""
Returns the name of the stock item. See gtk_tool_button_set_stock_id().
The returned string is owned by GTK+ and must not be freed or modifed.
"""
  var cstring_pony: Pointer[U8 val] ref = @gtk_tool_button_get_stock_id[Pointer[U8 val] ref](widget)
var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

fun get_use_underline(): Bool =>
"""
Returns whether underscores in the label property are used as mnemonics
on menu items on the overflow menu. See gtk_tool_button_set_use_underline().
"""
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
"""
If set, an underline in the label property indicates that the next character
should be used for the mnemonic accelerator key in the overflow menu. For
example, if the label property is “_Open” and @use_underline is %TRUE,
the label on the tool button will be “Open” and the item on the overflow
menu will have an underlined “O”.

Labels shown on tool buttons never have mnemonics on them; this property
only affects the menu item on the overflow menu.
"""
  @gtk_tool_button_set_use_underline[None](widget, use_underline_pony)


```````