/*
   needs: ["GObjectREF", "Bool", "I32"]
provides: ["GtkHBox"]
*/
class GtkHBox is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create(homogeneous_pony: Bool, spacing_pony: I32) =>
    widget = @gtk_hbox_new[GObjectREF](homogeneous_pony, spacing_pony) //



