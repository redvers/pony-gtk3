/*
   needs: ["Bool", "None", "GObjectREF"]
provides: ["GtkEventBox"]
*/
class GtkEventBox is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create() =>
    widget = @gtk_event_box_new[GObjectREF]() //


fun get_above_child(): Bool =>
  @gtk_event_box_get_above_child[Bool](widget)

fun get_visible_window(): Bool =>
  @gtk_event_box_get_visible_window[Bool](widget)

fun set_above_child(above_child_pony: Bool): None =>
  @gtk_event_box_set_above_child[None](widget, above_child_pony)

fun set_visible_window(visible_window_pony: Bool): None =>
  @gtk_event_box_set_visible_window[None](widget, visible_window_pony)

