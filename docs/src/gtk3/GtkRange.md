```````pony-full-source
/*
   needs: ["Bool", "I32", "None", "GObjectREF"]
provides: ["GtkRange"]
*/
use "../gobject"
class GtkRange is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'




/* get_adjustment unavailable due to return typing issues
{:argctype, "GtkAdjustment*"}
{:argname, "rv"}
{:argtype, "Adjustment"}
{:paramtype, :param}
{:txo, "none"} */

/* get_fill_level unavailable due to return typing issues
{:argctype, "gdouble"}
{:argname, "rv"}
{:argtype, "gdouble"}
{:paramtype, :param}
{:txo, "none"} */

fun get_flippable(): Bool =>
  @gtk_range_get_flippable[Bool](widget)

fun get_inverted(): Bool =>
  @gtk_range_get_inverted[Bool](widget)

/* get_lower_stepper_sensitivity unavailable due to return typing issues
{:argctype, "GtkSensitivityType"}
{:argname, "rv"}
{:argtype, "SensitivityType"}
{:paramtype, :param}
{:txo, "none"} */

fun get_min_slider_size(): I32 =>
  @gtk_range_get_min_slider_size[I32](widget)

/* get_range_rect unavailable due to typing issues
 {:doh, %{argctype: "GdkRectangle*", argname: "range_rect", argtype: "Gdk.Rectangle", paramtype: :param, txo: "none"}}
*/

fun get_restrict_to_fill_level(): Bool =>
  @gtk_range_get_restrict_to_fill_level[Bool](widget)

fun get_round_digits(): I32 =>
  @gtk_range_get_round_digits[I32](widget)

fun get_show_fill_level(): Bool =>
  @gtk_range_get_show_fill_level[Bool](widget)

/* get_slider_range unavailable due to typing issues
 {:doh, %{argctype: "gint*", argname: "slider_start", argtype: "gint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gint*", argname: "slider_end", argtype: "gint", paramtype: :param, txo: "full"}}
*/

fun get_slider_size_fixed(): Bool =>
  @gtk_range_get_slider_size_fixed[Bool](widget)

/* get_upper_stepper_sensitivity unavailable due to return typing issues
{:argctype, "GtkSensitivityType"}
{:argname, "rv"}
{:argtype, "SensitivityType"}
{:paramtype, :param}
{:txo, "none"} */

/* get_value unavailable due to return typing issues
{:argctype, "gdouble"}
{:argname, "rv"}
{:argtype, "gdouble"}
{:paramtype, :param}
{:txo, "none"} */

/* set_adjustment unavailable due to typing issues
 {:doh, %{argctype: "GtkAdjustment*", argname: "adjustment", argtype: "Adjustment", paramtype: :param, txo: "none"}}
*/

/* set_fill_level unavailable due to typing issues
 {:doh, %{argctype: "gdouble", argname: "fill_level", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/

fun set_flippable(flippable_pony: Bool): None =>
  @gtk_range_set_flippable[None](widget, flippable_pony)

/* set_increments unavailable due to typing issues
 {:doh, %{argctype: "gdouble", argname: "step", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "page", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/

fun set_inverted(setting_pony: Bool): None =>
  @gtk_range_set_inverted[None](widget, setting_pony)

/* set_lower_stepper_sensitivity unavailable due to typing issues
 {:doh, %{argctype: "GtkSensitivityType", argname: "sensitivity", argtype: "SensitivityType", paramtype: :param, txo: "none"}}
*/

fun set_min_slider_size(min_size_pony: I32): None =>
  @gtk_range_set_min_slider_size[None](widget, min_size_pony)

/* set_range unavailable due to typing issues
 {:doh, %{argctype: "gdouble", argname: "min", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "max", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/

fun set_restrict_to_fill_level(restrict_to_fill_level_pony: Bool): None =>
  @gtk_range_set_restrict_to_fill_level[None](widget, restrict_to_fill_level_pony)

fun set_round_digits(round_digits_pony: I32): None =>
  @gtk_range_set_round_digits[None](widget, round_digits_pony)

fun set_show_fill_level(show_fill_level_pony: Bool): None =>
  @gtk_range_set_show_fill_level[None](widget, show_fill_level_pony)

fun set_slider_size_fixed(size_fixed_pony: Bool): None =>
  @gtk_range_set_slider_size_fixed[None](widget, size_fixed_pony)

/* set_upper_stepper_sensitivity unavailable due to typing issues
 {:doh, %{argctype: "GtkSensitivityType", argname: "sensitivity", argtype: "SensitivityType", paramtype: :param, txo: "none"}}
*/

/* set_value unavailable due to typing issues
 {:doh, %{argctype: "gdouble", argname: "value", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/


```````