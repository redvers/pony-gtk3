/*
   needs: ["Bool", "GObjectREF"]
provides: ["GtkTextChildAnchor"]
*/
class GtkTextChildAnchor is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create() =>
    widget = @gtk_text_child_anchor_new[GObjectREF]() //


fun get_deleted(): Bool =>
  @gtk_text_child_anchor_get_deleted[Bool](widget)

/* get_widgets unavailable due to return typing issues
{:argctype, "GList*"}
{:argname, "rv"}
{:argtype, "GLib.List"}
{:paramtype, :param}
{:txo, "container"} */

