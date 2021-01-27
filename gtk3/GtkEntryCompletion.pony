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
"""
Requests a completion operation, or in other words a refiltering of the
current list with completions, using the current key. The completion list
view will be updated accordingly.
"""
  @gtk_entry_completion_complete[None](widget)

/* compute_prefix unavailable due to return typing issues
{:argctype, "gchar*"}
{:argname, "rv"}
{:argtype, "utf8"}
{:paramtype, :param}
{:txo, "full"} */

fun delete_action(index__pony: I32): None =>
"""
Deletes the action at @index_ from @completion’s action list.

Note that @index_ is a relative position and the position of an
action may have changed since it was inserted.
"""
  @gtk_entry_completion_delete_action[None](widget, index__pony)

fun get_completion_prefix(): String =>
"""
Get the original text entered by the user that triggered
the completion or %NULL if there’s no completion ongoing.
"""
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
"""
Returns whether the common prefix of the possible completions should
be automatically inserted in the entry.
"""
  @gtk_entry_completion_get_inline_completion[Bool](widget)

fun get_inline_selection(): Bool =>
"""
Returns %TRUE if inline-selection mode is turned on.
"""
  @gtk_entry_completion_get_inline_selection[Bool](widget)

fun get_minimum_key_length(): I32 =>
"""
Returns the minimum key length as set for @completion.
"""
  @gtk_entry_completion_get_minimum_key_length[I32](widget)

/* get_model unavailable due to return typing issues
{:argctype, "GtkTreeModel*"}
{:argname, "rv"}
{:argtype, "TreeModel"}
{:paramtype, :param}
{:txo, "none"} */

fun get_popup_completion(): Bool =>
"""
Returns whether the completions should be presented in a popup window.
"""
  @gtk_entry_completion_get_popup_completion[Bool](widget)

fun get_popup_set_width(): Bool =>
"""
Returns whether the  completion popup window will be resized to the
width of the entry.
"""
  @gtk_entry_completion_get_popup_set_width[Bool](widget)

fun get_popup_single_match(): Bool =>
"""
Returns whether the completion popup window will appear even if there is
only a single match.
"""
  @gtk_entry_completion_get_popup_single_match[Bool](widget)

fun get_text_column(): I32 =>
"""
Returns the column in the model of @completion to get strings from.
"""
  @gtk_entry_completion_get_text_column[I32](widget)

/* insert_action_markup unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "markup", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* insert_action_text unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "text", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

fun insert_prefix(): None =>
"""
Requests a prefix insertion.
"""
  @gtk_entry_completion_insert_prefix[None](widget)

fun set_inline_completion(inline_completion_pony: Bool): None =>
"""
Sets whether the common prefix of the possible completions should
be automatically inserted in the entry.
"""
  @gtk_entry_completion_set_inline_completion[None](widget, inline_completion_pony)

fun set_inline_selection(inline_selection_pony: Bool): None =>
"""
Sets whether it is possible to cycle through the possible completions
inside the entry.
"""
  @gtk_entry_completion_set_inline_selection[None](widget, inline_selection_pony)

/* set_match_func unavailable due to typing issues
 {:doh, %{argctype: "GtkEntryCompletionMatchFunc", argname: "func", argtype: "EntryCompletionMatchFunc", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "func_data", argtype: "gpointer", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GDestroyNotify", argname: "func_notify", argtype: "GLib.DestroyNotify", paramtype: :param, txo: "none"}}
*/

fun set_minimum_key_length(length_pony: I32): None =>
"""
Requires the length of the search key for @completion to be at least
@length. This is useful for long lists, where completing using a small
key takes a lot of time and will come up with meaningless results anyway
(ie, a too large dataset).
"""
  @gtk_entry_completion_set_minimum_key_length[None](widget, length_pony)

/* set_model unavailable due to typing issues
 {:doh, %{argctype: "GtkTreeModel*", argname: "model", argtype: "TreeModel", paramtype: :param, txo: "none"}}
*/

fun set_popup_completion(popup_completion_pony: Bool): None =>
"""
Sets whether the completions should be presented in a popup window.
"""
  @gtk_entry_completion_set_popup_completion[None](widget, popup_completion_pony)

fun set_popup_set_width(popup_set_width_pony: Bool): None =>
"""
Sets whether the completion popup window will be resized to be the same
width as the entry.
"""
  @gtk_entry_completion_set_popup_set_width[None](widget, popup_set_width_pony)

fun set_popup_single_match(popup_single_match_pony: Bool): None =>
"""
Sets whether the completion popup window will appear even if there is
only a single match. You may want to set this to %FALSE if you
are using [inline completion][GtkEntryCompletion--inline-completion].
"""
  @gtk_entry_completion_set_popup_single_match[None](widget, popup_single_match_pony)

fun set_text_column(column_pony: I32): None =>
"""
Convenience function for setting up the most used case of this code: a
completion list with just strings. This function will set up @completion
to have a list displaying all (and just) strings in the completion list,
and to get those strings from @column in the model of @completion.

This functions creates and adds a #GtkCellRendererText for the selected
column. If you need to set the text column, but don't want the cell
renderer, use g_object_set() to set the #GtkEntryCompletion:text-column
property directly.
"""
  @gtk_entry_completion_set_text_column[None](widget, column_pony)

