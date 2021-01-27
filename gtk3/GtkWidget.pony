use "../gobject"
trait GtkWidget
  fun gtkwidget(): GObjectREF
  fun show_all(): None =>
    @gtk_widget_show_all[None](gtkwidget())

  fun destroy(): None =>
    @gtk_widget_destroy[None](gtkwidget())

//  new create_from_gobjectref(widget': GObjectREF)


