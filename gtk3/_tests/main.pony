use "ponytest"
use "../../gtk3"
use "debug"

actor Main is TestList
  fun @runtime_override_defaults(rto: RuntimeOptions) =>
    rto.ponyminthreads = U32(2)

  new create(env: Env) =>
    Gtk.init()
    PonyTest(env, this)

  new make() =>
    None

  fun tag tests(test: PonyTest) =>
    test(TestGtk)
    test(TestGtkLabel)
    test(TestGtkEntryBuffer)
    test(TestGtkEntry)
    test(TestGtkBuilder)
    test(TestSignals)

