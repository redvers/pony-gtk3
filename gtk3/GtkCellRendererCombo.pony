/*
   needs: ["GObjectREF"]
provides: ["GtkCellRendererCombo"]
*/
use "../gobject"
class GtkCellRendererCombo is GtkWidget
"""
#GtkCellRendererCombo renders text in a cell like #GtkCellRendererText from
which it is derived. But while #GtkCellRendererText offers a simple entry to
edit the text, #GtkCellRendererCombo offers a #GtkComboBox
widget to edit the text. The values to display in the combo box are taken from
the tree model specified in the #GtkCellRendererCombo:model property.

The combo cell renderer takes care of adding a text cell renderer to the combo
box and sets it to display the column specified by its
#GtkCellRendererCombo:text-column property. Further properties of the combo box
can be set in a handler for the #GtkCellRenderer::editing-started signal.

The #GtkCellRendererCombo cell renderer was added in GTK+ 2.6.
"""
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget

  new create_from_GtkBuilder(gtkbuilder: GtkBuilder, glade_id: String) =>
    widget = @gtk_builder_get_object[GObjectREF](gtkbuilder.gtkwidget(), glade_id.cstring())

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'

  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF


  new create() =>
    widget = @gtk_cell_renderer_combo_new[GObjectREF]() //



