```````pony-full-source
/*
   needs: ["None", "GObjectREF", "F64"]
provides: ["GtkAdjustment val"]
*/
use "../gobject"
class val GtkAdjustment is GtkWidget
"""
The #GtkAdjustment object represents a value which has an associated lower
and upper bound, together with step and page increments, and a page size.
It is used within several GTK+ widgets, including #GtkSpinButton, #GtkViewport,
and #GtkRange (which is a base class for #GtkScrollbar and #GtkScale).

The #GtkAdjustment object does not update the value itself. Instead
it is left up to the owner of the #GtkAdjustment to control the value.
"""
  var widget: GObjectREF val

  fun gtkwidget(): GObjectREF val => widget

  new val create_from_GtkBuilder(gtkbuilder: GtkBuilder, glade_id: String) =>
    widget = @gtk_builder_get_object[GObjectREF](gtkbuilder.gtkwidget(), glade_id.cstring())

  new val create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'

  new val never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF


  new val create(value_pony: F64, lower_pony: F64, upper_pony: F64, step_increment_pony: F64, page_increment_pony: F64, page_size_pony: F64) =>
    widget = @gtk_adjustment_new[GObjectREF](value_pony, lower_pony, upper_pony, step_increment_pony, page_increment_pony, page_size_pony) //


fun changed(): None =>
"""
Emits a #GtkAdjustment::changed signal from the #GtkAdjustment.
This is typically called by the owner of the #GtkAdjustment after it has
changed any of the #GtkAdjustment properties other than the value.
"""
  @gtk_adjustment_changed[None](widget)

  fun pony_NOT_IMPLEMENTED_YET_clamp_page(): None =>
    """
    Updates the #GtkAdjustment:value property to ensure that the range
between @lower and @upper is in the current page (i.e. between
#GtkAdjustment:value and #GtkAdjustment:value + #GtkAdjustment:page-size).
If the range is larger than the page size, then only the start of it will
be in the current page.

A #GtkAdjustment::value-changed signal will be emitted if the value is changed.

    {:doh, %{argctype: "gdouble", argname: "lower", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "upper", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_configure(): None =>
    """
    Sets all properties of the adjustment at once.

Use this function to avoid multiple emissions of the
#GtkAdjustment::changed signal. See gtk_adjustment_set_lower()
for an alternative way of compressing multiple emissions of
#GtkAdjustment::changed into one.

    {:doh, %{argctype: "gdouble", argname: "value", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "lower", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "upper", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "step_increment", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "page_increment", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "page_size", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_lower(): None =>
    """
    Retrieves the minimum value of the adjustment.

    {:argctype, "gdouble"}
{:argname, "rv"}
{:argtype, "gdouble"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_minimum_increment(): None =>
    """
    Gets the smaller of step increment and page increment.

    {:argctype, "gdouble"}
{:argname, "rv"}
{:argtype, "gdouble"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_page_increment(): None =>
    """
    Retrieves the page increment of the adjustment.

    {:argctype, "gdouble"}
{:argname, "rv"}
{:argtype, "gdouble"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_page_size(): None =>
    """
    Retrieves the page size of the adjustment.

    {:argctype, "gdouble"}
{:argname, "rv"}
{:argtype, "gdouble"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_step_increment(): None =>
    """
    Retrieves the step increment of the adjustment.

    {:argctype, "gdouble"}
{:argname, "rv"}
{:argtype, "gdouble"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_upper(): None =>
    """
    Retrieves the maximum value of the adjustment.

    {:argctype, "gdouble"}
{:argname, "rv"}
{:argtype, "gdouble"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_value(): None =>
    """
    Gets the current value of the adjustment.
See gtk_adjustment_set_value().

    {:argctype, "gdouble"}
{:argname, "rv"}
{:argtype, "gdouble"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_set_lower(): None =>
    """
    Sets the minimum value of the adjustment.

When setting multiple adjustment properties via their individual
setters, multiple #GtkAdjustment::changed signals will be emitted.
However, since the emission of the #GtkAdjustment::changed signal
is tied to the emission of the #GObject::notify signals of the changed
properties, it’s possible to compress the #GtkAdjustment::changed
signals into one by calling g_object_freeze_notify() and
g_object_thaw_notify() around the calls to the individual setters.

Alternatively, using a single g_object_set() for all the properties
to change, or using gtk_adjustment_configure() has the same effect
of compressing #GtkAdjustment::changed emissions.

    {:doh, %{argctype: "gdouble", argname: "lower", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_set_page_increment(): None =>
    """
    Sets the page increment of the adjustment.

See gtk_adjustment_set_lower() about how to compress multiple
emissions of the #GtkAdjustment::changed signal when setting
multiple adjustment properties.

    {:doh, %{argctype: "gdouble", argname: "page_increment", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_set_page_size(): None =>
    """
    Sets the page size of the adjustment.

See gtk_adjustment_set_lower() about how to compress multiple
emissions of the GtkAdjustment::changed signal when setting
multiple adjustment properties.

    {:doh, %{argctype: "gdouble", argname: "page_size", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_set_step_increment(): None =>
    """
    Sets the step increment of the adjustment.

See gtk_adjustment_set_lower() about how to compress multiple
emissions of the #GtkAdjustment::changed signal when setting
multiple adjustment properties.

    {:doh, %{argctype: "gdouble", argname: "step_increment", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_set_upper(): None =>
    """
    Sets the maximum value of the adjustment.

Note that values will be restricted by `upper - page-size`
if the page-size property is nonzero.

See gtk_adjustment_set_lower() about how to compress multiple
emissions of the #GtkAdjustment::changed signal when setting
multiple adjustment properties.

    {:doh, %{argctype: "gdouble", argname: "upper", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_set_value(): None =>
    """
    Sets the #GtkAdjustment value. The value is clamped to lie between
#GtkAdjustment:lower and #GtkAdjustment:upper.

Note that for adjustments which are used in a #GtkScrollbar, the
effective range of allowed values goes from #GtkAdjustment:lower to
#GtkAdjustment:upper - #GtkAdjustment:page-size.

    {:doh, %{argctype: "gdouble", argname: "value", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/
    """

fun value_changed(): None =>
"""
Emits a #GtkAdjustment::value-changed signal from the #GtkAdjustment.
This is typically called by the owner of the #GtkAdjustment after it has
changed the #GtkAdjustment:value property.
"""
  @gtk_adjustment_value_changed[None](widget)


```````