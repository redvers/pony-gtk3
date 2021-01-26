/*
   needs: ["I32", "Pointer[U8 val] ref", "String", "Bool", "None", "GObjectREF"]
provides: ["GtkNotebook"]
*/
use "../gobject"
class GtkNotebook is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create() =>
    widget = @gtk_notebook_new[GObjectREF]() //


/* append_page unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "child", argtype: "Widget", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkWidget*", argname: "tab_label", argtype: "Widget", paramtype: :param, txo: "none"}}
*/

/* append_page_menu unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "child", argtype: "Widget", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkWidget*", argname: "tab_label", argtype: "Widget", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkWidget*", argname: "menu_label", argtype: "Widget", paramtype: :param, txo: "none"}}
*/

/* detach_tab unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "child", argtype: "Widget", paramtype: :param, txo: "none"}}
*/

/* get_action_widget unavailable due to return typing issues
{:argctype, "GtkWidget*"}
{:argname, "rv"}
{:argtype, "Widget"}
{:paramtype, :param}
{:txo, "none"} */

fun get_current_page(): I32 =>
  @gtk_notebook_get_current_page[I32](widget)

fun get_group_name(): String =>
  var cstring_pony: Pointer[U8 val] ref = @gtk_notebook_get_group_name[Pointer[U8 val] ref](widget)
var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

/* get_menu_label unavailable due to return typing issues
{:argctype, "GtkWidget*"}
{:argname, "rv"}
{:argtype, "Widget"}
{:paramtype, :param}
{:txo, "none"} */

/* get_menu_label_text unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "child", argtype: "Widget", paramtype: :param, txo: "none"}}
*/

fun get_n_pages(): I32 =>
  @gtk_notebook_get_n_pages[I32](widget)

/* get_nth_page unavailable due to return typing issues
{:argctype, "GtkWidget*"}
{:argname, "rv"}
{:argtype, "Widget"}
{:paramtype, :param}
{:txo, "none"} */

fun get_scrollable(): Bool =>
  @gtk_notebook_get_scrollable[Bool](widget)

fun get_show_border(): Bool =>
  @gtk_notebook_get_show_border[Bool](widget)

fun get_show_tabs(): Bool =>
  @gtk_notebook_get_show_tabs[Bool](widget)

/* get_tab_detachable unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "child", argtype: "Widget", paramtype: :param, txo: "none"}}
*/

/* get_tab_hborder unavailable due to return typing issues
{:argctype, "guint16"}
{:argname, "rv"}
{:argtype, "guint16"}
{:paramtype, :param}
{:txo, "none"} */

/* get_tab_label unavailable due to return typing issues
{:argctype, "GtkWidget*"}
{:argname, "rv"}
{:argtype, "Widget"}
{:paramtype, :param}
{:txo, "none"} */

/* get_tab_label_text unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "child", argtype: "Widget", paramtype: :param, txo: "none"}}
*/

/* get_tab_pos unavailable due to return typing issues
{:argctype, "GtkPositionType"}
{:argname, "rv"}
{:argtype, "PositionType"}
{:paramtype, :param}
{:txo, "none"} */

/* get_tab_reorderable unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "child", argtype: "Widget", paramtype: :param, txo: "none"}}
*/

/* get_tab_vborder unavailable due to return typing issues
{:argctype, "guint16"}
{:argname, "rv"}
{:argtype, "guint16"}
{:paramtype, :param}
{:txo, "none"} */

/* insert_page unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "child", argtype: "Widget", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkWidget*", argname: "tab_label", argtype: "Widget", paramtype: :param, txo: "none"}}
*/

/* insert_page_menu unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "child", argtype: "Widget", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkWidget*", argname: "tab_label", argtype: "Widget", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkWidget*", argname: "menu_label", argtype: "Widget", paramtype: :param, txo: "none"}}
*/

fun next_page(): None =>
  @gtk_notebook_next_page[None](widget)

/* page_num unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "child", argtype: "Widget", paramtype: :param, txo: "none"}}
*/

fun popup_disable(): None =>
  @gtk_notebook_popup_disable[None](widget)

fun popup_enable(): None =>
  @gtk_notebook_popup_enable[None](widget)

/* prepend_page unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "child", argtype: "Widget", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkWidget*", argname: "tab_label", argtype: "Widget", paramtype: :param, txo: "none"}}
*/

/* prepend_page_menu unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "child", argtype: "Widget", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkWidget*", argname: "tab_label", argtype: "Widget", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkWidget*", argname: "menu_label", argtype: "Widget", paramtype: :param, txo: "none"}}
*/

fun prev_page(): None =>
  @gtk_notebook_prev_page[None](widget)

fun remove_page(page_num_pony: I32): None =>
  @gtk_notebook_remove_page[None](widget, page_num_pony)

/* reorder_child unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "child", argtype: "Widget", paramtype: :param, txo: "none"}}
*/

/* set_action_widget unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "widget", argtype: "Widget", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkPackType", argname: "pack_type", argtype: "PackType", paramtype: :param, txo: "none"}}
*/

fun set_current_page(page_num_pony: I32): None =>
  @gtk_notebook_set_current_page[None](widget, page_num_pony)

/* set_group_name unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "group_name", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* set_menu_label unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "child", argtype: "Widget", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkWidget*", argname: "menu_label", argtype: "Widget", paramtype: :param, txo: "none"}}
*/

/* set_menu_label_text unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "child", argtype: "Widget", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "menu_text", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

fun set_scrollable(scrollable_pony: Bool): None =>
  @gtk_notebook_set_scrollable[None](widget, scrollable_pony)

fun set_show_border(show_border_pony: Bool): None =>
  @gtk_notebook_set_show_border[None](widget, show_border_pony)

fun set_show_tabs(show_tabs_pony: Bool): None =>
  @gtk_notebook_set_show_tabs[None](widget, show_tabs_pony)

/* set_tab_detachable unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "child", argtype: "Widget", paramtype: :param, txo: "none"}}
*/

/* set_tab_label unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "child", argtype: "Widget", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkWidget*", argname: "tab_label", argtype: "Widget", paramtype: :param, txo: "none"}}
*/

/* set_tab_label_text unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "child", argtype: "Widget", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "tab_text", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* set_tab_pos unavailable due to typing issues
 {:doh, %{argctype: "GtkPositionType", argname: "pos", argtype: "PositionType", paramtype: :param, txo: "none"}}
*/

/* set_tab_reorderable unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "child", argtype: "Widget", paramtype: :param, txo: "none"}}
*/

