use "ponytest"
use "../../gtk3"

class iso TestGtkEntryBuffer is UnitTest
  fun name(): String => "GtkEntryBuffer.pony"
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

class iso TestGtkEntry is UnitTest
  fun name(): String => "GtkEntry.pony"
  fun apply(h: TestHelper) =>
    var s0: String = "This is the initial test for the GtkEntryBuffer"
    var buffer0: GtkEntryBuffer = GtkEntryBuffer(s0, s0.size().i32())

    var entry0: GtkEntry = GtkEntry
    var entry1: GtkEntry = GtkEntry.new_with_buffer(buffer0)

    // get_text(): String =>
    h.assert_eq[String]("", entry0.get_text())
    h.assert_eq[String](s0, entry1.get_text())

    // set_activates_default(setting_pony: Bool): None
    // get_activates_default(): Bool
    entry0.set_activates_default(true)
    entry1.set_activates_default(true)
    h.assert_true(entry0.get_activates_default())
    h.assert_true(entry1.get_activates_default())
    entry0.set_activates_default(false)
    entry1.set_activates_default(false)
    h.assert_false(entry0.get_activates_default())
    h.assert_false(entry1.get_activates_default())

    // set_has_frame(setting_pony: Bool): None
    // get_has_frame(): Bool
    entry0.set_has_frame(true)
    entry1.set_has_frame(true)
    h.assert_true(entry0.get_has_frame())
    h.assert_true(entry1.get_has_frame())
    entry0.set_has_frame(false)
    entry1.set_has_frame(false)
    h.assert_false(entry0.get_has_frame())
    h.assert_false(entry1.get_has_frame())


    // set_max_length(max_pony: I32): None
    // get_max_length(): I32
    entry0.set_max_length(I32(100))
    entry1.set_max_length(I32(100))
    h.assert_eq[I32](I32(100), entry0.get_max_length())
    h.assert_eq[I32](I32(100), entry1.get_max_length())
    entry0.set_max_length(I32(5))
    entry1.set_max_length(I32(5))
    h.assert_eq[I32](I32(5), entry0.get_max_length())
    h.assert_eq[I32](I32(5), entry1.get_max_length())


    // set_max_width_chars(n_chars_pony: I32): None
    // get_max_width_chars(): I32
    entry0.set_max_width_chars(I32(100))
    entry1.set_max_width_chars(I32(100))
    h.assert_eq[I32](I32(100), entry0.get_max_width_chars())
    h.assert_eq[I32](I32(100), entry1.get_max_width_chars())
    entry0.set_max_width_chars(I32(5))
    entry1.set_max_width_chars(I32(5))
    h.assert_eq[I32](I32(5), entry0.get_max_width_chars())
    h.assert_eq[I32](I32(5), entry1.get_max_width_chars())

    entry0.destroy()
    entry1.destroy()

    // set_overwrite_mode(overwrite_pony: Bool): None
    // get_overwrite_mode(): Bool


    // set_visibility(visible_pony: Bool): None
    // get_visibility(): Bool


    // set_width_chars(n_chars_pony: I32): None
    // get_width_chars(): I32


/* GtkEntry
grab_focus_without_selecting(): None =>
    // get_current_icon_drag_source(): I32 =>
    // get_icon_at_pos(x_pony: I32, y_pony: I32): I32 =>
    // get_placeholder_text(): String =>
layout_index_to_text_index(layout_index_pony: I32): I32 =>
progress_pulse(): None =>
reset_im_context(): None =>
text_index_to_layout_index(text_index_pony: I32): I32 =>
unset_invisible_char(): None =>
*/
