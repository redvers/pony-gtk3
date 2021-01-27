```````pony-full-source
/*
   needs: ["GObjectREF"]
provides: ["GtkOverlay"]
*/
use "../gobject"
class GtkOverlay is GtkWidget
"""
GtkOverlay is a container which contains a single main child, on top
of which it can place “overlay” widgets. The position of each overlay
widget is determined by its #GtkWidget:halign and #GtkWidget:valign
properties. E.g. a widget with both alignments set to %GTK_ALIGN_START
will be placed at the top left corner of the GtkOverlay container,
whereas an overlay with halign set to %GTK_ALIGN_CENTER and valign set
to %GTK_ALIGN_END will be placed a the bottom edge of the GtkOverlay,
horizontally centered. The position can be adjusted by setting the margin
properties of the child to non-zero values.

More complicated placement of overlays is possible by connecting
to the #GtkOverlay::get-child-position signal.

An overlay’s minimum and natural sizes are those of its main child. The sizes
of overlay children are not considered when measuring these preferred sizes.

# GtkOverlay as GtkBuildable

The GtkOverlay implementation of the GtkBuildable interface
supports placing a child as an overlay by specifying “overlay” as
the “type” attribute of a `<child>` element.

# CSS nodes

GtkOverlay has a single CSS node with the name “overlay”. Overlay children
whose alignments cause them to be positioned at an edge get the style classes
“.left”, “.right”, “.top”, and/or “.bottom” according to their position.
"""
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create() =>
    widget = @gtk_overlay_new[GObjectREF]() //


/* add_overlay unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "widget", argtype: "Widget", paramtype: :param, txo: "none"}}
*/

/* get_overlay_pass_through unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "widget", argtype: "Widget", paramtype: :param, txo: "none"}}
*/

/* reorder_overlay unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "child", argtype: "Widget", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "int", argname: "index_", argtype: "gint", paramtype: :param, txo: "none"}}
*/

/* set_overlay_pass_through unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "widget", argtype: "Widget", paramtype: :param, txo: "none"}}
*/


```````