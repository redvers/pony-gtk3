/*
   needs: ["GObjectREF"]
provides: ["GtkOffscreenWindow val"]
*/
use "../gobject"
class val GtkOffscreenWindow is GtkWidget
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
  var widget: GObjectREF val

  fun gtkwidget(): GObjectREF val => widget

  new val create_from_GtkBuilder(gtkbuilder: GtkBuilder, glade_id: String) =>
    widget = @gtk_builder_get_object[GObjectREF](gtkbuilder.gtkwidget(), glade_id.cstring())

  new val create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'

  new val never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF


  new val create() =>
    widget = @gtk_offscreen_window_new[GObjectREF]() //


  fun pony_NOT_IMPLEMENTED_YET_get_pixbuf(): None =>
    """
    Retrieves a snapshot of the contained widget in the form of
a #GdkPixbuf.  This is a new pixbuf with a reference count of 1,
and the application should unreference it once it is no longer
needed.

    {:argctype, "GdkPixbuf*"}
{:argname, "rv"}
{:argtype, "GdkPixbuf.Pixbuf"}
{:paramtype, :param}
{:txo, "full"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_surface(): None =>
    """
    Retrieves a snapshot of the contained widget in the form of
a #cairo_surface_t.  If you need to keep this around over window
resizes then you should add a reference to it.

    {:argctype, "cairo_surface_t*"}
{:argname, "rv"}
{:argtype, "cairo.Surface"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

