/*
   needs: ["GObjectREF", "GtkAdjustment"]
provides: ["GtkViewport"]
*/
class GtkViewport is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF


  new create(hadjustment_pony: GtkAdjustment, vadjustment_pony: GtkAdjustment) =>
    widget = @gtk_viewport_new[GObjectREF](hadjustment_pony.gtkwidget(), vadjustment_pony.gtkwidget()) //


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

/* get_shadow_type unavailable due to return typing issues
{:argctype, "GtkShadowType"}
{:argname, "rv"}
{:argtype, "ShadowType"}
{:paramtype, :param}
{:txo, "none"} */

/* get_vadjustment unavailable due to return typing issues
{:argctype, "GtkAdjustment*"}
{:argname, "rv"}
{:argtype, "Adjustment"}
{:paramtype, :param}
{:txo, "none"} */

/* get_view_window unavailable due to return typing issues
{:argctype, "GdkWindow*"}
{:argname, "rv"}
{:argtype, "Gdk.Window"}
{:paramtype, :param}
{:txo, "none"} */

/* set_hadjustment unavailable due to typing issues
 {:doh, %{argctype: "GtkAdjustment*", argname: "adjustment", argtype: "Adjustment", paramtype: :param, txo: "none"}}
*/

/* set_shadow_type unavailable due to typing issues
 {:doh, %{argctype: "GtkShadowType", argname: "gtype", argtype: "ShadowType", paramtype: :param, txo: "none"}}
*/

/* set_vadjustment unavailable due to typing issues
 {:doh, %{argctype: "GtkAdjustment*", argname: "adjustment", argtype: "Adjustment", paramtype: :param, txo: "none"}}
*/

