use "ponytest"
use "../../gtk3"

class iso TestGtkEntryBuffer is UnitTest
  fun name(): String => "GtkEntry.pony"
  fun apply(h: TestHelper) =>
    var s0: String = "This is the initial test for the GtkEntryBuffer"
    var buffer0: GtkEntryBuffer = GtkEntryBuffer(s0, s0.size().i32())

    // get_text(): String
    // get_length(): U32
    h.assert_eq[String](s0, buffer0.get_text())               // FIXME Creation length is I32,
    h.assert_eq[U32](s0.size().u32(), buffer0.get_length())   // FIXME Readback length is U32.

    // get_max_length(): I32
    h.assert_eq[I32](I32(0), buffer0.get_max_length())        // FIXME Back to I32 again

    // delete_text(position_pony: U32, n_chars_pony: I32): U32
    h.assert_eq[U32](U32(3), buffer0.delete_text(U32(5), I32(3)))
    h.assert_eq[String]("This the initial test for the GtkEntryBuffer", buffer0.get_text())
    h.assert_ne[String]("This  the initial test for the GtkEntryBuffer", buffer0.get_text())

    // set_max_length(max_length_pony: I32): None
    buffer0.set_max_length(I32(100))
    h.assert_eq[String]("This the initial test for the GtkEntryBuffer", buffer0.get_text())
    buffer0.set_max_length(I32(4))
    h.assert_ne[String]("Thisi", buffer0.get_text())

/* GtkEntryBuffer Lol
emit_deleted_text(position_pony: U32, n_chars_pony: U32): None =>
*/

/* GtkEntry
get_activates_default(): Bool =>
get_current_icon_drag_source(): I32 =>
get_has_frame(): Bool =>
get_icon_at_pos(x_pony: I32, y_pony: I32): I32 =>
get_max_length(): I32 =>
get_max_width_chars(): I32 =>
get_overwrite_mode(): Bool =>
get_placeholder_text(): String =>
get_text(): String =>
get_visibility(): Bool =>
get_width_chars(): I32 =>
grab_focus_without_selecting(): None =>
layout_index_to_text_index(layout_index_pony: I32): I32 =>
progress_pulse(): None =>
reset_im_context(): None =>
set_activates_default(setting_pony: Bool): None =>
set_has_frame(setting_pony: Bool): None =>
set_max_length(max_pony: I32): None =>
set_max_width_chars(n_chars_pony: I32): None =>
set_overwrite_mode(overwrite_pony: Bool): None =>
set_visibility(visible_pony: Bool): None =>
set_width_chars(n_chars_pony: I32): None =>
text_index_to_layout_index(text_index_pony: I32): I32 =>
unset_invisible_char(): None =>
*/
