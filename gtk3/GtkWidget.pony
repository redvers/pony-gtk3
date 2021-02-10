use "../gobject"
trait GtkWidget
  fun gtkwidget(): GObjectREF
  fun show_all(): None =>
    @gtk_widget_show_all[None](gtkwidget())

  fun destroy(): None =>
    @gtk_widget_destroy[None](gtkwidget())

  fun signal_connect[V: Any #share](detailed_signal: String, c_handler: @{(GObjectREF, V)}, data: V): U64 =>
    GObject.signal_connect[V](gtkwidget(), detailed_signal, c_handler, data)

  fun signal_connect_clicked[V: Any #share](c_handler: @{(GObjectREF, V)}, data: V): U64 =>
    @g_signal_connect_data[U64](gtkwidget(), "clicked".cstring(), c_handler, data)

  fun signal_connect_delete_event(c_handler: @{(GObjectREF)}): U64 =>
    @g_signal_connect_data[U64](gtkwidget(), "delete-event".cstring(), c_handler)

