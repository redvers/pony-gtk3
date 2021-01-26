/*
   needs: ["None", "Bool", "I32", "Pointer[U8 val] ref", "String", "GObjectREF"]
provides: ["GtkPrintOperation"]
*/
use "../gobject"
class GtkPrintOperation is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create() =>
    widget = @gtk_print_operation_new[GObjectREF]() //


fun cancel(): None =>
  @gtk_print_operation_cancel[None](widget)

fun draw_page_finish(): None =>
  @gtk_print_operation_draw_page_finish[None](widget)

/* get_default_page_setup unavailable due to return typing issues
{:argctype, "GtkPageSetup*"}
{:argname, "rv"}
{:argtype, "PageSetup"}
{:paramtype, :param}
{:txo, "none"} */

fun get_embed_page_setup(): Bool =>
  @gtk_print_operation_get_embed_page_setup[Bool](widget)

fun get_error(): None =>
  @gtk_print_operation_get_error[None](widget)

fun get_has_selection(): Bool =>
  @gtk_print_operation_get_has_selection[Bool](widget)

fun get_n_pages_to_print(): I32 =>
  @gtk_print_operation_get_n_pages_to_print[I32](widget)

/* get_print_settings unavailable due to return typing issues
{:argctype, "GtkPrintSettings*"}
{:argname, "rv"}
{:argtype, "PrintSettings"}
{:paramtype, :param}
{:txo, "none"} */

/* get_status unavailable due to return typing issues
{:argctype, "GtkPrintStatus"}
{:argname, "rv"}
{:argtype, "PrintStatus"}
{:paramtype, :param}
{:txo, "none"} */

fun get_status_string(): String =>
  var cstring_pony: Pointer[U8 val] ref = @gtk_print_operation_get_status_string[Pointer[U8 val] ref](widget)
var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

fun get_support_selection(): Bool =>
  @gtk_print_operation_get_support_selection[Bool](widget)

fun is_finished(): Bool =>
  @gtk_print_operation_is_finished[Bool](widget)

/* run unavailable due to return typing issues
{:argctype, "GtkPrintOperationResult"}
{:argname, "rv"}
{:argtype, "PrintOperationResult"}
{:paramtype, :param}
{:txo, "none"} */

fun set_allow_async(allow_async_pony: Bool): None =>
  @gtk_print_operation_set_allow_async[None](widget, allow_async_pony)

fun set_current_page(current_page_pony: I32): None =>
  @gtk_print_operation_set_current_page[None](widget, current_page_pony)

/* set_custom_tab_label unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "label", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* set_default_page_setup unavailable due to typing issues
 {:doh, %{argctype: "GtkPageSetup*", argname: "default_page_setup", argtype: "PageSetup", paramtype: :param, txo: "none"}}
*/

fun set_defer_drawing(): None =>
  @gtk_print_operation_set_defer_drawing[None](widget)

fun set_embed_page_setup(embed_pony: Bool): None =>
  @gtk_print_operation_set_embed_page_setup[None](widget, embed_pony)

/* set_export_filename unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "filename", argtype: "filename", paramtype: :param, txo: "none"}}
*/

fun set_has_selection(has_selection_pony: Bool): None =>
  @gtk_print_operation_set_has_selection[None](widget, has_selection_pony)

/* set_job_name unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "job_name", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

fun set_n_pages(n_pages_pony: I32): None =>
  @gtk_print_operation_set_n_pages[None](widget, n_pages_pony)

/* set_print_settings unavailable due to typing issues
 {:doh, %{argctype: "GtkPrintSettings*", argname: "print_settings", argtype: "PrintSettings", paramtype: :param, txo: "none"}}
*/

fun set_show_progress(show_progress_pony: Bool): None =>
  @gtk_print_operation_set_show_progress[None](widget, show_progress_pony)

fun set_support_selection(support_selection_pony: Bool): None =>
  @gtk_print_operation_set_support_selection[None](widget, support_selection_pony)

fun set_track_print_status(track_status_pony: Bool): None =>
  @gtk_print_operation_set_track_print_status[None](widget, track_status_pony)

/* set_unit unavailable due to typing issues
 {:doh, %{argctype: "GtkUnit", argname: "unit", argtype: "Unit", paramtype: :param, txo: "none"}}
*/

fun set_use_full_page(full_page_pony: Bool): None =>
  @gtk_print_operation_set_use_full_page[None](widget, full_page_pony)

