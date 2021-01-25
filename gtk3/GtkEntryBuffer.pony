/*
   needs: ["U32", "I32", "None", "Pointer[U8 val] ref", "String", "GObjectREF"]
provides: ["GtkEntryBuffer"]
*/
class GtkEntryBuffer is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create(initial_chars_pony: String, n_initial_chars_pony: I32) =>
    widget = @gtk_entry_buffer_new[GObjectREF](initial_chars_pony.cstring(), n_initial_chars_pony) //


fun delete_text(position_pony: U32, n_chars_pony: I32): U32 =>
  @gtk_entry_buffer_delete_text[U32](widget, position_pony, n_chars_pony)

fun emit_deleted_text(position_pony: U32, n_chars_pony: U32): None =>
  @gtk_entry_buffer_emit_deleted_text[None](widget, position_pony, n_chars_pony)

/* emit_inserted_text unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "chars", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* get_bytes unavailable due to return typing issues
{:argctype, "gsize"}
{:argname, "rv"}
{:argtype, "gsize"}
{:paramtype, :param}
{:txo, "none"} */

fun get_length(): U32 =>
  @gtk_entry_buffer_get_length[U32](widget)

fun get_max_length(): I32 =>
  @gtk_entry_buffer_get_max_length[I32](widget)

fun get_text(): String =>
  var cstring_pony: Pointer[U8 val] ref = @gtk_entry_buffer_get_text[Pointer[U8 val] ref](widget)
var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

/* insert_text unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "chars", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

fun set_max_length(max_length_pony: I32): None =>
  @gtk_entry_buffer_set_max_length[None](widget, max_length_pony)

/* set_text unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "chars", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

