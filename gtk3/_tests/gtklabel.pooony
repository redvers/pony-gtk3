use "ponytest"
use "../../gtk3"

class iso TestGtkLabel is UnitTest
  fun name(): String => "GtkLabel.pony"
  fun apply(h: TestHelper) =>
    var lts0: String = "Label Test String0"
    var lts1: String = "Label Test String1\nX"
    var label0: GtkLabel = GtkLabel(lts0)
    var label1: GtkLabel = GtkLabel.new_with_mnemonic(lts1)
    var label2: GtkLabel = GtkLabel("one\ntwo\nthree")


    // get_label(): String =>
    var ts0: String = label0.get_label()
    h.assert_eq[String](lts0, ts0)

    // set_line_wrap(wrap_pony: Bool): None
    // get_line_wrap(): Bool
    label0.set_line_wrap(true)
    label1.set_line_wrap(false)
     h.assert_true(label0.get_line_wrap())
    h.assert_false(label1.get_line_wrap())

    label0.set_line_wrap(false)
    label1.set_line_wrap(true)
    h.assert_false(label0.get_line_wrap())
     h.assert_true(label1.get_line_wrap())

    // set_lines(lines_pony: I32): None
    label0.set_lines(I32(1))
    label1.set_lines(I32(2))
    label2.set_lines(I32(3))
    // get_lines(): I32
    h.assert_eq[I32](1, label0.get_lines())
    h.assert_eq[I32](2, label1.get_lines())
    h.assert_eq[I32](3, label2.get_lines())

    label0.destroy()
    label1.destroy()
    label2.destroy()


/* Etc... implement more later
get_current_uri(): String
get_max_width_chars(): I32
get_mnemonic_keyval(): U32
get_selectable(): Bool
get_single_line_mode(): Bool
get_text(): String
get_track_visited_links(): Bool
get_use_markup(): Bool
get_use_underline(): Bool
get_width_chars(): I32
select_region(start_offset_pony: I32, end_offset_pony: I32): None
set_max_width_chars(n_chars_pony: I32): None
set_selectable(setting_pony: Bool): None
set_single_line_mode(single_line_mode_pony: Bool): None
set_track_visited_links(track_links_pony: Bool): None
set_use_markup(setting_pony: Bool): None
set_use_underline(setting_pony: Bool): None
set_width_chars(n_chars_pony: I32): None

  */
