/*
   needs: ["GObjectREF", "String"]
provides: ["GtkColorSelectionDialog"]
*/
class GtkColorSelectionDialog is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create(title_pony: String) =>
    widget = @gtk_color_selection_dialog_new[GObjectREF](title_pony.cstring()) //


/* get_color_selection unavailable due to return typing issues
{:argctype, "GtkWidget*"}
{:argname, "rv"}
{:argtype, "Widget"}
{:paramtype, :param}
{:txo, "none"} */

