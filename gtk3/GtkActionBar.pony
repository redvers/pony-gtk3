/*
   needs: ["GObjectREF", "GtkWidget", "None"]
provides: ["GtkActionBar"]
*/
use "../gobject"
class GtkActionBar is GtkWidget
"""
GtkActionBar is designed to present contextual actions. It is
expected to be displayed below the content and expand horizontally
to fill the area.

It allows placing children at the start or the end. In addition, it
contains an internal centered box which is centered with respect to
the full width of the box, even if the children at either side take
up different amounts of space.

# CSS nodes

GtkActionBar has a single CSS node with name actionbar.
"""
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create() =>
    widget = @gtk_action_bar_new[GObjectREF]() //


/* Needs conversion code 
  fun get_center_widget(): GtkWidget =>
    @gtk_action_bar_get_center_widget[GObjectREF](widget)
*/

fun pack_end(child_pony: GtkWidget): None =>
"""
Adds @child to @action_bar, packed with reference to the
end of the @action_bar.
"""
  @gtk_action_bar_pack_end[None](widget, child_pony.gtkwidget())

fun pack_start(child_pony: GtkWidget): None =>
"""
Adds @child to @action_bar, packed with reference to the
start of the @action_bar.
"""
  @gtk_action_bar_pack_start[None](widget, child_pony.gtkwidget())

fun set_center_widget(center_widget_pony: GtkWidget): None =>
"""
Sets the center widget for the #GtkActionBar.
"""
  @gtk_action_bar_set_center_widget[None](widget, center_widget_pony.gtkwidget())

