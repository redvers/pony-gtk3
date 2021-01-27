/*
   needs: ["Pointer[U8 val] ref", "String", "Bool", "None", "GObjectREF"]
provides: ["GtkCellArea"]
*/
use "../gobject"
class GtkCellArea is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'




/* activate unavailable due to typing issues
 {:doh, %{argctype: "GtkCellAreaContext*", argname: "context", argtype: "CellAreaContext", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkWidget*", argname: "widget", argtype: "Widget", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const GdkRectangle*", argname: "cell_area", argtype: "Gdk.Rectangle", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkCellRendererState", argname: "flags", argtype: "CellRendererState", paramtype: :param, txo: "none"}}
*/

/* activate_cell unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "widget", argtype: "Widget", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkCellRenderer*", argname: "renderer", argtype: "CellRenderer", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkEvent*", argname: "event", argtype: "Gdk.Event", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const GdkRectangle*", argname: "cell_area", argtype: "Gdk.Rectangle", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkCellRendererState", argname: "flags", argtype: "CellRendererState", paramtype: :param, txo: "none"}}
*/

/* add unavailable due to typing issues
 {:doh, %{argctype: "GtkCellRenderer*", argname: "renderer", argtype: "CellRenderer", paramtype: :param, txo: "none"}}
*/

/* add_focus_sibling unavailable due to typing issues
 {:doh, %{argctype: "GtkCellRenderer*", argname: "renderer", argtype: "CellRenderer", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkCellRenderer*", argname: "sibling", argtype: "CellRenderer", paramtype: :param, txo: "none"}}
*/

/* add_with_properties unavailable due to typing issues
 {:doh, %{argctype: "GtkCellRenderer*", argname: "renderer", argtype: "CellRenderer", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "first_prop_name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "", argname: "...", argtype: "", paramtype: :param, txo: "none"}}
*/

/* apply_attributes unavailable due to typing issues
 {:doh, %{argctype: "GtkTreeModel*", argname: "tree_model", argtype: "TreeModel", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkTreeIter*", argname: "iter", argtype: "TreeIter", paramtype: :param, txo: "none"}}
*/

/* attribute_connect unavailable due to typing issues
 {:doh, %{argctype: "GtkCellRenderer*", argname: "renderer", argtype: "CellRenderer", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "attribute", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* attribute_disconnect unavailable due to typing issues
 {:doh, %{argctype: "GtkCellRenderer*", argname: "renderer", argtype: "CellRenderer", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "attribute", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* attribute_get_column unavailable due to typing issues
 {:doh, %{argctype: "GtkCellRenderer*", argname: "renderer", argtype: "CellRenderer", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "attribute", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* cell_get unavailable due to typing issues
 {:doh, %{argctype: "GtkCellRenderer*", argname: "renderer", argtype: "CellRenderer", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "first_prop_name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "", argname: "...", argtype: "", paramtype: :param, txo: "none"}}
*/

/* cell_get_property unavailable due to typing issues
 {:doh, %{argctype: "GtkCellRenderer*", argname: "renderer", argtype: "CellRenderer", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "property_name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GValue*", argname: "value", argtype: "GObject.Value", paramtype: :param, txo: "none"}}
*/

/* cell_get_valist unavailable due to typing issues
 {:doh, %{argctype: "GtkCellRenderer*", argname: "renderer", argtype: "CellRenderer", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "first_property_name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "va_list", argname: "var_args", argtype: "va_list", paramtype: :param, txo: "none"}}
*/

/* cell_set unavailable due to typing issues
 {:doh, %{argctype: "GtkCellRenderer*", argname: "renderer", argtype: "CellRenderer", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "first_prop_name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "", argname: "...", argtype: "", paramtype: :param, txo: "none"}}
*/

/* cell_set_property unavailable due to typing issues
 {:doh, %{argctype: "GtkCellRenderer*", argname: "renderer", argtype: "CellRenderer", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "property_name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const GValue*", argname: "value", argtype: "GObject.Value", paramtype: :param, txo: "none"}}
*/

/* cell_set_valist unavailable due to typing issues
 {:doh, %{argctype: "GtkCellRenderer*", argname: "renderer", argtype: "CellRenderer", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "first_property_name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "va_list", argname: "var_args", argtype: "va_list", paramtype: :param, txo: "none"}}
*/

/* copy_context unavailable due to return typing issues
{:argctype, "GtkCellAreaContext*"}
{:argname, "rv"}
{:argtype, "CellAreaContext"}
{:paramtype, :param}
{:txo, "full"} */

/* create_context unavailable due to return typing issues
{:argctype, "GtkCellAreaContext*"}
{:argname, "rv"}
{:argtype, "CellAreaContext"}
{:paramtype, :param}
{:txo, "full"} */

/* event unavailable due to typing issues
 {:doh, %{argctype: "GtkCellAreaContext*", argname: "context", argtype: "CellAreaContext", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkWidget*", argname: "widget", argtype: "Widget", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkEvent*", argname: "event", argtype: "Gdk.Event", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const GdkRectangle*", argname: "cell_area", argtype: "Gdk.Rectangle", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkCellRendererState", argname: "flags", argtype: "CellRendererState", paramtype: :param, txo: "none"}}
*/

/* focus unavailable due to typing issues
 {:doh, %{argctype: "GtkDirectionType", argname: "direction", argtype: "DirectionType", paramtype: :param, txo: "none"}}
*/

/* foreach unavailable due to typing issues
 {:doh, %{argctype: "GtkCellCallback", argname: "callback", argtype: "CellCallback", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "callback_data", argtype: "gpointer", paramtype: :param, txo: "none"}}
*/

/* foreach_alloc unavailable due to typing issues
 {:doh, %{argctype: "GtkCellAreaContext*", argname: "context", argtype: "CellAreaContext", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkWidget*", argname: "widget", argtype: "Widget", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const GdkRectangle*", argname: "cell_area", argtype: "Gdk.Rectangle", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const GdkRectangle*", argname: "background_area", argtype: "Gdk.Rectangle", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkCellAllocCallback", argname: "callback", argtype: "CellAllocCallback", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "callback_data", argtype: "gpointer", paramtype: :param, txo: "none"}}
*/

/* get_cell_allocation unavailable due to typing issues
 {:doh, %{argctype: "GtkCellAreaContext*", argname: "context", argtype: "CellAreaContext", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkWidget*", argname: "widget", argtype: "Widget", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkCellRenderer*", argname: "renderer", argtype: "CellRenderer", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const GdkRectangle*", argname: "cell_area", argtype: "Gdk.Rectangle", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkRectangle*", argname: "allocation", argtype: "Gdk.Rectangle", paramtype: :param, txo: "none"}}
*/

/* get_cell_at_position unavailable due to return typing issues
{:argctype, "GtkCellRenderer*"}
{:argname, "rv"}
{:argtype, "CellRenderer"}
{:paramtype, :param}
{:txo, "none"} */

fun get_current_path_string(): String =>
"""
Gets the current #GtkTreePath string for the currently
applied #GtkTreeIter, this is implicitly updated when
gtk_cell_area_apply_attributes() is called and can be
used to interact with renderers from #GtkCellArea
subclasses.
"""
  var cstring_pony: Pointer[U8 val] ref = @gtk_cell_area_get_current_path_string[Pointer[U8 val] ref](widget)
  var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

/* get_edit_widget unavailable due to return typing issues
{:argctype, "GtkCellEditable*"}
{:argname, "rv"}
{:argtype, "CellEditable"}
{:paramtype, :param}
{:txo, "none"} */

/* get_edited_cell unavailable due to return typing issues
{:argctype, "GtkCellRenderer*"}
{:argname, "rv"}
{:argtype, "CellRenderer"}
{:paramtype, :param}
{:txo, "none"} */

/* get_focus_cell unavailable due to return typing issues
{:argctype, "GtkCellRenderer*"}
{:argname, "rv"}
{:argtype, "CellRenderer"}
{:paramtype, :param}
{:txo, "none"} */

/* get_focus_from_sibling unavailable due to return typing issues
{:argctype, "GtkCellRenderer*"}
{:argname, "rv"}
{:argtype, "CellRenderer"}
{:paramtype, :param}
{:txo, "none"} */

/* get_focus_siblings unavailable due to return typing issues
{:argctype, "const GList*"}
{:argname, "rv"}
{:argtype, "GLib.List"}
{:paramtype, :param}
{:txo, "none"} */

/* get_preferred_height unavailable due to typing issues
 {:doh, %{argctype: "GtkCellAreaContext*", argname: "context", argtype: "CellAreaContext", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkWidget*", argname: "widget", argtype: "Widget", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gint*", argname: "minimum_height", argtype: "gint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gint*", argname: "natural_height", argtype: "gint", paramtype: :param, txo: "full"}}
*/

/* get_preferred_height_for_width unavailable due to typing issues
 {:doh, %{argctype: "GtkCellAreaContext*", argname: "context", argtype: "CellAreaContext", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkWidget*", argname: "widget", argtype: "Widget", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gint*", argname: "minimum_height", argtype: "gint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gint*", argname: "natural_height", argtype: "gint", paramtype: :param, txo: "full"}}
*/

/* get_preferred_width unavailable due to typing issues
 {:doh, %{argctype: "GtkCellAreaContext*", argname: "context", argtype: "CellAreaContext", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkWidget*", argname: "widget", argtype: "Widget", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gint*", argname: "minimum_width", argtype: "gint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gint*", argname: "natural_width", argtype: "gint", paramtype: :param, txo: "full"}}
*/

/* get_preferred_width_for_height unavailable due to typing issues
 {:doh, %{argctype: "GtkCellAreaContext*", argname: "context", argtype: "CellAreaContext", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkWidget*", argname: "widget", argtype: "Widget", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gint*", argname: "minimum_width", argtype: "gint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gint*", argname: "natural_width", argtype: "gint", paramtype: :param, txo: "full"}}
*/

/* get_request_mode unavailable due to return typing issues
{:argctype, "GtkSizeRequestMode"}
{:argname, "rv"}
{:argtype, "SizeRequestMode"}
{:paramtype, :param}
{:txo, "none"} */

/* has_renderer unavailable due to typing issues
 {:doh, %{argctype: "GtkCellRenderer*", argname: "renderer", argtype: "CellRenderer", paramtype: :param, txo: "none"}}
*/

/* inner_cell_area unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "widget", argtype: "Widget", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const GdkRectangle*", argname: "cell_area", argtype: "Gdk.Rectangle", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkRectangle*", argname: "inner_area", argtype: "Gdk.Rectangle", paramtype: :param, txo: "none"}}
*/

fun is_activatable(): Bool =>
"""
Returns whether the area can do anything when activated,
after applying new attributes to @area.
"""
  @gtk_cell_area_is_activatable[Bool](widget)

/* is_focus_sibling unavailable due to typing issues
 {:doh, %{argctype: "GtkCellRenderer*", argname: "renderer", argtype: "CellRenderer", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkCellRenderer*", argname: "sibling", argtype: "CellRenderer", paramtype: :param, txo: "none"}}
*/

/* remove unavailable due to typing issues
 {:doh, %{argctype: "GtkCellRenderer*", argname: "renderer", argtype: "CellRenderer", paramtype: :param, txo: "none"}}
*/

/* remove_focus_sibling unavailable due to typing issues
 {:doh, %{argctype: "GtkCellRenderer*", argname: "renderer", argtype: "CellRenderer", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkCellRenderer*", argname: "sibling", argtype: "CellRenderer", paramtype: :param, txo: "none"}}
*/

/* render unavailable due to typing issues
 {:doh, %{argctype: "GtkCellAreaContext*", argname: "context", argtype: "CellAreaContext", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkWidget*", argname: "widget", argtype: "Widget", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "cairo_t*", argname: "cr", argtype: "cairo.Context", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const GdkRectangle*", argname: "background_area", argtype: "Gdk.Rectangle", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const GdkRectangle*", argname: "cell_area", argtype: "Gdk.Rectangle", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkCellRendererState", argname: "flags", argtype: "CellRendererState", paramtype: :param, txo: "none"}}
*/

/* request_renderer unavailable due to typing issues
 {:doh, %{argctype: "GtkCellRenderer*", argname: "renderer", argtype: "CellRenderer", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkOrientation", argname: "orientation", argtype: "Orientation", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkWidget*", argname: "widget", argtype: "Widget", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gint*", argname: "minimum_size", argtype: "gint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gint*", argname: "natural_size", argtype: "gint", paramtype: :param, txo: "full"}}
*/

/* set_focus_cell unavailable due to typing issues
 {:doh, %{argctype: "GtkCellRenderer*", argname: "renderer", argtype: "CellRenderer", paramtype: :param, txo: "none"}}
*/

fun stop_editing(canceled_pony: Bool): None =>
"""
Explicitly stops the editing of the currently edited cell.

If @canceled is %TRUE, the currently edited cell renderer
will emit the ::editing-canceled signal, otherwise the
the ::editing-done signal will be emitted on the current
edit widget.

See gtk_cell_area_get_edited_cell() and gtk_cell_area_get_edit_widget().
"""
  @gtk_cell_area_stop_editing[None](widget, canceled_pony)

