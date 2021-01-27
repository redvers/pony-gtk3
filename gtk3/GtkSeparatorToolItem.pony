/*
   needs: ["Bool", "None", "GObjectREF"]
provides: ["GtkSeparatorToolItem"]
*/
use "../gobject"
class GtkSeparatorToolItem is GtkWidget
"""
A #GtkSeparatorToolItem is a #GtkToolItem that separates groups of other
#GtkToolItems. Depending on the theme, a #GtkSeparatorToolItem will
often look like a vertical line on horizontally docked toolbars.

If the #GtkToolbar child property “expand” is %TRUE and the property
#GtkSeparatorToolItem:draw is %FALSE, a #GtkSeparatorToolItem will act as
a “spring” that forces other items to the ends of the toolbar.

Use gtk_separator_tool_item_new() to create a new #GtkSeparatorToolItem.

# CSS nodes

GtkSeparatorToolItem has a single CSS node with name separator.
"""
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

