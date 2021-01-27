```````pony-full-source
/*
   needs: ["U32", "Bool", "None", "GObjectREF"]
provides: ["GtkTable"]
*/
use "../gobject"
class GtkTable is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create(rows_pony: U32, columns_pony: U32, homogeneous_pony: Bool) =>
    widget = @gtk_table_new[GObjectREF](rows_pony, columns_pony, homogeneous_pony) //


/* attach unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "child", argtype: "Widget", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkAttachOptions", argname: "xoptions", argtype: "AttachOptions", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkAttachOptions", argname: "yoptions", argtype: "AttachOptions", paramtype: :param, txo: "none"}}
*/

/* attach_defaults unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "widget", argtype: "Widget", paramtype: :param, txo: "none"}}
*/

fun get_col_spacing(column_pony: U32): U32 =>
"""
Gets the amount of space between column @col, and
column @col + 1. See gtk_table_set_col_spacing().
"""
  @gtk_table_get_col_spacing[U32](widget, column_pony)

fun get_default_col_spacing(): U32 =>
"""
Gets the default column spacing for the table. This is
the spacing that will be used for newly added columns.
(See gtk_table_set_col_spacings())
"""
  @gtk_table_get_default_col_spacing[U32](widget)

fun get_default_row_spacing(): U32 =>
"""
Gets the default row spacing for the table. This is
the spacing that will be used for newly added rows.
(See gtk_table_set_row_spacings())
"""
  @gtk_table_get_default_row_spacing[U32](widget)

fun get_homogeneous(): Bool =>
"""
Returns whether the table cells are all constrained to the same
width and height. (See gtk_table_set_homogeneous ())
"""
  @gtk_table_get_homogeneous[Bool](widget)

fun get_row_spacing(row_pony: U32): U32 =>
"""
Gets the amount of space between row @row, and
row @row + 1. See gtk_table_set_row_spacing().
"""
  @gtk_table_get_row_spacing[U32](widget, row_pony)

/* get_size unavailable due to typing issues
 {:doh, %{argctype: "guint*", argname: "rows", argtype: "guint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "guint*", argname: "columns", argtype: "guint", paramtype: :param, txo: "full"}}
*/

fun resize(rows_pony: U32, columns_pony: U32): None =>
"""
If you need to change a table’s size after
it has been created, this function allows you to do so.
"""
  @gtk_table_resize[None](widget, rows_pony, columns_pony)

fun set_col_spacing(column_pony: U32, spacing_pony: U32): None =>
"""
Alters the amount of space between a given table column and the following
column.
"""
  @gtk_table_set_col_spacing[None](widget, column_pony, spacing_pony)

fun set_col_spacings(spacing_pony: U32): None =>
"""
Sets the space between every column in @table equal to @spacing.
"""
  @gtk_table_set_col_spacings[None](widget, spacing_pony)

fun set_homogeneous(homogeneous_pony: Bool): None =>
"""
Changes the homogenous property of table cells, ie. whether all cells are
an equal size or not.
"""
  @gtk_table_set_homogeneous[None](widget, homogeneous_pony)

fun set_row_spacing(row_pony: U32, spacing_pony: U32): None =>
"""
Changes the space between a given table row and the subsequent row.
"""
  @gtk_table_set_row_spacing[None](widget, row_pony, spacing_pony)

fun set_row_spacings(spacing_pony: U32): None =>
"""
Sets the space between every row in @table equal to @spacing.
"""
  @gtk_table_set_row_spacings[None](widget, spacing_pony)


```````