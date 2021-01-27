```````pony-full-source
/*
   needs: ["Bool", "GObjectREF"]
provides: ["GtkTextChildAnchor"]
*/
use "../gobject"
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
"""
Determines whether a child anchor has been deleted from
the buffer. Keep in mind that the child anchor will be
unreferenced when removed from the buffer, so you need to
hold your own reference (with g_object_ref()) if you plan
to use this function — otherwise all deleted child anchors
will also be finalized.
"""
  @gtk_text_child_anchor_get_deleted[Bool](widget)

/* get_widgets unavailable due to return typing issues
{:argctype, "GList*"}
{:argname, "rv"}
{:argtype, "GLib.List"}
{:paramtype, :param}
{:txo, "container"} */


```````