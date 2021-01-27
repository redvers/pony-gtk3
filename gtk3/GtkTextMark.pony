/*
   needs: ["Bool", "Pointer[U8 val] ref", "String", "None", "GObjectREF"]
provides: ["GtkTextMark"]
*/
use "../gobject"
class GtkTextMark is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create(name_pony: String, left_gravity_pony: Bool) =>
    widget = @gtk_text_mark_new[GObjectREF](name_pony.cstring(), left_gravity_pony) //


/* get_buffer unavailable due to return typing issues
{:argctype, "GtkTextBuffer*"}
{:argname, "rv"}
{:argtype, "TextBuffer"}
{:paramtype, :param}
{:txo, "none"} */

fun get_deleted(): Bool =>
"""
Returns %TRUE if the mark has been removed from its buffer
with gtk_text_buffer_delete_mark(). See gtk_text_buffer_add_mark()
for a way to add it to a buffer again.
"""
  @gtk_text_mark_get_deleted[Bool](widget)

fun get_left_gravity(): Bool =>
"""
Determines whether the mark has left gravity.
"""
  @gtk_text_mark_get_left_gravity[Bool](widget)

fun get_name(): String =>
"""
Returns the mark name; returns NULL for anonymous marks.
"""
  var cstring_pony: Pointer[U8 val] ref = @gtk_text_mark_get_name[Pointer[U8 val] ref](widget)
  var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

fun get_visible(): Bool =>
"""
Returns %TRUE if the mark is visible (i.e. a cursor is displayed
for it).
"""
  @gtk_text_mark_get_visible[Bool](widget)

fun set_visible(setting_pony: Bool): None =>
"""
Sets the visibility of @mark; the insertion point is normally
visible, i.e. you can see it as a vertical bar. Also, the text
widget uses a visible mark to indicate where a drop will occur when
dragging-and-dropping text. Most other marks are not visible.
Marks are not visible by default.
"""
  @gtk_text_mark_set_visible[None](widget, setting_pony)

