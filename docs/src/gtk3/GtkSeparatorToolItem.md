```````pony-full-source
/*
   needs: ["Bool", "None", "GObjectREF"]
provides: ["GtkSeparatorToolItem"]
*/
use "../gobject"
class GtkSeparatorToolItem is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create() =>
    widget = @gtk_separator_tool_item_new[GObjectREF]() //


fun get_draw(): Bool =>
"""
Returns whether @item is drawn as a line, or just blank.
See gtk_separator_tool_item_set_draw().
"""
  @gtk_separator_tool_item_get_draw[Bool](widget)

fun set_draw(draw_pony: Bool): None =>
"""
Whether @item is drawn as a vertical line, or just blank.
Setting this to %FALSE along with gtk_tool_item_set_expand() is useful
to create an item that forces following items to the end of the toolbar.
"""
  @gtk_separator_tool_item_set_draw[None](widget, draw_pony)


```````