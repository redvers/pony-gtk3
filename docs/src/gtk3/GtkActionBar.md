```````pony-full-source
/*
   needs: ["GObjectREF"]
provides: ["GtkActionBar"]
*/
use "../gobject"
class GtkActionBar is GtkWidget
"""
GtkActionBar is designed to present contextual actions. It is
expected to be displayed below the content and expand horizontally
to fill the area.

It allows placing children at the start or the end. In addition, it
contains an internal centered box which is centered with respect to
the full width of the box, even if the children at either side take
up different amounts of space.

# CSS nodes

GtkActionBar has a single CSS node with name actionbar.
"""
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create() =>
    widget = @gtk_action_bar_new[GObjectREF]() //


/* get_center_widget unavailable due to return typing issues
{:argctype, "GtkWidget*"}
{:argname, "rv"}
{:argtype, "Widget"}
{:paramtype, :param}
{:txo, "none"} */

/* pack_end unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "child", argtype: "Widget", paramtype: :param, txo: "none"}}
*/

/* pack_start unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "child", argtype: "Widget", paramtype: :param, txo: "none"}}
*/

/* set_center_widget unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "center_widget", argtype: "Widget", paramtype: :param, txo: "none"}}
*/


```````