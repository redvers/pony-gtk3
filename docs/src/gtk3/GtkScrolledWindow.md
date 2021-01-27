```````pony-full-source
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
"""
Return whether button presses are captured during kinetic
scrolling. See gtk_scrolled_window_set_capture_button_press().
"""
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
"""
Returns the specified kinetic scrolling behavior.
"""
  @gtk_scrolled_window_get_kinetic_scrolling[Bool](widget)

fun get_max_content_height(): I32 =>
"""
Returns the maximum content height set.
"""
  @gtk_scrolled_window_get_max_content_height[I32](widget)

fun get_max_content_width(): I32 =>
"""
Returns the maximum content width set.
"""
  @gtk_scrolled_window_get_max_content_width[I32](widget)

fun get_min_content_height(): I32 =>
"""
Gets the minimal content height of @scrolled_window, or -1 if not set.
"""
  @gtk_scrolled_window_get_min_content_height[I32](widget)

fun get_min_content_width(): I32 =>
"""
Gets the minimum content width of @scrolled_window, or -1 if not set.
"""
  @gtk_scrolled_window_get_min_content_width[I32](widget)

fun get_overlay_scrolling(): Bool =>
"""
Returns whether overlay scrolling is enabled for this scrolled window.
"""
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
"""
Reports whether the natural height of the child will be calculated and propagated
through the scrolled window’s requested natural height.
"""
  @gtk_scrolled_window_get_propagate_natural_height[Bool](widget)

fun get_propagate_natural_width(): Bool =>
"""
Reports whether the natural width of the child will be calculated and propagated
through the scrolled window’s requested natural width.
"""
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
"""
Changes the behaviour of @scrolled_window with regard to the initial
event that possibly starts kinetic scrolling. When @capture_button_press
is set to %TRUE, the event is captured by the scrolled window, and
then later replayed if it is meant to go to the child widget.

This should be enabled if any child widgets perform non-reversible
actions on #GtkWidget::button-press-event. If they don't, and handle
additionally handle #GtkWidget::grab-broken-event, it might be better
to set @capture_button_press to %FALSE.

This setting only has an effect if kinetic scrolling is enabled.
"""
  @gtk_scrolled_window_set_capture_button_press[None](widget, capture_button_press_pony)

/* set_hadjustment unavailable due to typing issues
 {:doh, %{argctype: "GtkAdjustment*", argname: "hadjustment", argtype: "Adjustment", paramtype: :param, txo: "none"}}
*/

fun set_kinetic_scrolling(kinetic_scrolling_pony: Bool): None =>
"""
Turns kinetic scrolling on or off.
Kinetic scrolling only applies to devices with source
%GDK_SOURCE_TOUCHSCREEN.
"""
  @gtk_scrolled_window_set_kinetic_scrolling[None](widget, kinetic_scrolling_pony)

fun set_max_content_height(height_pony: I32): None =>
"""
Sets the maximum height that @scrolled_window should keep visible. The
@scrolled_window will grow up to this height before it starts scrolling
the content.

It is a programming error to set the maximum content height to a value
smaller than #GtkScrolledWindow:min-content-height.
"""
  @gtk_scrolled_window_set_max_content_height[None](widget, height_pony)

fun set_max_content_width(width_pony: I32): None =>
"""
Sets the maximum width that @scrolled_window should keep visible. The
@scrolled_window will grow up to this width before it starts scrolling
the content.

It is a programming error to set the maximum content width to a value
smaller than #GtkScrolledWindow:min-content-width.
"""
  @gtk_scrolled_window_set_max_content_width[None](widget, width_pony)

fun set_min_content_height(height_pony: I32): None =>
"""
Sets the minimum height that @scrolled_window should keep visible.
Note that this can and (usually will) be smaller than the minimum
size of the content.

It is a programming error to set the minimum content height to a
value greater than #GtkScrolledWindow:max-content-height.
"""
  @gtk_scrolled_window_set_min_content_height[None](widget, height_pony)

fun set_min_content_width(width_pony: I32): None =>
"""
Sets the minimum width that @scrolled_window should keep visible.
Note that this can and (usually will) be smaller than the minimum
size of the content.

It is a programming error to set the minimum content width to a
value greater than #GtkScrolledWindow:max-content-width.
"""
  @gtk_scrolled_window_set_min_content_width[None](widget, width_pony)

fun set_overlay_scrolling(overlay_scrolling_pony: Bool): None =>
"""
Enables or disables overlay scrolling for this scrolled window.
"""
  @gtk_scrolled_window_set_overlay_scrolling[None](widget, overlay_scrolling_pony)

/* set_placement unavailable due to typing issues
 {:doh, %{argctype: "GtkCornerType", argname: "window_placement", argtype: "CornerType", paramtype: :param, txo: "none"}}
*/

/* set_policy unavailable due to typing issues
 {:doh, %{argctype: "GtkPolicyType", argname: "hscrollbar_policy", argtype: "PolicyType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkPolicyType", argname: "vscrollbar_policy", argtype: "PolicyType", paramtype: :param, txo: "none"}}
*/

fun set_propagate_natural_height(propagate_pony: Bool): None =>
"""
Sets whether the natural height of the child should be calculated and propagated
through the scrolled window’s requested natural height.
"""
  @gtk_scrolled_window_set_propagate_natural_height[None](widget, propagate_pony)

fun set_propagate_natural_width(propagate_pony: Bool): None =>
"""
Sets whether the natural width of the child should be calculated and propagated
through the scrolled window’s requested natural width.
"""
  @gtk_scrolled_window_set_propagate_natural_width[None](widget, propagate_pony)

/* set_shadow_type unavailable due to typing issues
 {:doh, %{argctype: "GtkShadowType", argname: "gtype", argtype: "ShadowType", paramtype: :param, txo: "none"}}
*/

/* set_vadjustment unavailable due to typing issues
 {:doh, %{argctype: "GtkAdjustment*", argname: "vadjustment", argtype: "Adjustment", paramtype: :param, txo: "none"}}
*/

fun unset_placement(): None =>
"""
Unsets the placement of the contents with respect to the scrollbars
for the scrolled window. If no window placement is set for a scrolled
window, it defaults to %GTK_CORNER_TOP_LEFT.

See also gtk_scrolled_window_set_placement() and
gtk_scrolled_window_get_placement().
"""
  @gtk_scrolled_window_unset_placement[None](widget)


```````