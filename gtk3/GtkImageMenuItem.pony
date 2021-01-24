/*
   needs: ["Bool", "None", "GObjectREF", "String", "GtkAccelGroup"]
provides: ["GtkImageMenuItem"]
*/
class GtkImageMenuItem is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF


  new create() =>
    widget = @gtk_image_menu_item_new[GObjectREF]() //

  new new_from_stock(stock_id_pony: String, accel_group_pony: GtkAccelGroup) =>
    widget = @gtk_image_menu_item_new_from_stock[GObjectREF](stock_id_pony.cstring(), accel_group_pony.gtkwidget()) //

  new new_with_label(label_pony: String) =>
    widget = @gtk_image_menu_item_new_with_label[GObjectREF](label_pony.cstring()) //

  new new_with_mnemonic(label_pony: String) =>
    widget = @gtk_image_menu_item_new_with_mnemonic[GObjectREF](label_pony.cstring()) //


fun get_always_show_image(): Bool =>
  @gtk_image_menu_item_get_always_show_image[Bool](widget)

/* get_image unavailable due to return typing issues
{:argctype, "GtkWidget*"}
{:argname, "rv"}
{:argtype, "Widget"}
{:paramtype, :param}
{:txo, "none"} */

fun get_use_stock(): Bool =>
  @gtk_image_menu_item_get_use_stock[Bool](widget)

/* set_accel_group unavailable due to typing issues
 {:doh, %{argctype: "GtkAccelGroup*", argname: "accel_group", argtype: "AccelGroup", paramtype: :param, txo: "none"}}
*/

fun set_always_show_image(always_show_pony: Bool): None =>
  @gtk_image_menu_item_set_always_show_image[None](widget, always_show_pony)

/* set_image unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "image", argtype: "Widget", paramtype: :param, txo: "none"}}
*/

fun set_use_stock(use_stock_pony: Bool): None =>
  @gtk_image_menu_item_set_use_stock[None](widget, use_stock_pony)

