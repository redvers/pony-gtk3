/*
   needs: ["None", "GObjectREF", "GtkNotebookAccessible", "GtkWidget"]
provides: ["GtkNotebookPageAccessible"]
*/
use "../gobject"
class GtkNotebookPageAccessible is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create(notebook_pony: GtkNotebookAccessible, child_pony: GtkWidget) =>
    widget = @gtk_notebook_page_accessible_new[GObjectREF](notebook_pony.gtkwidget(), child_pony.gtkwidget()) //


fun invalidate(): None =>
"""
No provided documentation
"""
  @gtk_notebook_page_accessible_invalidate[None](widget)

