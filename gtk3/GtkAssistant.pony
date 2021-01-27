/*
   needs: ["None", "I32", "GObjectREF"]
provides: ["GtkAssistant"]
*/
use "../gobject"
class GtkAssistant is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create() =>
    widget = @gtk_assistant_new[GObjectREF]() //


/* add_action_widget unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "child", argtype: "Widget", paramtype: :param, txo: "none"}}
*/

/* append_page unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "page", argtype: "Widget", paramtype: :param, txo: "none"}}
*/

fun commit(): None =>
"""
Erases the visited page history so the back button is not
shown on the current page, and removes the cancel button
from subsequent pages.

Use this when the information provided up to the current
page is hereafter deemed permanent and cannot be modified
or undone. For example, showing a progress page to track
a long-running, unreversible operation after the user has
clicked apply on a confirmation page.
"""
  @gtk_assistant_commit[None](widget)

fun get_current_page(): I32 =>
"""
Returns the page number of the current page.
"""
  @gtk_assistant_get_current_page[I32](widget)

fun get_n_pages(): I32 =>
"""
Returns the number of pages in the @assistant
"""
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
"""
Navigate to the next page.

It is a programming error to call this function when
there is no next page.

This function is for use when creating pages of the
#GTK_ASSISTANT_PAGE_CUSTOM type.
"""
  @gtk_assistant_next_page[None](widget)

/* prepend_page unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "page", argtype: "Widget", paramtype: :param, txo: "none"}}
*/

fun previous_page(): None =>
"""
Navigate to the previous visited page.

It is a programming error to call this function when
no previous page is available.

This function is for use when creating pages of the
#GTK_ASSISTANT_PAGE_CUSTOM type.
"""
  @gtk_assistant_previous_page[None](widget)

/* remove_action_widget unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "child", argtype: "Widget", paramtype: :param, txo: "none"}}
*/

fun remove_page(page_num_pony: I32): None =>
"""
Removes the @page_num’s page from @assistant.
"""
  @gtk_assistant_remove_page[None](widget, page_num_pony)

fun set_current_page(page_num_pony: I32): None =>
"""
Switches the page to @page_num.

Note that this will only be necessary in custom buttons,
as the @assistant flow can be set with
gtk_assistant_set_forward_page_func().
"""
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
"""
Forces @assistant to recompute the buttons state.

GTK+ automatically takes care of this in most situations,
e.g. when the user goes to a different page, or when the
visibility or completeness of a page changes.

One situation where it can be necessary to call this
function is when changing a value on the current page
affects the future page flow of the assistant.
"""
  @gtk_assistant_update_buttons_state[None](widget)

