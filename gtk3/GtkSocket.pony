/*
   needs: ["GObjectREF"]
provides: ["GtkSocket"]
*/
class GtkSocket is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF


  new create() =>
    widget = @gtk_socket_new[GObjectREF]() //


/* add_id unavailable due to typing issues
 {:doh, %{argctype: "Window", argname: "window", argtype: "xlib.Window", paramtype: :param, txo: "none"}}
*/

/* get_id unavailable due to return typing issues
{:argctype, "Window"}
{:argname, "rv"}
{:argtype, "xlib.Window"}
{:paramtype, :param}
{:txo, "none"} */

/* get_plug_window unavailable due to return typing issues
{:argctype, "GdkWindow*"}
{:argname, "rv"}
{:argtype, "Gdk.Window"}
{:paramtype, :param}
{:txo, "none"} */

