/*
   needs: ["GObjectREF", "GtkWidget"]
provides: ["GtkGestureZoom"]
*/
use "../gobject"
class GtkGestureZoom is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create(widget_pony: GtkWidget) =>
    widget = @gtk_gesture_zoom_new[GObjectREF](widget_pony.gtkwidget()) //


/* get_scale_delta unavailable due to return typing issues
{:argctype, "gdouble"}
{:argname, "rv"}
{:argtype, "gdouble"}
{:paramtype, :param}
{:txo, "none"} */

