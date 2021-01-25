/*
   needs: ["None", "Bool", "I32", "GObjectREF"]
provides: ["GtkGLArea"]
*/
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
  @gtk_gl_area_attach_buffers[None](widget)

fun get_auto_render(): Bool =>
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
  @gtk_gl_area_get_has_alpha[Bool](widget)

fun get_has_depth_buffer(): Bool =>
  @gtk_gl_area_get_has_depth_buffer[Bool](widget)

fun get_has_stencil_buffer(): Bool =>
  @gtk_gl_area_get_has_stencil_buffer[Bool](widget)

/* get_required_version unavailable due to typing issues
 {:doh, %{argctype: "gint*", argname: "major", argtype: "gint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gint*", argname: "minor", argtype: "gint", paramtype: :param, txo: "full"}}
*/

fun get_use_es(): Bool =>
  @gtk_gl_area_get_use_es[Bool](widget)

fun make_current(): None =>
  @gtk_gl_area_make_current[None](widget)

fun queue_render(): None =>
  @gtk_gl_area_queue_render[None](widget)

fun set_auto_render(auto_render_pony: Bool): None =>
  @gtk_gl_area_set_auto_render[None](widget, auto_render_pony)

/* set_error unavailable due to typing issues
 {:doh, %{argctype: "const GError*", argname: "gerror", argtype: "GLib.Error", paramtype: :param, txo: "none"}}
*/

fun set_has_alpha(has_alpha_pony: Bool): None =>
  @gtk_gl_area_set_has_alpha[None](widget, has_alpha_pony)

fun set_has_depth_buffer(has_depth_buffer_pony: Bool): None =>
  @gtk_gl_area_set_has_depth_buffer[None](widget, has_depth_buffer_pony)

fun set_has_stencil_buffer(has_stencil_buffer_pony: Bool): None =>
  @gtk_gl_area_set_has_stencil_buffer[None](widget, has_stencil_buffer_pony)

fun set_required_version(major_pony: I32, minor_pony: I32): None =>
  @gtk_gl_area_set_required_version[None](widget, major_pony, minor_pony)

fun set_use_es(use_es_pony: Bool): None =>
  @gtk_gl_area_set_use_es[None](widget, use_es_pony)

