```````pony-full-source
/*
   needs: ["Bool", "None", "GObjectREF"]
provides: ["GtkCellRendererToggle"]
*/
use "../gobject"
class GtkCellRendererToggle is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create() =>
    widget = @gtk_cell_renderer_toggle_new[GObjectREF]() //


fun get_activatable(): Bool =>
  @gtk_cell_renderer_toggle_get_activatable[Bool](widget)

fun get_active(): Bool =>
  @gtk_cell_renderer_toggle_get_active[Bool](widget)

fun get_radio(): Bool =>
  @gtk_cell_renderer_toggle_get_radio[Bool](widget)

fun set_activatable(setting_pony: Bool): None =>
  @gtk_cell_renderer_toggle_set_activatable[None](widget, setting_pony)

fun set_active(setting_pony: Bool): None =>
  @gtk_cell_renderer_toggle_set_active[None](widget, setting_pony)

fun set_radio(radio_pony: Bool): None =>
  @gtk_cell_renderer_toggle_set_radio[None](widget, radio_pony)


```````