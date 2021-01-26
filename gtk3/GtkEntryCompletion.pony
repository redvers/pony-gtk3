/*
   needs: ["None", "I32", "Pointer[U8 val] ref", "String", "Bool", "GObjectREF", "GtkCellArea"]
provides: ["GtkEntryCompletion"]
*/
use "../gobject"
class GtkEntryCompletion is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create() =>
    widget = @gtk_entry_completion_new[GObjectREF]() //

  new new_with_area(area_pony: GtkCellArea) =>
    widget = @gtk_entry_completion_new_with_area[GObjectREF](area_pony.gtkwidget()) //


fun complete(): None =>
  @gtk_entry_completion_complete[None](widget)

/* compute_prefix unavailable due to return typing issues
{:argctype, "gchar*"}
{:argname, "rv"}
{:argtype, "utf8"}
{:paramtype, :param}
{:txo, "full"} */

fun delete_action(index__pony: I32): None =>
  @gtk_entry_completion_delete_action[None](widget, index__pony)

fun get_completion_prefix(): String =>
  var cstring_pony: Pointer[U8 val] ref = @gtk_entry_completion_get_completion_prefix[Pointer[U8 val] ref](widget)
var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

/* get_entry unavailable due to return typing issues
{:argctype, "GtkWidget*"}
{:argname, "rv"}
{:argtype, "Widget"}
{:paramtype, :param}
{:txo, "none"} */

fun get_inline_completion(): Bool =>
  @gtk_entry_completion_get_inline_completion[Bool](widget)

fun get_inline_selection(): Bool =>
  @gtk_entry_completion_get_inline_selection[Bool](widget)

fun get_minimum_key_length(): I32 =>
  @gtk_entry_completion_get_minimum_key_length[I32](widget)

/* get_model unavailable due to return typing issues
{:argctype, "GtkTreeModel*"}
{:argname, "rv"}
{:argtype, "TreeModel"}
{:paramtype, :param}
{:txo, "none"} */

fun get_popup_completion(): Bool =>
  @gtk_entry_completion_get_popup_completion[Bool](widget)

fun get_popup_set_width(): Bool =>
  @gtk_entry_completion_get_popup_set_width[Bool](widget)

fun get_popup_single_match(): Bool =>
  @gtk_entry_completion_get_popup_single_match[Bool](widget)

fun get_text_column(): I32 =>
  @gtk_entry_completion_get_text_column[I32](widget)

/* insert_action_markup unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "markup", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* insert_action_text unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "text", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

fun insert_prefix(): None =>
  @gtk_entry_completion_insert_prefix[None](widget)

fun set_inline_completion(inline_completion_pony: Bool): None =>
  @gtk_entry_completion_set_inline_completion[None](widget, inline_completion_pony)

fun set_inline_selection(inline_selection_pony: Bool): None =>
  @gtk_entry_completion_set_inline_selection[None](widget, inline_selection_pony)

/* set_match_func unavailable due to typing issues
 {:doh, %{argctype: "GtkEntryCompletionMatchFunc", argname: "func", argtype: "EntryCompletionMatchFunc", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "func_data", argtype: "gpointer", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GDestroyNotify", argname: "func_notify", argtype: "GLib.DestroyNotify", paramtype: :param, txo: "none"}}
*/

fun set_minimum_key_length(length_pony: I32): None =>
  @gtk_entry_completion_set_minimum_key_length[None](widget, length_pony)

/* set_model unavailable due to typing issues
 {:doh, %{argctype: "GtkTreeModel*", argname: "model", argtype: "TreeModel", paramtype: :param, txo: "none"}}
*/

fun set_popup_completion(popup_completion_pony: Bool): None =>
  @gtk_entry_completion_set_popup_completion[None](widget, popup_completion_pony)

fun set_popup_set_width(popup_set_width_pony: Bool): None =>
  @gtk_entry_completion_set_popup_set_width[None](widget, popup_set_width_pony)

fun set_popup_single_match(popup_single_match_pony: Bool): None =>
  @gtk_entry_completion_set_popup_single_match[None](widget, popup_single_match_pony)

fun set_text_column(column_pony: I32): None =>
  @gtk_entry_completion_set_text_column[None](widget, column_pony)

