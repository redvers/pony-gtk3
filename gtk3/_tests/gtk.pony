use "ponytest"
use "../../gtk3"

class iso TestGtk is UnitTest
  fun name(): String => "Gtk.pony"
  fun apply(h: TestHelper) =>
    // Gtk.check_version(required_major_pony: U32, required_minor_pony: U32, required_micro_pony: U32): String
    var s0: String = Gtk.check_version(U32(2), U32(3), U32(40))
    var s1: String = Gtk.check_version(U32(3), U32(3), U32(3))
    var s2: String = Gtk.check_version(U32(4), U32(3), U32(40))
    h.assert_eq[String](s0, "GTK+ version too new (major mismatch)")
    h.assert_eq[String](s1,  "")
    h.assert_eq[String](s2, "GTK+ version too old (major mismatch)")

    // Gtk.gfalse(): Bool
    // Gtk.gtrue(): Bool
    var b0: Bool = Gtk.gfalse()
    var b1: Bool = Gtk.gtrue()
    h.assert_false(b0)
    h.assert_true(b1)

    // gevents_pending(): Bool
    b0 = Gtk.events_pending()
    h.assert_true(b0)

/*  I don't see these methods being used so
 *  not writing tests for them.
 *
 *  Just in case they have unpredictable results
 *  on someone else's machine
 *
 *  gdisable_setlocale(): None
 *  gget_binary_age(): U32
 *  gget_debug_flags(): U32
 *  gget_interface_age(): U32
 *  gget_major_version(): U32
 *  gget_micro_version(): U32
 *  gget_minor_version(): U32
 *  gkey_snooper_remove(snooper_handler_id_pony: U32): None
 *  gmain(): None
 *  gmain_iteration(): Bool
 *  gmain_iteration_do(blocking_pony: Bool): Bool
 *  gmain_level(): U32
 *  gmain_quit(): None
 *  gpaper_size_get_default(): String
 *  grc_reparse_all(): Bool
 *  gset_debug_flags(flags_pony: U32): None
 *  gtest_register_all_types(): None
*/

