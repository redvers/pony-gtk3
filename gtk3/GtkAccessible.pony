/*
   needs: ["None", "GObjectREF"]
provides: ["GtkAccessible"]
*/
use "../gobject"
class GtkAccessible is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'




fun connect_widget_destroyed(): None =>
"""
This function specifies the callback function to be called
when the widget corresponding to a GtkAccessible is destroyed.
"""
  @gtk_accessible_connect_widget_destroyed[None](widget)

/* get_widget unavailable due to return typing issues
{:argctype, "GtkWidget*"}
{:argname, "rv"}
{:argtype, "Widget"}
{:paramtype, :param}
{:txo, "none"} */

/* set_widget unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "widget", argtype: "Widget", paramtype: :param, txo: "none"}}
*/

