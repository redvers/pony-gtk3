/*
   needs: ["U32", "Bool", "I32", "None", "GObjectREF", "GtkAdjustment", "F64"]
provides: ["GtkSpinButton"]
*/
class GtkSpinButton is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create(adjustment_pony: GtkAdjustment, climb_rate_pony: F64, digits_pony: U32) =>
    widget = @gtk_spin_button_new[GObjectREF](adjustment_pony.gtkwidget(), climb_rate_pony, digits_pony) //

  new new_with_range(min_pony: F64, max_pony: F64, step_pony: F64) =>
    widget = @gtk_spin_button_new_with_range[GObjectREF](min_pony, max_pony, step_pony) //


/* configure unavailable due to typing issues
 {:doh, %{argctype: "GtkAdjustment*", argname: "adjustment", argtype: "Adjustment", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "climb_rate", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/

/* get_adjustment unavailable due to return typing issues
{:argctype, "GtkAdjustment*"}
{:argname, "rv"}
{:argtype, "Adjustment"}
{:paramtype, :param}
{:txo, "none"} */

fun get_digits(): U32 =>
  @gtk_spin_button_get_digits[U32](widget)

/* get_increments unavailable due to typing issues
 {:doh, %{argctype: "gdouble*", argname: "step", argtype: "gdouble", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gdouble*", argname: "page", argtype: "gdouble", paramtype: :param, txo: "full"}}
*/

fun get_numeric(): Bool =>
  @gtk_spin_button_get_numeric[Bool](widget)

/* get_range unavailable due to typing issues
 {:doh, %{argctype: "gdouble*", argname: "min", argtype: "gdouble", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gdouble*", argname: "max", argtype: "gdouble", paramtype: :param, txo: "full"}}
*/

fun get_snap_to_ticks(): Bool =>
  @gtk_spin_button_get_snap_to_ticks[Bool](widget)

/* get_update_policy unavailable due to return typing issues
{:argctype, "GtkSpinButtonUpdatePolicy"}
{:argname, "rv"}
{:argtype, "SpinButtonUpdatePolicy"}
{:paramtype, :param}
{:txo, "none"} */

/* get_value unavailable due to return typing issues
{:argctype, "gdouble"}
{:argname, "rv"}
{:argtype, "gdouble"}
{:paramtype, :param}
{:txo, "none"} */

fun get_value_as_int(): I32 =>
  @gtk_spin_button_get_value_as_int[I32](widget)

fun get_wrap(): Bool =>
  @gtk_spin_button_get_wrap[Bool](widget)

/* set_adjustment unavailable due to typing issues
 {:doh, %{argctype: "GtkAdjustment*", argname: "adjustment", argtype: "Adjustment", paramtype: :param, txo: "none"}}
*/

fun set_digits(digits_pony: U32): None =>
  @gtk_spin_button_set_digits[None](widget, digits_pony)

/* set_increments unavailable due to typing issues
 {:doh, %{argctype: "gdouble", argname: "step", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "page", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/

fun set_numeric(numeric_pony: Bool): None =>
  @gtk_spin_button_set_numeric[None](widget, numeric_pony)

/* set_range unavailable due to typing issues
 {:doh, %{argctype: "gdouble", argname: "min", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "max", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/

fun set_snap_to_ticks(snap_to_ticks_pony: Bool): None =>
  @gtk_spin_button_set_snap_to_ticks[None](widget, snap_to_ticks_pony)

/* set_update_policy unavailable due to typing issues
 {:doh, %{argctype: "GtkSpinButtonUpdatePolicy", argname: "policy", argtype: "SpinButtonUpdatePolicy", paramtype: :param, txo: "none"}}
*/

/* set_value unavailable due to typing issues
 {:doh, %{argctype: "gdouble", argname: "value", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/

fun set_wrap(wrap_pony: Bool): None =>
  @gtk_spin_button_set_wrap[None](widget, wrap_pony)

/* spin unavailable due to typing issues
 {:doh, %{argctype: "GtkSpinType", argname: "direction", argtype: "SpinType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "increment", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/

fun update(): None =>
  @gtk_spin_button_update[None](widget)

