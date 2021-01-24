/*
   needs: ["None", "I32", "GObjectREF"]
provides: ["GtkAssistant"]
*/
class GtkAssistant is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF


  new create() =>
    widget = @gtk_assistant_new[GObjectREF]() //


/* add_action_widget unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "child", argtype: "Widget", paramtype: :param, txo: "none"}}
*/

/* append_page unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "page", argtype: "Widget", paramtype: :param, txo: "none"}}
*/

fun commit(): None =>
  @gtk_assistant_commit[None](widget)

fun get_current_page(): I32 =>
  @gtk_assistant_get_current_page[I32](widget)

fun get_n_pages(): I32 =>
  @gtk_assistant_get_n_pages[I32](widget)

/* get_nth_page unavailable due to return typing issues
{:argctype, "GtkWidget*"}
{:argname, "rv"}
{:argtype, "Widget"}
{:paramtype, :param}
{:txo, "none"} */

/* get_page_complete unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "page", argtype: "Widget", paramtype: :param, txo: "none"}}
*/

/* get_page_has_padding unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "page", argtype: "Widget", paramtype: :param, txo: "none"}}
*/

/* get_page_header_image unavailable due to return typing issues
{:argctype, "GdkPixbuf*"}
{:argname, "rv"}
{:argtype, "GdkPixbuf.Pixbuf"}
{:paramtype, :param}
{:txo, "none"} */

/* get_page_side_image unavailable due to return typing issues
{:argctype, "GdkPixbuf*"}
{:argname, "rv"}
{:argtype, "GdkPixbuf.Pixbuf"}
{:paramtype, :param}
{:txo, "none"} */

/* get_page_title unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "page", argtype: "Widget", paramtype: :param, txo: "none"}}
*/

/* get_page_type unavailable due to return typing issues
{:argctype, "GtkAssistantPageType"}
{:argname, "rv"}
{:argtype, "AssistantPageType"}
{:paramtype, :param}
{:txo, "none"} */

/* insert_page unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "page", argtype: "Widget", paramtype: :param, txo: "none"}}
*/

fun next_page(): None =>
  @gtk_assistant_next_page[None](widget)

/* prepend_page unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "page", argtype: "Widget", paramtype: :param, txo: "none"}}
*/

fun previous_page(): None =>
  @gtk_assistant_previous_page[None](widget)

/* remove_action_widget unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "child", argtype: "Widget", paramtype: :param, txo: "none"}}
*/

fun remove_page(page_num_pony: I32): None =>
  @gtk_assistant_remove_page[None](widget, page_num_pony)

fun set_current_page(page_num_pony: I32): None =>
  @gtk_assistant_set_current_page[None](widget, page_num_pony)

/* set_forward_page_func unavailable due to typing issues
 {:doh, %{argctype: "GtkAssistantPageFunc", argname: "page_func", argtype: "AssistantPageFunc", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "data", argtype: "gpointer", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GDestroyNotify", argname: "destroy", argtype: "GLib.DestroyNotify", paramtype: :param, txo: "none"}}
*/

/* set_page_complete unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "page", argtype: "Widget", paramtype: :param, txo: "none"}}
*/

/* set_page_has_padding unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "page", argtype: "Widget", paramtype: :param, txo: "none"}}
*/

/* set_page_header_image unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "page", argtype: "Widget", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkPixbuf*", argname: "pixbuf", argtype: "GdkPixbuf.Pixbuf", paramtype: :param, txo: "none"}}
*/

/* set_page_side_image unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "page", argtype: "Widget", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkPixbuf*", argname: "pixbuf", argtype: "GdkPixbuf.Pixbuf", paramtype: :param, txo: "none"}}
*/

/* set_page_title unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "page", argtype: "Widget", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "title", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* set_page_type unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "page", argtype: "Widget", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkAssistantPageType", argname: "gtype", argtype: "AssistantPageType", paramtype: :param, txo: "none"}}
*/

fun update_buttons_state(): None =>
  @gtk_assistant_update_buttons_state[None](widget)

