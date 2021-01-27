//use "lib:gobject-2.0"
use "ponytest"
use "../../gobject"
use "../../gtk3"
use "debug"

class iso TestSignals is UnitTest
  fun name(): String => "Signals Testing"
  fun apply(h: TestHelper) =>

    var mwin: GtkWindow = GtkWindow(GtkWindowToplevel)
    var entry: GtkEntry = GtkEntry
    mwin.add(entry)
    mwin.show_all()


    var callback: @{(GObjectREF, String)} = @{(passed_gtkentry: GObjectREF, strii: String) =>
      var cstr: Pointer[U8 val] ref = @gtk_entry_get_text[Pointer[U8 val] ref](passed_gtkentry)
      var str: String ref = String.from_cstring(cstr)

      var gtkentry: GtkEntry = GtkEntry.create_from_GObjectREF(passed_gtkentry)
      var string: String = gtkentry.get_text()

      Debug.out("Activated: String=> " + strii)
    }

  entry.signal_connect[String]("activate", callback, "testing123")
//  @g_signal_emit_by_name[None](entry.gtkwidget(), "activate".cstring())

  var ta: TagCheck = TagCheck

  var callback1: @{(GObjectREF, TagCheck)} = @{(passed_gtkentry: GObjectREF, gtag: TagCheck) =>
    gtag.boom("Anonymous")
    Debug.out("Activated: TagCheck")
  }

  entry.signal_connect[TagCheck]("activate", callback1, ta)
  entry.signal_connect[TagCheck]("activate", Callbacks~barecb(), ta)

  @g_signal_emit_by_name[None](entry.gtkwidget(), "activate".cstring())

primitive Callbacks
  fun @barecb(passed_gtkentry: GObjectREF, gtag: TagCheck) =>
    gtag.boom("Not Anonymous")
    Debug.out("Activated: Not Anonymous Function")

actor TagCheck
  new create() =>
    None

  be boom(a: String) =>
    Debug.out("Activated: Actor Response: " + a)




