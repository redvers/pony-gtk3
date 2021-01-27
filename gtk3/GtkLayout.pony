/*
   needs: ["None", "U32", "GObjectREF", "GtkAdjustment"]
provides: ["GtkLayout"]
*/
use "../gobject"
class GtkLayout is GtkWidget
"""
#GtkLayout is similar to #GtkDrawingArea in that it’s a “blank slate” and
doesn’t do anything except paint a blank background by default. It’s
different in that it supports scrolling natively due to implementing
#GtkScrollable, and can contain child widgets since it’s a #GtkContainer.

If you just want to draw, a #GtkDrawingArea is a better choice since it has
lower overhead. If you just need to position child widgets at specific
points, then #GtkFixed provides that functionality on its own.

When handling expose events on a #GtkLayout, you must draw to the #GdkWindow
returned by gtk_layout_get_bin_window(), rather than to the one returned by
gtk_widget_get_window() as you would for a #GtkDrawingArea.
"""
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create(hadjustment_pony: GtkAdjustment, vadjustment_pony: GtkAdjustment) =>
    widget = @gtk_layout_new[GObjectREF](hadjustment_pony.gtkwidget(), vadjustment_pony.gtkwidget()) //


/* get_bin_window unavailable due to return typing issues
{:argctype, "GdkWindow*"}
{:argname, "rv"}
{:argtype, "Gdk.Window"}
{:paramtype, :param}
{:txo, "none"} */

/* get_hadjustment unavailable due to return typing issues
{:argctype, "GtkAdjustment*"}
{:argname, "rv"}
{:argtype, "Adjustment"}
{:paramtype, :param}
{:txo, "none"} */

/* get_size unavailable due to typing issues
 {:doh, %{argctype: "guint*", argname: "width", argtype: "guint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "guint*", argname: "height", argtype: "guint", paramtype: :param, txo: "full"}}
*/

/* get_vadjustment unavailable due to return typing issues
{:argctype, "GtkAdjustment*"}
{:argname, "rv"}
{:argtype, "Adjustment"}
{:paramtype, :param}
{:txo, "none"} */

/* move unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "child_widget", argtype: "Widget", paramtype: :param, txo: "none"}}
*/

/* put unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "child_widget", argtype: "Widget", paramtype: :param, txo: "none"}}
*/

/* set_hadjustment unavailable due to typing issues
 {:doh, %{argctype: "GtkAdjustment*", argname: "adjustment", argtype: "Adjustment", paramtype: :param, txo: "none"}}
*/

fun set_size(width_pony: U32, height_pony: U32): None =>
"""
Sets the size of the scrollable area of the layout.
"""
  @gtk_layout_set_size[None](widget, width_pony, height_pony)

/* set_vadjustment unavailable due to typing issues
 {:doh, %{argctype: "GtkAdjustment*", argname: "adjustment", argtype: "Adjustment", paramtype: :param, txo: "none"}}
*/

