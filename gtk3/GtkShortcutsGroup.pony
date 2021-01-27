/*
   needs: ["GObjectREF"]
provides: ["GtkShortcutsGroup"]
*/
use "../gobject"
class GtkShortcutsGroup is GtkWidget
"""
A GtkShortcutsGroup represents a group of related keyboard shortcuts
or gestures. The group has a title. It may optionally be associated with
a view of the application, which can be used to show only relevant shortcuts
depending on the application context.

This widget is only meant to be used with #GtkShortcutsWindow.
"""
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'





