/*
   needs: ["None", "Bool", "I32", "GObjectREF"]
provides: ["GtkListBoxRow"]
*/
class GtkListBoxRow is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create() =>
    widget = @gtk_list_box_row_new[GObjectREF]() //


fun changed(): None =>
  @gtk_list_box_row_changed[None](widget)

fun get_activatable(): Bool =>
  @gtk_list_box_row_get_activatable[Bool](widget)

/* get_header unavailable due to return typing issues
{:argctype, "GtkWidget*"}
{:argname, "rv"}
{:argtype, "Widget"}
{:paramtype, :param}
{:txo, "none"} */

fun get_index(): I32 =>
  @gtk_list_box_row_get_index[I32](widget)

fun get_selectable(): Bool =>
  @gtk_list_box_row_get_selectable[Bool](widget)

fun is_selected(): Bool =>
  @gtk_list_box_row_is_selected[Bool](widget)

fun set_activatable(activatable_pony: Bool): None =>
  @gtk_list_box_row_set_activatable[None](widget, activatable_pony)

/* set_header unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "header", argtype: "Widget", paramtype: :param, txo: "none"}}
*/

fun set_selectable(selectable_pony: Bool): None =>
  @gtk_list_box_row_set_selectable[None](widget, selectable_pony)

