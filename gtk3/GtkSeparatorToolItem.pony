/*
   needs: ["Bool", "None", "GObjectREF"]
provides: ["GtkSeparatorToolItem"]
*/
class GtkSeparatorToolItem is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF


  new create() =>
    widget = @gtk_separator_tool_item_new[GObjectREF]() //


fun get_draw(): Bool =>
  @gtk_separator_tool_item_get_draw[Bool](widget)

fun set_draw(draw_pony: Bool): None =>
  @gtk_separator_tool_item_set_draw[None](widget, draw_pony)

