use "lib:gobject-2.0"

class val Passable
  var v: Any val
  new create(a: Any val) =>
    v = a

  fun rv(): Any val =>
    v


primitive GObjectREF
primitive GObject

 fun signal_connect[V: Any val](instance: GObjectREF, detailed_signal: String, c_handler: @{(GObjectREF, V)}, data: V): U64 =>
     @g_signal_connect_data[U64](instance, detailed_signal.cstring(), c_handler, data)

