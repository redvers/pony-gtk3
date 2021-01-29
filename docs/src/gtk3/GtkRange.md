```````pony-full-source
/*
   needs: ["Bool", "I32", "None", "GObjectREF"]
provides: ["GtkRange val"]
*/
use "../gobject"
class val GtkRange is GtkWidget
"""
#GtkRange is the common base class for widgets which visualize an
adjustment, e.g #GtkScale or #GtkScrollbar.

Apart from signals for monitoring the parameters of the adjustment,
#GtkRange provides properties and methods for influencing the sensitivity
of the “steppers”. It also provides properties and methods for setting a
“fill level” on range widgets. See gtk_range_set_fill_level().
"""
  var widget: GObjectREF val

  fun gtkwidget(): GObjectREF val => widget

  new val create_from_GtkBuilder(gtkbuilder: GtkBuilder, glade_id: String) =>
    widget = @gtk_builder_get_object[GObjectREF](gtkbuilder.gtkwidget(), glade_id.cstring())

  new val create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'

  new val never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF




  fun pony_NOT_IMPLEMENTED_YET_get_adjustment(): None =>
    """
    Get the #GtkAdjustment which is the “model” object for #GtkRange.
See gtk_range_set_adjustment() for details.
The return value does not have a reference added, so should not
be unreferenced.

    {:argctype, "GtkAdjustment*"}
{:argname, "rv"}
{:argtype, "Adjustment"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_fill_level(): None =>
    """
    Gets the current position of the fill level indicator.

    {:argctype, "gdouble"}
{:argname, "rv"}
{:argtype, "gdouble"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

fun get_flippable(): Bool =>
"""
Gets the value set by gtk_range_set_flippable().
"""
  @gtk_range_get_flippable[Bool](widget)

fun get_inverted(): Bool =>
"""
Gets the value set by gtk_range_set_inverted().
"""
  @gtk_range_get_inverted[Bool](widget)

  fun pony_NOT_IMPLEMENTED_YET_get_lower_stepper_sensitivity(): None =>
    """
    Gets the sensitivity policy for the stepper that points to the
'lower' end of the GtkRange’s adjustment.

    {:argctype, "GtkSensitivityType"}
{:argname, "rv"}
{:argtype, "SensitivityType"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

fun get_min_slider_size(): I32 =>
"""
This function is useful mainly for #GtkRange subclasses.

See gtk_range_set_min_slider_size().
"""
  @gtk_range_get_min_slider_size[I32](widget)

  fun pony_NOT_IMPLEMENTED_YET_get_range_rect(): None =>
    """
    This function returns the area that contains the range’s trough
and its steppers, in widget->window coordinates.

This function is useful mainly for #GtkRange subclasses.

    {:doh, %{argctype: "GdkRectangle*", argname: "range_rect", argtype: "Gdk.Rectangle", paramtype: :param, txo: "none"}}
*/
    """

fun get_restrict_to_fill_level(): Bool =>
"""
Gets whether the range is restricted to the fill level.
"""
  @gtk_range_get_restrict_to_fill_level[Bool](widget)

fun get_round_digits(): I32 =>
"""
Gets the number of digits to round the value to when
it changes. See #GtkRange::change-value.
"""
  @gtk_range_get_round_digits[I32](widget)

fun get_show_fill_level(): Bool =>
"""
Gets whether the range displays the fill level graphically.
"""
  @gtk_range_get_show_fill_level[Bool](widget)

  fun pony_NOT_IMPLEMENTED_YET_get_slider_range(): None =>
    """
    This function returns sliders range along the long dimension,
in widget->window coordinates.

This function is useful mainly for #GtkRange subclasses.

    {:doh, %{argctype: "gint*", argname: "slider_start", argtype: "gint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gint*", argname: "slider_end", argtype: "gint", paramtype: :param, txo: "full"}}
*/
    """

fun get_slider_size_fixed(): Bool =>
"""
This function is useful mainly for #GtkRange subclasses.

See gtk_range_set_slider_size_fixed().
"""
  @gtk_range_get_slider_size_fixed[Bool](widget)

  fun pony_NOT_IMPLEMENTED_YET_get_upper_stepper_sensitivity(): None =>
    """
    Gets the sensitivity policy for the stepper that points to the
'upper' end of the GtkRange’s adjustment.

    {:argctype, "GtkSensitivityType"}
{:argname, "rv"}
{:argtype, "SensitivityType"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_value(): None =>
    """
    Gets the current value of the range.

    {:argctype, "gdouble"}
{:argname, "rv"}
{:argtype, "gdouble"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_set_adjustment(): None =>
    """
    Sets the adjustment to be used as the “model” object for this range
widget. The adjustment indicates the current range value, the
minimum and maximum range values, the step/page increments used
for keybindings and scrolling, and the page size. The page size
is normally 0 for #GtkScale and nonzero for #GtkScrollbar, and
indicates the size of the visible area of the widget being scrolled.
The page size affects the size of the scrollbar slider.

    {:doh, %{argctype: "GtkAdjustment*", argname: "adjustment", argtype: "Adjustment", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_set_fill_level(): None =>
    """
    Set the new position of the fill level indicator.

The “fill level” is probably best described by its most prominent
use case, which is an indicator for the amount of pre-buffering in
a streaming media player. In that use case, the value of the range
would indicate the current play position, and the fill level would
be the position up to which the file/stream has been downloaded.

This amount of prebuffering can be displayed on the range’s trough
and is themeable separately from the trough. To enable fill level
display, use gtk_range_set_show_fill_level(). The range defaults
to not showing the fill level.

Additionally, it’s possible to restrict the range’s slider position
to values which are smaller than the fill level. This is controller
by gtk_range_set_restrict_to_fill_level() and is by default
enabled.

    {:doh, %{argctype: "gdouble", argname: "fill_level", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/
    """

fun set_flippable(flippable_pony: Bool): None =>
"""
If a range is flippable, it will switch its direction if it is
horizontal and its direction is %GTK_TEXT_DIR_RTL.

See gtk_widget_get_direction().
"""
  @gtk_range_set_flippable[None](widget, flippable_pony)

  fun pony_NOT_IMPLEMENTED_YET_set_increments(): None =>
    """
    Sets the step and page sizes for the range.
The step size is used when the user clicks the #GtkScrollbar
arrows or moves #GtkScale via arrow keys. The page size
is used for example when moving via Page Up or Page Down keys.

    {:doh, %{argctype: "gdouble", argname: "step", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "page", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/
    """

fun set_inverted(setting_pony: Bool): None =>
"""
Ranges normally move from lower to higher values as the
slider moves from top to bottom or left to right. Inverted
ranges have higher values at the top or on the right rather than
on the bottom or left.
"""
  @gtk_range_set_inverted[None](widget, setting_pony)

  fun pony_NOT_IMPLEMENTED_YET_set_lower_stepper_sensitivity(): None =>
    """
    Sets the sensitivity policy for the stepper that points to the
'lower' end of the GtkRange’s adjustment.

    {:doh, %{argctype: "GtkSensitivityType", argname: "sensitivity", argtype: "SensitivityType", paramtype: :param, txo: "none"}}
*/
    """

fun set_min_slider_size(min_size_pony: I32): None =>
"""
Sets the minimum size of the range’s slider.

This function is useful mainly for #GtkRange subclasses.
"""
  @gtk_range_set_min_slider_size[None](widget, min_size_pony)

  fun pony_NOT_IMPLEMENTED_YET_set_range(): None =>
    """
    Sets the allowable values in the #GtkRange, and clamps the range
value to be between @min and @max. (If the range has a non-zero
page size, it is clamped between @min and @max - page-size.)

    {:doh, %{argctype: "gdouble", argname: "min", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "max", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/
    """

fun set_restrict_to_fill_level(restrict_to_fill_level_pony: Bool): None =>
"""
Sets whether the slider is restricted to the fill level. See
gtk_range_set_fill_level() for a general description of the fill
level concept.
"""
  @gtk_range_set_restrict_to_fill_level[None](widget, restrict_to_fill_level_pony)

fun set_round_digits(round_digits_pony: I32): None =>
"""
Sets the number of digits to round the value to when
it changes. See #GtkRange::change-value.
"""
  @gtk_range_set_round_digits[None](widget, round_digits_pony)

fun set_show_fill_level(show_fill_level_pony: Bool): None =>
"""
Sets whether a graphical fill level is show on the trough. See
gtk_range_set_fill_level() for a general description of the fill
level concept.
"""
  @gtk_range_set_show_fill_level[None](widget, show_fill_level_pony)

fun set_slider_size_fixed(size_fixed_pony: Bool): None =>
"""
Sets whether the range’s slider has a fixed size, or a size that
depends on its adjustment’s page size.

This function is useful mainly for #GtkRange subclasses.
"""
  @gtk_range_set_slider_size_fixed[None](widget, size_fixed_pony)

  fun pony_NOT_IMPLEMENTED_YET_set_upper_stepper_sensitivity(): None =>
    """
    Sets the sensitivity policy for the stepper that points to the
'upper' end of the GtkRange’s adjustment.

    {:doh, %{argctype: "GtkSensitivityType", argname: "sensitivity", argtype: "SensitivityType", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_set_value(): None =>
    """
    Sets the current value of the range; if the value is outside the
minimum or maximum range values, it will be clamped to fit inside
them. The range emits the #GtkRange::value-changed signal if the
value changes.

    {:doh, %{argctype: "gdouble", argname: "value", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/
    """


```````