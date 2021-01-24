use "ponytest"
use "../../gtk3"
use "debug"

actor Main is TestList
  new create(env: Env) =>
    Gtk.init()
    PonyTest(env, this)

  new make() =>
    None

  fun tag tests(test: PonyTest) =>
    test(TestGtk)
    test(TestGtkLabel)
    test(TestGtkEntryBuffer)

