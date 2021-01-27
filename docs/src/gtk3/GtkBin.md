```````pony-full-source
/*
   needs: ["GObjectREF"]
provides: ["GtkBin"]
*/
use "../gobject"
class GtkBin is GtkWidget
"""
The #GtkBin widget is a container with just one child.
It is not very useful itself, but it is useful for deriving subclasses,
since it provides common code needed for handling a single child widget.

Many GTK+ widgets are subclasses of #GtkBin, including #GtkWindow,
#GtkButton, #GtkFrame, #GtkHandleBox or #GtkScrolledWindow.
"""
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'




/* get_child unavailable due to return typing issues
{:argctype, "GtkWidget*"}
{:argname, "rv"}
{:argtype, "Widget"}
{:paramtype, :param}
{:txo, "none"} */


```````