/*
   needs: ["GObjectREF"]
provides: ["GtkOffscreenWindow"]
*/
use "../gobject"
class GtkOffscreenWindow is GtkWidget
"""
GtkOffscreenWindow is strictly intended to be used for obtaining
snapshots of widgets that are not part of a normal widget hierarchy.
Since #GtkOffscreenWindow is a toplevel widget you cannot obtain
snapshots of a full window with it since you cannot pack a toplevel
widget in another toplevel.

The idea is to take a widget and manually set the state of it,
add it to a GtkOffscreenWindow and then retrieve the snapshot
as a #cairo_surface_t or #GdkPixbuf.

GtkOffscreenWindow derives from #GtkWindow only as an implementation
detail.  Applications should not use any API specific to #GtkWindow
to operate on this object.  It should be treated as a #GtkBin that
has no parent widget.

When contained offscreen widgets are redrawn, GtkOffscreenWindow
will emit a #GtkWidget::damage-event signal.
"""
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create() =>
    widget = @gtk_offscreen_window_new[GObjectREF]() //


/* get_pixbuf unavailable due to return typing issues
{:argctype, "GdkPixbuf*"}
{:argname, "rv"}
{:argtype, "GdkPixbuf.Pixbuf"}
{:paramtype, :param}
{:txo, "full"} */

/* get_surface unavailable due to return typing issues
{:argctype, "cairo_surface_t*"}
{:argname, "rv"}
{:argtype, "cairo.Surface"}
{:paramtype, :param}
{:txo, "none"} */

