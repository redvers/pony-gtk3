use "ponytest"
use "../../gtk3"
use "../../gobject"
//use "lib:glib-2.0"
//use "lib:gobject-2.0"
use "debug"

primitive GType

class iso TestGtkBuilder is UnitTest
  fun name(): String => "GtkBuilder.pony"
  fun apply(h: TestHelper) =>
    var builderspec: String = UIData()
    let builder: GtkBuilder = GtkBuilder.new_from_string(builderspec, UIData().size().i64())

/*
    var callback = @{(v: GObjectREF) =>
      var cstr2: Pointer[GType] = @g_type_name_from_instance[Pointer[GType]](v)
      var patag: PonyGtkSignalRouter = @g_object_get_data[PonyGtkSignalRouter](v, "ponydata".cstring())
      patag.boom()
      @printf[I32](cstr2)
    }

*/
    var winobj: GObjectREF = @gtk_builder_get_object[GObjectREF](builder.gtkwidget(), "GtkWindow".cstring())
    var gentry: GObjectREF = @gtk_builder_get_object[GObjectREF](builder.gtkwidget(), "sayit".cstring())
//    @g_object_set_data[None](gentry, "ponydata".cstring(), ta)
/*
    h.assert_true(winobj.is_null())  FIXME
    winobj                 = @gtk_builder_get_object[GObjectREF](builder.gtkwidget(), "GtkWindow".cstring())
    h.assert_false(winobj.is_null()) FIXME
*/
    let mwin: GtkWindow = GtkWindow.create_from_GObjectREF(winobj)
//    builder.add_callback_symbol("sayit_activate_cb", ta.callback() )
//    builder.connect_signals()
//    var gtype: Pointer[GType] = @gtk_widget_get_type[Pointer[GType]](winobj)
//    var cstr2: Pointer[U8 val] ref = @g_type_name_from_instance[Pointer[U8 val] ref](gtype)
//    Debug("Hello" + String.from_cstring(cstr2) + "World")
    mwin.show_all()

//    Gtk.main()

