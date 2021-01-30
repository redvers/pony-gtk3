use "lib:gobject-2.0"


interface GObject
  fun gtkwidget(): GtkWidgetREF
  fun signal_connect[V: Any #share](instance: GObject, detailed_signal: String, c_handler: @{(GObject, V)}, data: V): U64 =>
     @g_signal_connect_data[U64](instance, detailed_signal.cstring(), c_handler, data)

interface GIntentionallyUnowned is GObject

interface GtkWidget is GIntentionallyUnowned
  fun show_all(): None =>
    @gtk_widget_show_all[None](gtkwidget())

  fun destroy(): None =>
    @gtk_widget_destroy[None](gtkwidget())

interface GtkContainer is GtkWidget
  fun add(childwidget: GtkWidget val): None =>
    @gtk_container_add[None](gtkwidget(), childwidget.gtkwidget())

interface GtkBin is GtkContainer

interface GtkMisc is GtkWidget

type GObjectREF is (GIntentionallyUnownedREF)
type GIntentionallyUnownedREF is (GtkWidgetREF)
type GtkWidgetREF is (GtkContainerREF | GtkMiscREF)
type GtkContainerREF is (GtkBinREF)
type GtkBinREF is (GtkWindowREF | GtkButtonREF)
type GtkMiscREF is (GtkLabelREF)







