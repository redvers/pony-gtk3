/*
   needs: ["None", "GObjectREF", "F64"]
provides: ["GtkAdjustment"]
*/
class GtkAdjustment is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create(value_pony: F64, lower_pony: F64, upper_pony: F64, step_increment_pony: F64, page_increment_pony: F64, page_size_pony: F64) =>
    widget = @gtk_adjustment_new[GObjectREF](value_pony, lower_pony, upper_pony, step_increment_pony, page_increment_pony, page_size_pony) //


fun changed(): None =>
  @gtk_adjustment_changed[None](widget)

/* clamp_page unavailable due to typing issues
 {:doh, %{argctype: "gdouble", argname: "lower", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "upper", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/

/* configure unavailable due to typing issues
 {:doh, %{argctype: "gdouble", argname: "value", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "lower", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "upper", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "step_increment", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "page_increment", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "page_size", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/

/* get_lower unavailable due to return typing issues
{:argctype, "gdouble"}
{:argname, "rv"}
{:argtype, "gdouble"}
{:paramtype, :param}
{:txo, "none"} */

/* get_minimum_increment unavailable due to return typing issues
{:argctype, "gdouble"}
{:argname, "rv"}
{:argtype, "gdouble"}
{:paramtype, :param}
{:txo, "none"} */

/* get_page_increment unavailable due to return typing issues
{:argctype, "gdouble"}
{:argname, "rv"}
{:argtype, "gdouble"}
{:paramtype, :param}
{:txo, "none"} */

/* get_page_size unavailable due to return typing issues
{:argctype, "gdouble"}
{:argname, "rv"}
{:argtype, "gdouble"}
{:paramtype, :param}
{:txo, "none"} */

/* get_step_increment unavailable due to return typing issues
{:argctype, "gdouble"}
{:argname, "rv"}
{:argtype, "gdouble"}
{:paramtype, :param}
{:txo, "none"} */

/* get_upper unavailable due to return typing issues
{:argctype, "gdouble"}
{:argname, "rv"}
{:argtype, "gdouble"}
{:paramtype, :param}
{:txo, "none"} */

/* get_value unavailable due to return typing issues
{:argctype, "gdouble"}
{:argname, "rv"}
{:argtype, "gdouble"}
{:paramtype, :param}
{:txo, "none"} */

/* set_lower unavailable due to typing issues
 {:doh, %{argctype: "gdouble", argname: "lower", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/

/* set_page_increment unavailable due to typing issues
 {:doh, %{argctype: "gdouble", argname: "page_increment", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/

/* set_page_size unavailable due to typing issues
 {:doh, %{argctype: "gdouble", argname: "page_size", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/

/* set_step_increment unavailable due to typing issues
 {:doh, %{argctype: "gdouble", argname: "step_increment", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/

/* set_upper unavailable due to typing issues
 {:doh, %{argctype: "gdouble", argname: "upper", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/

/* set_value unavailable due to typing issues
 {:doh, %{argctype: "gdouble", argname: "value", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/

fun value_changed(): None =>
  @gtk_adjustment_value_changed[None](widget)

