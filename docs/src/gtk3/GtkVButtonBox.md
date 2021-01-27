```````pony-full-source
/*
   needs: ["GObjectREF"]
provides: ["GtkVButtonBox"]
*/
use "../gobject"
class GtkVButtonBox is GtkWidget
"""
No documentation provided
"""
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create() =>
    widget = @gtk_vbutton_box_new[GObjectREF]() //




```````