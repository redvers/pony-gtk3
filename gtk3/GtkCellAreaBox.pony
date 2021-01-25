/*
   needs: ["I32", "None", "GObjectREF"]
provides: ["GtkCellAreaBox"]
*/
class GtkCellAreaBox is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create() =>
    widget = @gtk_cell_area_box_new[GObjectREF]() //


fun get_spacing(): I32 =>
  @gtk_cell_area_box_get_spacing[I32](widget)

/* pack_end unavailable due to typing issues
 {:doh, %{argctype: "GtkCellRenderer*", argname: "renderer", argtype: "CellRenderer", paramtype: :param, txo: "none"}}
*/

/* pack_start unavailable due to typing issues
 {:doh, %{argctype: "GtkCellRenderer*", argname: "renderer", argtype: "CellRenderer", paramtype: :param, txo: "none"}}
*/

fun set_spacing(spacing_pony: I32): None =>
  @gtk_cell_area_box_set_spacing[None](widget, spacing_pony)

