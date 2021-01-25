/*
   needs: ["U32", "Bool", "None", "GObjectREF"]
provides: ["GtkTable"]
*/
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
  @gtk_table_get_col_spacing[U32](widget, column_pony)

fun get_default_col_spacing(): U32 =>
  @gtk_table_get_default_col_spacing[U32](widget)

fun get_default_row_spacing(): U32 =>
  @gtk_table_get_default_row_spacing[U32](widget)

fun get_homogeneous(): Bool =>
  @gtk_table_get_homogeneous[Bool](widget)

fun get_row_spacing(row_pony: U32): U32 =>
  @gtk_table_get_row_spacing[U32](widget, row_pony)

/* get_size unavailable due to typing issues
 {:doh, %{argctype: "guint*", argname: "rows", argtype: "guint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "guint*", argname: "columns", argtype: "guint", paramtype: :param, txo: "full"}}
*/

fun resize(rows_pony: U32, columns_pony: U32): None =>
  @gtk_table_resize[None](widget, rows_pony, columns_pony)

fun set_col_spacing(column_pony: U32, spacing_pony: U32): None =>
  @gtk_table_set_col_spacing[None](widget, column_pony, spacing_pony)

fun set_col_spacings(spacing_pony: U32): None =>
  @gtk_table_set_col_spacings[None](widget, spacing_pony)

fun set_homogeneous(homogeneous_pony: Bool): None =>
  @gtk_table_set_homogeneous[None](widget, homogeneous_pony)

fun set_row_spacing(row_pony: U32, spacing_pony: U32): None =>
  @gtk_table_set_row_spacing[None](widget, row_pony, spacing_pony)

fun set_row_spacings(spacing_pony: U32): None =>
  @gtk_table_set_row_spacings[None](widget, spacing_pony)

