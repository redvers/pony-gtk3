/*
   needs: ["U32", "Bool", "I32", "None", "GObjectREF", "GtkAdjustment val", "F64"]
provides: ["GtkSpinButton val"]
*/
use "../gobject"
class val GtkSpinButton is GtkWidget
"""
A #GtkSpinButton is an ideal way to allow the user to set the value of
some attribute. Rather than having to directly type a number into a
#GtkEntry, GtkSpinButton allows the user to click on one of two arrows
to increment or decrement the displayed value. A value can still be
typed in, with the bonus that it can be checked to ensure it is in a
given range.

The main properties of a GtkSpinButton are through an adjustment.
See the #GtkAdjustment section for more details about an adjustment's
properties. Note that GtkSpinButton will by default make its entry
large enough to accomodate the lower and upper bounds of the adjustment,
which can lead to surprising results. Best practice is to set both
the #GtkEntry:width-chars and #GtkEntry:max-width-chars poperties
to the desired number of characters to display in the entry.

# CSS nodes

|[<!-- language="plain" -->
spinbutton.horizontal
├── undershoot.left
├── undershoot.right
├── entry
│   ╰── ...
├── button.down
╰── button.up
]|

|[<!-- language="plain" -->
spinbutton.vertical
├── undershoot.left
├── undershoot.right
├── button.up
├── entry
│   ╰── ...
╰── button.down
]|

GtkSpinButtons main CSS node has the name spinbutton. It creates subnodes
for the entry and the two buttons, with these names. The button nodes have
the style classes .up and .down. The GtkEntry subnodes (if present) are put
below the entry node. The orientation of the spin button is reflected in
the .vertical or .horizontal style class on the main node.

## Using a GtkSpinButton to get an integer

|[<!-- language="C" -->
// Provides a function to retrieve an integer value from a GtkSpinButton
// and creates a spin button to model percentage values.

gint
grab_int_value (GtkSpinButton *button,
                gpointer       user_data)
{
  return gtk_spin_button_get_value_as_int (button);
}

void
create_integer_spin_button (void)
{

  GtkWidget *window, *button;
  GtkAdjustment *adjustment;

  adjustment = gtk_adjustment_new (50.0, 0.0, 100.0, 1.0, 5.0, 0.0);

  window = gtk_window_new (GTK_WINDOW_TOPLEVEL);
  gtk_container_set_border_width (GTK_CONTAINER (window), 5);

  // creates the spinbutton, with no decimal places
  button = gtk_spin_button_new (adjustment, 1.0, 0);
  gtk_container_add (GTK_CONTAINER (window), button);

  gtk_widget_show_all (window);
}
]|

## Using a GtkSpinButton to get a floating point value

|[<!-- language="C" -->
// Provides a function to retrieve a floating point value from a
// GtkSpinButton, and creates a high precision spin button.

gfloat
grab_float_value (GtkSpinButton *button,
                  gpointer       user_data)
{
  return gtk_spin_button_get_value (button);
}

void
create_floating_spin_button (void)
{
  GtkWidget *window, *button;
  GtkAdjustment *adjustment;

  adjustment = gtk_adjustment_new (2.500, 0.0, 5.0, 0.001, 0.1, 0.0);

  window = gtk_window_new (GTK_WINDOW_TOPLEVEL);
  gtk_container_set_border_width (GTK_CONTAINER (window), 5);

  // creates the spinbutton, with three decimal places
  button = gtk_spin_button_new (adjustment, 0.001, 3);
  gtk_container_add (GTK_CONTAINER (window), button);

  gtk_widget_show_all (window);
}
]|
"""
  var widget: GObjectREF val

  fun gtkwidget(): GObjectREF val => widget

  new val create_from_GtkBuilder(gtkbuilder: GtkBuilder, glade_id: String) =>
    widget = @gtk_builder_get_object[GObjectREF](gtkbuilder.gtkwidget(), glade_id.cstring())

  new val create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'

  new val never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF


  new val create(adjustment_pony: GtkAdjustment val, climb_rate_pony: F64, digits_pony: U32) =>
    widget = @gtk_spin_button_new[GObjectREF](adjustment_pony.gtkwidget(), climb_rate_pony, digits_pony) //

  new val new_with_range(min_pony: F64, max_pony: F64, step_pony: F64) =>
    widget = @gtk_spin_button_new_with_range[GObjectREF](min_pony, max_pony, step_pony) //


  fun pony_NOT_IMPLEMENTED_YET_configure(): None =>
    """
    Changes the properties of an existing spin button. The adjustment,
climb rate, and number of decimal places are updated accordingly.

    {:doh, %{argctype: "GtkAdjustment*", argname: "adjustment", argtype: "Adjustment", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "climb_rate", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_adjustment(): None =>
    """
    Get the adjustment associated with a #GtkSpinButton

    {:argctype, "GtkAdjustment*"}
{:argname, "rv"}
{:argtype, "Adjustment"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

fun get_digits(): U32 =>
"""
Fetches the precision of @spin_button. See gtk_spin_button_set_digits().
"""
  @gtk_spin_button_get_digits[U32](widget)

  fun pony_NOT_IMPLEMENTED_YET_get_increments(): None =>
    """
    Gets the current step and page the increments used by @spin_button. See
gtk_spin_button_set_increments().

    {:doh, %{argctype: "gdouble*", argname: "step", argtype: "gdouble", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gdouble*", argname: "page", argtype: "gdouble", paramtype: :param, txo: "full"}}
*/
    """

fun get_numeric(): Bool =>
"""
Returns whether non-numeric text can be typed into the spin button.
See gtk_spin_button_set_numeric().
"""
  @gtk_spin_button_get_numeric[Bool](widget)

  fun pony_NOT_IMPLEMENTED_YET_get_range(): None =>
    """
    Gets the range allowed for @spin_button.
See gtk_spin_button_set_range().

    {:doh, %{argctype: "gdouble*", argname: "min", argtype: "gdouble", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gdouble*", argname: "max", argtype: "gdouble", paramtype: :param, txo: "full"}}
*/
    """

fun get_snap_to_ticks(): Bool =>
"""
Returns whether the values are corrected to the nearest step.
See gtk_spin_button_set_snap_to_ticks().
"""
  @gtk_spin_button_get_snap_to_ticks[Bool](widget)

  fun pony_NOT_IMPLEMENTED_YET_get_update_policy(): None =>
    """
    Gets the update behavior of a spin button.
See gtk_spin_button_set_update_policy().

    {:argctype, "GtkSpinButtonUpdatePolicy"}
{:argname, "rv"}
{:argtype, "SpinButtonUpdatePolicy"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_value(): None =>
    """
    Get the value in the @spin_button.

    {:argctype, "gdouble"}
{:argname, "rv"}
{:argtype, "gdouble"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

fun get_value_as_int(): I32 =>
"""
Get the value @spin_button represented as an integer.
"""
  @gtk_spin_button_get_value_as_int[I32](widget)

fun get_wrap(): Bool =>
"""
Returns whether the spin button’s value wraps around to the
opposite limit when the upper or lower limit of the range is
exceeded. See gtk_spin_button_set_wrap().
"""
  @gtk_spin_button_get_wrap[Bool](widget)

  fun pony_NOT_IMPLEMENTED_YET_set_adjustment(): None =>
    """
    Replaces the #GtkAdjustment associated with @spin_button.

    {:doh, %{argctype: "GtkAdjustment*", argname: "adjustment", argtype: "Adjustment", paramtype: :param, txo: "none"}}
*/
    """

fun set_digits(digits_pony: U32): None =>
"""
Set the precision to be displayed by @spin_button. Up to 20 digit precision
is allowed.
"""
  @gtk_spin_button_set_digits[None](widget, digits_pony)

  fun pony_NOT_IMPLEMENTED_YET_set_increments(): None =>
    """
    Sets the step and page increments for spin_button.  This affects how
quickly the value changes when the spin button’s arrows are activated.

    {:doh, %{argctype: "gdouble", argname: "step", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "page", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/
    """

fun set_numeric(numeric_pony: Bool): None =>
"""
Sets the flag that determines if non-numeric text can be typed
into the spin button.
"""
  @gtk_spin_button_set_numeric[None](widget, numeric_pony)

  fun pony_NOT_IMPLEMENTED_YET_set_range(): None =>
    """
    Sets the minimum and maximum allowable values for @spin_button.

If the current value is outside this range, it will be adjusted
to fit within the range, otherwise it will remain unchanged.

    {:doh, %{argctype: "gdouble", argname: "min", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "max", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/
    """

fun set_snap_to_ticks(snap_to_ticks_pony: Bool): None =>
"""
Sets the policy as to whether values are corrected to the
nearest step increment when a spin button is activated after
providing an invalid value.
"""
  @gtk_spin_button_set_snap_to_ticks[None](widget, snap_to_ticks_pony)

  fun pony_NOT_IMPLEMENTED_YET_set_update_policy(): None =>
    """
    Sets the update behavior of a spin button.
This determines whether the spin button is always updated
or only when a valid value is set.

    {:doh, %{argctype: "GtkSpinButtonUpdatePolicy", argname: "policy", argtype: "SpinButtonUpdatePolicy", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_set_value(): None =>
    """
    Sets the value of @spin_button.

    {:doh, %{argctype: "gdouble", argname: "value", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/
    """

fun set_wrap(wrap_pony: Bool): None =>
"""
Sets the flag that determines if a spin button value wraps
around to the opposite limit when the upper or lower limit
of the range is exceeded.
"""
  @gtk_spin_button_set_wrap[None](widget, wrap_pony)

  fun pony_NOT_IMPLEMENTED_YET_spin(): None =>
    """
    Increment or decrement a spin button’s value in a specified
direction by a specified amount.

    {:doh, %{argctype: "GtkSpinType", argname: "direction", argtype: "SpinType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "increment", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/
    """

fun update(): None =>
"""
Manually force an update of the spin button.
"""
  @gtk_spin_button_update[None](widget)

