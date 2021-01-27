/*
   needs: ["GObjectREF"]
provides: ["GtkShortcutsSection"]
*/
use "../gobject"
class GtkShortcutsSection is GtkWidget
"""
A GtkShortcutsSection collects all the keyboard shortcuts and gestures
for a major application mode. If your application needs multiple sections,
you should give each section a unique #GtkShortcutsSection:section-name and
a #GtkShortcutsSection:title that can be shown in the section selector of
the GtkShortcutsWindow.

The #GtkShortcutsSection:max-height property can be used to influence how
the groups in the section are distributed over pages and columns.

This widget is only meant to be used with #GtkShortcutsWindow.
"""
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'





