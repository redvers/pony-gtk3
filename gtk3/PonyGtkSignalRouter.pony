actor PonyGtkSignalRouter
  var x: U32
  new create() =>
    x = U32(10)

  fun tag callback(): @{(GObjectREF)} =>
    @{(v: GObjectREF) =>
      var cstr2: Pointer[U8 val] = @g_type_name_from_instance[Pointer[U8 val]](v)
      var patag: PonyGtkSignalRouter = @g_object_get_data[PonyGtkSignalRouter](v, "ponydata".cstring())
      @printf[I32]("In the callback callback".cstring())
      patag.boom()
    }

  be boom() =>
    x = x + 1
    @printf[I32]("lwejkhdlqwejhdlkeqw %d\n".cstring(), x)

