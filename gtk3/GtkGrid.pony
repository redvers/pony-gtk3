/*
   needs: ["I32", "Bool", "U32", "None", "GObjectREF"]
provides: ["GtkGrid"]
*/
class GtkGrid is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create() =>
    widget = @gtk_grid_new[GObjectREF]() //


/* attach unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "child", argtype: "Widget", paramtype: :param, txo: "none"}}
*/

/* attach_next_to unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "child", argtype: "Widget", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkWidget*", argname: "sibling", argtype: "Widget", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkPositionType", argname: "side", argtype: "PositionType", paramtype: :param, txo: "none"}}
*/

fun get_baseline_row(): I32 =>
  @gtk_grid_get_baseline_row[I32](widget)

/* get_child_at unavailable due to return typing issues
{:argctype, "GtkWidget*"}
{:argname, "rv"}
{:argtype, "Widget"}
{:paramtype, :param}
{:txo, "none"} */

fun get_column_homogeneous(): Bool =>
  @gtk_grid_get_column_homogeneous[Bool](widget)

fun get_column_spacing(): U32 =>
  @gtk_grid_get_column_spacing[U32](widget)

/* get_row_baseline_position unavailable due to return typing issues
{:argctype, "GtkBaselinePosition"}
{:argname, "rv"}
{:argtype, "BaselinePosition"}
{:paramtype, :param}
{:txo, "none"} */

fun get_row_homogeneous(): Bool =>
  @gtk_grid_get_row_homogeneous[Bool](widget)

fun get_row_spacing(): U32 =>
  @gtk_grid_get_row_spacing[U32](widget)

fun insert_column(position_pony: I32): None =>
  @gtk_grid_insert_column[None](widget, position_pony)

/* insert_next_to unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "sibling", argtype: "Widget", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkPositionType", argname: "side", argtype: "PositionType", paramtype: :param, txo: "none"}}
*/

fun insert_row(position_pony: I32): None =>
  @gtk_grid_insert_row[None](widget, position_pony)

fun remove_column(position_pony: I32): None =>
  @gtk_grid_remove_column[None](widget, position_pony)

fun remove_row(position_pony: I32): None =>
  @gtk_grid_remove_row[None](widget, position_pony)

fun set_baseline_row(row_pony: I32): None =>
  @gtk_grid_set_baseline_row[None](widget, row_pony)

fun set_column_homogeneous(homogeneous_pony: Bool): None =>
  @gtk_grid_set_column_homogeneous[None](widget, homogeneous_pony)

fun set_column_spacing(spacing_pony: U32): None =>
  @gtk_grid_set_column_spacing[None](widget, spacing_pony)

/* set_row_baseline_position unavailable due to typing issues
 {:doh, %{argctype: "GtkBaselinePosition", argname: "pos", argtype: "BaselinePosition", paramtype: :param, txo: "none"}}
*/

fun set_row_homogeneous(homogeneous_pony: Bool): None =>
  @gtk_grid_set_row_homogeneous[None](widget, homogeneous_pony)

fun set_row_spacing(spacing_pony: U32): None =>
  @gtk_grid_set_row_spacing[None](widget, spacing_pony)

