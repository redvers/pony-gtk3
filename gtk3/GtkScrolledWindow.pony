/*
   needs: ["Bool", "I32", "None", "GObjectREF", "GtkAdjustment"]
provides: ["GtkScrolledWindow"]
*/
use "../gobject"
class GtkScrolledWindow is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create(hadjustment_pony: GtkAdjustment, vadjustment_pony: GtkAdjustment) =>
    widget = @gtk_scrolled_window_new[GObjectREF](hadjustment_pony.gtkwidget(), vadjustment_pony.gtkwidget()) //


/* add_with_viewport unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "child", argtype: "Widget", paramtype: :param, txo: "none"}}
*/

fun get_capture_button_press(): Bool =>
  @gtk_scrolled_window_get_capture_button_press[Bool](widget)

/* get_hadjustment unavailable due to return typing issues
{:argctype, "GtkAdjustment*"}
{:argname, "rv"}
{:argtype, "Adjustment"}
{:paramtype, :param}
{:txo, "none"} */

/* get_hscrollbar unavailable due to return typing issues
{:argctype, "GtkWidget*"}
{:argname, "rv"}
{:argtype, "Widget"}
{:paramtype, :param}
{:txo, "none"} */

fun get_kinetic_scrolling(): Bool =>
  @gtk_scrolled_window_get_kinetic_scrolling[Bool](widget)

fun get_max_content_height(): I32 =>
  @gtk_scrolled_window_get_max_content_height[I32](widget)

fun get_max_content_width(): I32 =>
  @gtk_scrolled_window_get_max_content_width[I32](widget)

fun get_min_content_height(): I32 =>
  @gtk_scrolled_window_get_min_content_height[I32](widget)

fun get_min_content_width(): I32 =>
  @gtk_scrolled_window_get_min_content_width[I32](widget)

fun get_overlay_scrolling(): Bool =>
  @gtk_scrolled_window_get_overlay_scrolling[Bool](widget)

/* get_placement unavailable due to return typing issues
{:argctype, "GtkCornerType"}
{:argname, "rv"}
{:argtype, "CornerType"}
{:paramtype, :param}
{:txo, "none"} */

/* get_policy unavailable due to typing issues
 {:doh, %{argctype: "GtkPolicyType*", argname: "hscrollbar_policy", argtype: "PolicyType", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "GtkPolicyType*", argname: "vscrollbar_policy", argtype: "PolicyType", paramtype: :param, txo: "full"}}
*/

fun get_propagate_natural_height(): Bool =>
  @gtk_scrolled_window_get_propagate_natural_height[Bool](widget)

fun get_propagate_natural_width(): Bool =>
  @gtk_scrolled_window_get_propagate_natural_width[Bool](widget)

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

/* get_vscrollbar unavailable due to return typing issues
{:argctype, "GtkWidget*"}
{:argname, "rv"}
{:argtype, "Widget"}
{:paramtype, :param}
{:txo, "none"} */

fun set_capture_button_press(capture_button_press_pony: Bool): None =>
  @gtk_scrolled_window_set_capture_button_press[None](widget, capture_button_press_pony)

/* set_hadjustment unavailable due to typing issues
 {:doh, %{argctype: "GtkAdjustment*", argname: "hadjustment", argtype: "Adjustment", paramtype: :param, txo: "none"}}
*/

fun set_kinetic_scrolling(kinetic_scrolling_pony: Bool): None =>
  @gtk_scrolled_window_set_kinetic_scrolling[None](widget, kinetic_scrolling_pony)

fun set_max_content_height(height_pony: I32): None =>
  @gtk_scrolled_window_set_max_content_height[None](widget, height_pony)

fun set_max_content_width(width_pony: I32): None =>
  @gtk_scrolled_window_set_max_content_width[None](widget, width_pony)

fun set_min_content_height(height_pony: I32): None =>
  @gtk_scrolled_window_set_min_content_height[None](widget, height_pony)

fun set_min_content_width(width_pony: I32): None =>
  @gtk_scrolled_window_set_min_content_width[None](widget, width_pony)

fun set_overlay_scrolling(overlay_scrolling_pony: Bool): None =>
  @gtk_scrolled_window_set_overlay_scrolling[None](widget, overlay_scrolling_pony)

/* set_placement unavailable due to typing issues
 {:doh, %{argctype: "GtkCornerType", argname: "window_placement", argtype: "CornerType", paramtype: :param, txo: "none"}}
*/

/* set_policy unavailable due to typing issues
 {:doh, %{argctype: "GtkPolicyType", argname: "hscrollbar_policy", argtype: "PolicyType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkPolicyType", argname: "vscrollbar_policy", argtype: "PolicyType", paramtype: :param, txo: "none"}}
*/

fun set_propagate_natural_height(propagate_pony: Bool): None =>
  @gtk_scrolled_window_set_propagate_natural_height[None](widget, propagate_pony)

fun set_propagate_natural_width(propagate_pony: Bool): None =>
  @gtk_scrolled_window_set_propagate_natural_width[None](widget, propagate_pony)

/* set_shadow_type unavailable due to typing issues
 {:doh, %{argctype: "GtkShadowType", argname: "gtype", argtype: "ShadowType", paramtype: :param, txo: "none"}}
*/

/* set_vadjustment unavailable due to typing issues
 {:doh, %{argctype: "GtkAdjustment*", argname: "vadjustment", argtype: "Adjustment", paramtype: :param, txo: "none"}}
*/

fun unset_placement(): None =>
  @gtk_scrolled_window_unset_placement[None](widget)

