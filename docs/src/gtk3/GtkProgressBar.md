```````pony-full-source
/*
   needs: ["Bool", "Pointer[U8 val] ref", "String", "None", "GObjectREF"]
provides: ["GtkProgressBar"]
*/
use "../gobject"
class GtkProgressBar is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create() =>
    widget = @gtk_progress_bar_new[GObjectREF]() //


/* get_ellipsize unavailable due to return typing issues
{:argctype, "PangoEllipsizeMode"}
{:argname, "rv"}
{:argtype, "Pango.EllipsizeMode"}
{:paramtype, :param}
{:txo, "none"} */

/* get_fraction unavailable due to return typing issues
{:argctype, "gdouble"}
{:argname, "rv"}
{:argtype, "gdouble"}
{:paramtype, :param}
{:txo, "none"} */

fun get_inverted(): Bool =>
  @gtk_progress_bar_get_inverted[Bool](widget)

/* get_pulse_step unavailable due to return typing issues
{:argctype, "gdouble"}
{:argname, "rv"}
{:argtype, "gdouble"}
{:paramtype, :param}
{:txo, "none"} */

fun get_show_text(): Bool =>
  @gtk_progress_bar_get_show_text[Bool](widget)

fun get_text(): String =>
  var cstring_pony: Pointer[U8 val] ref = @gtk_progress_bar_get_text[Pointer[U8 val] ref](widget)
var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

fun pulse(): None =>
  @gtk_progress_bar_pulse[None](widget)

/* set_ellipsize unavailable due to typing issues
 {:doh, %{argctype: "PangoEllipsizeMode", argname: "mode", argtype: "Pango.EllipsizeMode", paramtype: :param, txo: "none"}}
*/

/* set_fraction unavailable due to typing issues
 {:doh, %{argctype: "gdouble", argname: "fraction", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/

fun set_inverted(inverted_pony: Bool): None =>
  @gtk_progress_bar_set_inverted[None](widget, inverted_pony)

/* set_pulse_step unavailable due to typing issues
 {:doh, %{argctype: "gdouble", argname: "fraction", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/

fun set_show_text(show_text_pony: Bool): None =>
  @gtk_progress_bar_set_show_text[None](widget, show_text_pony)

/* set_text unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "text", argtype: "utf8", paramtype: :param, txo: "none"}}
*/


```````