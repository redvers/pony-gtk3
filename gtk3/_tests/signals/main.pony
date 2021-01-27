//use "lib:gobject-2.0"
use "../../../gobject"
use "../../../gtk3"
use "debug"

actor Main
  new create(env: Env) =>
    env.out.print("sup")

    Gtk.init()
    var mwin: GtkWindow = GtkWindow(GtkWindowToplevel)
    var entry: GtkEntry = GtkEntry
    mwin.add(entry)
    mwin.show_all()


    var callback: @{(GObjectREF, String)} = @{(passed_gtkentry: GObjectREF, strii: String) =>
      var cstr: Pointer[U8 val] ref = @gtk_entry_get_text[Pointer[U8 val] ref](passed_gtkentry)
      var str: String ref = String.from_cstring(cstr)

      var gtkentry: GtkEntry = GtkEntry.create_from_GObjectREF(passed_gtkentry)
      var string: String = gtkentry.get_text()

      Debug.out("Activated! " + str + strii + string)
    }

  GObject.signal_connect[String](entry.gtkwidget(), "activate", callback, "testing123")

  @g_signal_emit_by_name[None](entry.gtkwidget(), "activate".cstring())
  Gtk.main()


