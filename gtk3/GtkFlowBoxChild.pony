/*
   needs: ["None", "I32", "Bool", "GObjectREF"]
provides: ["GtkFlowBoxChild"]
*/
class GtkFlowBoxChild is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF


  new create() =>
    widget = @gtk_flow_box_child_new[GObjectREF]() //


fun changed(): None =>
  @gtk_flow_box_child_changed[None](widget)

fun get_index(): I32 =>
  @gtk_flow_box_child_get_index[I32](widget)

fun is_selected(): Bool =>
  @gtk_flow_box_child_is_selected[Bool](widget)

