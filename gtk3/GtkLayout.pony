/*
   needs: ["None", "U32", "GObjectREF", "GtkAdjustment"]
provides: ["GtkLayout"]
*/
class GtkLayout is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF


  new create(hadjustment_pony: GtkAdjustment, vadjustment_pony: GtkAdjustment) =>
    widget = @gtk_layout_new[GObjectREF](hadjustment_pony.gtkwidget(), vadjustment_pony.gtkwidget()) //


/* get_bin_window unavailable due to return typing issues
{:argctype, "GdkWindow*"}
{:argname, "rv"}
{:argtype, "Gdk.Window"}
{:paramtype, :param}
{:txo, "none"} */

/* get_hadjustment unavailable due to return typing issues
{:argctype, "GtkAdjustment*"}
{:argname, "rv"}
{:argtype, "Adjustment"}
{:paramtype, :param}
{:txo, "none"} */

/* get_size unavailable due to typing issues
 {:doh, %{argctype: "guint*", argname: "width", argtype: "guint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "guint*", argname: "height", argtype: "guint", paramtype: :param, txo: "full"}}
*/

/* get_vadjustment unavailable due to return typing issues
{:argctype, "GtkAdjustment*"}
{:argname, "rv"}
{:argtype, "Adjustment"}
{:paramtype, :param}
{:txo, "none"} */

/* move unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "child_widget", argtype: "Widget", paramtype: :param, txo: "none"}}
*/

/* put unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "child_widget", argtype: "Widget", paramtype: :param, txo: "none"}}
*/

/* set_hadjustment unavailable due to typing issues
 {:doh, %{argctype: "GtkAdjustment*", argname: "adjustment", argtype: "Adjustment", paramtype: :param, txo: "none"}}
*/

fun set_size(width_pony: U32, height_pony: U32): None =>
  @gtk_layout_set_size[None](widget, width_pony, height_pony)

/* set_vadjustment unavailable due to typing issues
 {:doh, %{argctype: "GtkAdjustment*", argname: "adjustment", argtype: "Adjustment", paramtype: :param, txo: "none"}}
*/

