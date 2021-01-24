trait GtkContainer is GtkWidget
  fun gtkwidget(): GObjectREF
  fun add(childwidget: GtkWidget): None =>
    @gtk_container_add[None](gtkwidget(), childwidget.gtkwidget())
