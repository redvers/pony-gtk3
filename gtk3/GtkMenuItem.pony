/*
   needs: ["None", "Pointer[U8 val] ref", "String", "Bool", "I32", "GObjectREF"]
provides: ["GtkMenuItem"]
*/
class GtkMenuItem is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF


  new create() =>
    widget = @gtk_menu_item_new[GObjectREF]() //

  new new_with_label(label_pony: String) =>
    widget = @gtk_menu_item_new_with_label[GObjectREF](label_pony.cstring()) //

  new new_with_mnemonic(label_pony: String) =>
    widget = @gtk_menu_item_new_with_mnemonic[GObjectREF](label_pony.cstring()) //


fun activate(): None =>
  @gtk_menu_item_activate[None](widget)

fun deselect(): None =>
  @gtk_menu_item_deselect[None](widget)

fun get_accel_path(): String =>
  var cstring_pony: Pointer[U8 val] ref = @gtk_menu_item_get_accel_path[Pointer[U8 val] ref](widget)
var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

fun get_label(): String =>
  var cstring_pony: Pointer[U8 val] ref = @gtk_menu_item_get_label[Pointer[U8 val] ref](widget)
var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

fun get_reserve_indicator(): Bool =>
  @gtk_menu_item_get_reserve_indicator[Bool](widget)

fun get_right_justified(): Bool =>
  @gtk_menu_item_get_right_justified[Bool](widget)

/* get_submenu unavailable due to return typing issues
{:argctype, "GtkWidget*"}
{:argname, "rv"}
{:argtype, "Widget"}
{:paramtype, :param}
{:txo, "none"} */

fun get_use_underline(): Bool =>
  @gtk_menu_item_get_use_underline[Bool](widget)

fun select(): None =>
  @gtk_menu_item_select[None](widget)

/* set_accel_path unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "accel_path", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* set_label unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "label", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

fun set_reserve_indicator(reserve_pony: Bool): None =>
  @gtk_menu_item_set_reserve_indicator[None](widget, reserve_pony)

fun set_right_justified(right_justified_pony: Bool): None =>
  @gtk_menu_item_set_right_justified[None](widget, right_justified_pony)

/* set_submenu unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "submenu", argtype: "Menu", paramtype: :param, txo: "none"}}
*/

fun set_use_underline(setting_pony: Bool): None =>
  @gtk_menu_item_set_use_underline[None](widget, setting_pony)

fun toggle_size_allocate(allocation_pony: I32): None =>
  @gtk_menu_item_toggle_size_allocate[None](widget, allocation_pony)

/* toggle_size_request unavailable due to typing issues
 {:doh, %{argctype: "gint*", argname: "requisition", argtype: "gint", paramtype: :param, txo: "full"}}
*/

