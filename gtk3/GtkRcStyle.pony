/*
   needs: ["GObjectREF"]
provides: ["GtkRcStyle"]
*/
use "../gobject"
class GtkRcStyle is GtkWidget
"""
The #GtkRcStyle-struct is used to represent a set
of information about the appearance of a widget.
This can later be composited together with other
#GtkRcStyle-struct<!-- -->s to form a #GtkStyle.
"""
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create() =>
    widget = @gtk_rc_style_new[GObjectREF]() //


/* copy unavailable due to return typing issues
{:argctype, "GtkRcStyle*"}
{:argname, "rv"}
{:argtype, "RcStyle"}
{:paramtype, :param}
{:txo, "full"} */

