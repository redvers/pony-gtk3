```````pony-full-source
/*
   needs: ["None", "Bool", "I32", "GObjectREF"]
provides: ["GtkGLArea"]
*/
use "../gobject"
class GtkGLArea is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create() =>
    widget = @gtk_gl_area_new[GObjectREF]() //


fun attach_buffers(): None =>
"""
Ensures that the @area framebuffer object is made the current draw
and read target, and that all the required buffers for the @area
are created and bound to the frambuffer.

This function is automatically called before emitting the
#GtkGLArea::render signal, and doesn't normally need to be called
by application code.
"""
  @gtk_gl_area_attach_buffers[None](widget)

fun get_auto_render(): Bool =>
"""
Returns whether the area is in auto render mode or not.
"""
  @gtk_gl_area_get_auto_render[Bool](widget)

/* get_context unavailable due to return typing issues
{:argctype, "GdkGLContext*"}
{:argname, "rv"}
{:argtype, "Gdk.GLContext"}
{:paramtype, :param}
{:txo, "none"} */

/* get_error unavailable due to return typing issues
{:argctype, "GError*"}
{:argname, "rv"}
{:argtype, "GLib.Error"}
{:paramtype, :param}
{:txo, "none"} */

fun get_has_alpha(): Bool =>
"""
Returns whether the area has an alpha component.
"""
  @gtk_gl_area_get_has_alpha[Bool](widget)

fun get_has_depth_buffer(): Bool =>
"""
Returns whether the area has a depth buffer.
"""
  @gtk_gl_area_get_has_depth_buffer[Bool](widget)

fun get_has_stencil_buffer(): Bool =>
"""
Returns whether the area has a stencil buffer.
"""
  @gtk_gl_area_get_has_stencil_buffer[Bool](widget)

/* get_required_version unavailable due to typing issues
 {:doh, %{argctype: "gint*", argname: "major", argtype: "gint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gint*", argname: "minor", argtype: "gint", paramtype: :param, txo: "full"}}
*/

fun get_use_es(): Bool =>
"""
Retrieves the value set by gtk_gl_area_set_use_es().
"""
  @gtk_gl_area_get_use_es[Bool](widget)

fun make_current(): None =>
"""
Ensures that the #GdkGLContext used by @area is associated with
the #GtkGLArea.

This function is automatically called before emitting the
#GtkGLArea::render signal, and doesn't normally need to be called
by application code.
"""
  @gtk_gl_area_make_current[None](widget)

fun queue_render(): None =>
"""
Marks the currently rendered data (if any) as invalid, and queues
a redraw of the widget, ensuring that the #GtkGLArea::render signal
is emitted during the draw.

This is only needed when the gtk_gl_area_set_auto_render() has
been called with a %FALSE value. The default behaviour is to
emit #GtkGLArea::render on each draw.
"""
  @gtk_gl_area_queue_render[None](widget)

fun set_auto_render(auto_render_pony: Bool): None =>
"""
If @auto_render is %TRUE the #GtkGLArea::render signal will be
emitted every time the widget draws. This is the default and is
useful if drawing the widget is faster.

If @auto_render is %FALSE the data from previous rendering is kept
around and will be used for drawing the widget the next time,
unless the window is resized. In order to force a rendering
gtk_gl_area_queue_render() must be called. This mode is useful when
the scene changes seldomly, but takes a long time to redraw.
"""
  @gtk_gl_area_set_auto_render[None](widget, auto_render_pony)

/* set_error unavailable due to typing issues
 {:doh, %{argctype: "const GError*", argname: "gerror", argtype: "GLib.Error", paramtype: :param, txo: "none"}}
*/

fun set_has_alpha(has_alpha_pony: Bool): None =>
"""
If @has_alpha is %TRUE the buffer allocated by the widget will have
an alpha channel component, and when rendering to the window the
result will be composited over whatever is below the widget.

If @has_alpha is %FALSE there will be no alpha channel, and the
buffer will fully replace anything below the widget.
"""
  @gtk_gl_area_set_has_alpha[None](widget, has_alpha_pony)

fun set_has_depth_buffer(has_depth_buffer_pony: Bool): None =>
"""
If @has_depth_buffer is %TRUE the widget will allocate and
enable a depth buffer for the target framebuffer. Otherwise
there will be none.
"""
  @gtk_gl_area_set_has_depth_buffer[None](widget, has_depth_buffer_pony)

fun set_has_stencil_buffer(has_stencil_buffer_pony: Bool): None =>
"""
If @has_stencil_buffer is %TRUE the widget will allocate and
enable a stencil buffer for the target framebuffer. Otherwise
there will be none.
"""
  @gtk_gl_area_set_has_stencil_buffer[None](widget, has_stencil_buffer_pony)

fun set_required_version(major_pony: I32, minor_pony: I32): None =>
"""
Sets the required version of OpenGL to be used when creating the context
for the widget.

This function must be called before the area has been realized.
"""
  @gtk_gl_area_set_required_version[None](widget, major_pony, minor_pony)

fun set_use_es(use_es_pony: Bool): None =>
"""
Sets whether the @area should create an OpenGL or an OpenGL ES context.

You should check the capabilities of the #GdkGLContext before drawing
with either API.
"""
  @gtk_gl_area_set_use_es[None](widget, use_es_pony)


```````