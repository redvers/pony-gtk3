/*
   needs: ["I32", "Bool", "U32", "None", "GObjectREF"]
provides: ["GtkGrid"]
*/
use "../gobject"
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
"""
Returns which row defines the global baseline of @grid.
"""
  @gtk_grid_get_baseline_row[I32](widget)

/* get_child_at unavailable due to return typing issues
{:argctype, "GtkWidget*"}
{:argname, "rv"}
{:argtype, "Widget"}
{:paramtype, :param}
{:txo, "none"} */

fun get_column_homogeneous(): Bool =>
"""
Returns whether all columns of @grid have the same width.
"""
  @gtk_grid_get_column_homogeneous[Bool](widget)

fun get_column_spacing(): U32 =>
"""
Returns the amount of space between the columns of @grid.
"""
  @gtk_grid_get_column_spacing[U32](widget)

/* get_row_baseline_position unavailable due to return typing issues
{:argctype, "GtkBaselinePosition"}
{:argname, "rv"}
{:argtype, "BaselinePosition"}
{:paramtype, :param}
{:txo, "none"} */

fun get_row_homogeneous(): Bool =>
"""
Returns whether all rows of @grid have the same height.
"""
  @gtk_grid_get_row_homogeneous[Bool](widget)

fun get_row_spacing(): U32 =>
"""
Returns the amount of space between the rows of @grid.
"""
  @gtk_grid_get_row_spacing[U32](widget)

fun insert_column(position_pony: I32): None =>
"""
Inserts a column at the specified position.

Children which are attached at or to the right of this position
are moved one column to the right. Children which span across this
position are grown to span the new column.
"""
  @gtk_grid_insert_column[None](widget, position_pony)

/* insert_next_to unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "sibling", argtype: "Widget", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkPositionType", argname: "side", argtype: "PositionType", paramtype: :param, txo: "none"}}
*/

fun insert_row(position_pony: I32): None =>
"""
Inserts a row at the specified position.

Children which are attached at or below this position
are moved one row down. Children which span across this
position are grown to span the new row.
"""
  @gtk_grid_insert_row[None](widget, position_pony)

fun remove_column(position_pony: I32): None =>
"""
Removes a column from the grid.

Children that are placed in this column are removed,
spanning children that overlap this column have their
width reduced by one, and children after the column
are moved to the left.
"""
  @gtk_grid_remove_column[None](widget, position_pony)

fun remove_row(position_pony: I32): None =>
"""
Removes a row from the grid.

Children that are placed in this row are removed,
spanning children that overlap this row have their
height reduced by one, and children below the row
are moved up.
"""
  @gtk_grid_remove_row[None](widget, position_pony)

fun set_baseline_row(row_pony: I32): None =>
"""
Sets which row defines the global baseline for the entire grid.
Each row in the grid can have its own local baseline, but only
one of those is global, meaning it will be the baseline in the
parent of the @grid.
"""
  @gtk_grid_set_baseline_row[None](widget, row_pony)

fun set_column_homogeneous(homogeneous_pony: Bool): None =>
"""
Sets whether all columns of @grid will have the same width.
"""
  @gtk_grid_set_column_homogeneous[None](widget, homogeneous_pony)

fun set_column_spacing(spacing_pony: U32): None =>
"""
Sets the amount of space between columns of @grid.
"""
  @gtk_grid_set_column_spacing[None](widget, spacing_pony)

/* set_row_baseline_position unavailable due to typing issues
 {:doh, %{argctype: "GtkBaselinePosition", argname: "pos", argtype: "BaselinePosition", paramtype: :param, txo: "none"}}
*/

fun set_row_homogeneous(homogeneous_pony: Bool): None =>
"""
Sets whether all rows of @grid will have the same height.
"""
  @gtk_grid_set_row_homogeneous[None](widget, homogeneous_pony)

fun set_row_spacing(spacing_pony: U32): None =>
"""
Sets the amount of space between rows of @grid.
"""
  @gtk_grid_set_row_spacing[None](widget, spacing_pony)

