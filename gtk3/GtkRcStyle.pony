/*
   needs: ["GObjectREF"]
provides: ["GtkRcStyle val"]
*/
use "../gobject"
class val GtkRcStyle is GtkWidget
"""
The #GtkRcStyle-struct is used to represent a set
of information about the appearance of a widget.
This can later be composited together with other
#GtkRcStyle-struct<!-- -->s to form a #GtkStyle.
"""
  var widget: GObjectREF val

  fun gtkwidget(): GObjectREF val => widget

  new val create_from_GtkBuilder(gtkbuilder: GtkBuilder, glade_id: String) =>
    widget = @gtk_builder_get_object[GObjectREF](gtkbuilder.gtkwidget(), glade_id.cstring())

  new val create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'

  new val never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF


  new val create() =>
    widget = @gtk_rc_style_new[GObjectREF]() //


  fun pony_NOT_IMPLEMENTED_YET_copy(): None =>
    """
    Makes a copy of the specified #GtkRcStyle. This function
will correctly copy an RC style that is a member of a class
derived from #GtkRcStyle.

    {:argctype, "GtkRcStyle*"}
{:argname, "rv"}
{:argtype, "RcStyle"}
{:paramtype, :param}
{:txo, "full"}
*/
    """

