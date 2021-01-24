/*
   needs: ["Bool", "None", "I32", "GObjectREF"]
provides: ["GtkHSV"]
*/
class GtkHSV is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF


  new create() =>
    widget = @gtk_hsv_new[GObjectREF]() //


/* get_color unavailable due to typing issues
 {:doh, %{argctype: "gdouble*", argname: "h", argtype: "gdouble", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gdouble*", argname: "s", argtype: "gdouble", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gdouble*", argname: "v", argtype: "gdouble", paramtype: :param, txo: "full"}}
*/

/* get_metrics unavailable due to typing issues
 {:doh, %{argctype: "gint*", argname: "size", argtype: "gint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gint*", argname: "ring_width", argtype: "gint", paramtype: :param, txo: "full"}}
*/

fun is_adjusting(): Bool =>
  @gtk_hsv_is_adjusting[Bool](widget)

/* set_color unavailable due to typing issues
 {:doh, %{argctype: "double", argname: "h", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "double", argname: "s", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "double", argname: "v", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/

fun set_metrics(size_pony: I32, ring_width_pony: I32): None =>
  @gtk_hsv_set_metrics[None](widget, size_pony, ring_width_pony)

