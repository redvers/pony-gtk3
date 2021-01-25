/*
   needs: ["None", "I32", "GObjectREF"]
provides: ["GtkCellAreaContext"]
*/
class GtkCellAreaContext is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'




fun allocate(width_pony: I32, height_pony: I32): None =>
  @gtk_cell_area_context_allocate[None](widget, width_pony, height_pony)

/* get_allocation unavailable due to typing issues
 {:doh, %{argctype: "gint*", argname: "width", argtype: "gint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gint*", argname: "height", argtype: "gint", paramtype: :param, txo: "full"}}
*/

/* get_area unavailable due to return typing issues
{:argctype, "GtkCellArea*"}
{:argname, "rv"}
{:argtype, "CellArea"}
{:paramtype, :param}
{:txo, "none"} */

/* get_preferred_height unavailable due to typing issues
 {:doh, %{argctype: "gint*", argname: "minimum_height", argtype: "gint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gint*", argname: "natural_height", argtype: "gint", paramtype: :param, txo: "full"}}
*/

/* get_preferred_height_for_width unavailable due to typing issues
 {:doh, %{argctype: "gint*", argname: "minimum_height", argtype: "gint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gint*", argname: "natural_height", argtype: "gint", paramtype: :param, txo: "full"}}
*/

/* get_preferred_width unavailable due to typing issues
 {:doh, %{argctype: "gint*", argname: "minimum_width", argtype: "gint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gint*", argname: "natural_width", argtype: "gint", paramtype: :param, txo: "full"}}
*/

/* get_preferred_width_for_height unavailable due to typing issues
 {:doh, %{argctype: "gint*", argname: "minimum_width", argtype: "gint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gint*", argname: "natural_width", argtype: "gint", paramtype: :param, txo: "full"}}
*/

fun push_preferred_height(minimum_height_pony: I32, natural_height_pony: I32): None =>
  @gtk_cell_area_context_push_preferred_height[None](widget, minimum_height_pony, natural_height_pony)

fun push_preferred_width(minimum_width_pony: I32, natural_width_pony: I32): None =>
  @gtk_cell_area_context_push_preferred_width[None](widget, minimum_width_pony, natural_width_pony)

fun reset(): None =>
  @gtk_cell_area_context_reset[None](widget)

