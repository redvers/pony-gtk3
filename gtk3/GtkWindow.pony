/*
   needs: ["Bool", "None", "U32", "GtkWidget val", "GObjectREF", "Pointer[U8 val] ref", "String", "I32", "GtkWindowType"]
provides: ["GtkWindow val"]
*/
primitive GtkWindowREF
class val GtkWindow is GtkBin
"""
A GtkWindow is a toplevel window which can contain other widgets.
Windows normally have decorations that are under the control
of the windowing system and allow the user to manipulate the window
(resize it, move it, close it,...).

# GtkWindow as GtkBuildable

The GtkWindow implementation of the #GtkBuildable interface supports a
custom <accel-groups> element, which supports any number of <group>
elements representing the #GtkAccelGroup objects you want to add to
your window (synonymous with gtk_window_add_accel_group().

It also supports the <initial-focus> element, whose name property names
the widget to receive the focus when the window is mapped.

An example of a UI definition fragment with accel groups:
|[
<object class="GtkWindow">
  <accel-groups>
    <group name="accelgroup1"/>
  </accel-groups>
  <initial-focus name="thunderclap"/>
</object>

...

<object class="GtkAccelGroup" id="accelgroup1"/>
]|

The GtkWindow implementation of the #GtkBuildable interface supports
setting a child as the titlebar by specifying “titlebar” as the “type”
attribute of a <child> element.

# CSS nodes

|[<!-- language="plain" -->
window.background
├── decoration
├── <titlebar child>.titlebar [.default-decoration]
╰── <child>
]|

GtkWindow has a main CSS node with name window and style class .background,
and a subnode with name decoration.

Style classes that are typically used with the main CSS node are .csd (when
client-side decorations are in use), .solid-csd (for client-side decorations
without invisible borders), .ssd (used by mutter when rendering server-side
decorations). GtkWindow also represents window states with the following
style classes on the main node: .tiled, .maximized, .fullscreen. Specialized
types of window often add their own discriminating style classes, such as
.popup or .tooltip.

GtkWindow adds the .titlebar and .default-decoration style classes to the
widget that is added as a titlebar child.
"""
  var widget: GtkWindowREF val

  fun gtkwidget(): GtkWindowREF val => widget
/*
  new val create_from_GtkBuilder(gtkbuilder: GtkBuilder, glade_id: String) =>
    widget = @gtk_builder_get_object[GObjectREF](gtkbuilder.gtkwidget(), glade_id.cstring())

  new val create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'

  new val never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

*/
  new val create(gtype_pony: GtkWindowType) =>
    widget = @gtk_window_new[GtkWindowREF](gtype_pony.apply()) //
