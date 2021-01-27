/*
   needs: ["None", "GObjectREF", "GtkNotebookAccessible", "GtkWidget"]
provides: ["GtkNotebookPageAccessible"]
*/
use "../gobject"
class GtkNotebookPageAccessible is GtkWidget
"""
No documentation provided
"""
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget

  new create_from_GtkBuilder(gtkbuilder: GtkBuilder, glade_id: String) =>
    widget = @gtk_builder_get_object[GObjectREF](gtkbuilder.gtkwidget(), glade_id.cstring())

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'

  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF


  new create(notebook_pony: GtkNotebookAccessible, child_pony: GtkWidget) =>
    widget = @gtk_notebook_page_accessible_new[GObjectREF](notebook_pony.gtkwidget(), child_pony.gtkwidget()) //


fun invalidate(): None =>
"""
No provided documentation
"""
  @gtk_notebook_page_accessible_invalidate[None](widget)

