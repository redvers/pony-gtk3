/*
   needs: ["Bool", "GObjectREF"]
provides: ["GtkHandleBox"]
*/
class GtkHandleBox is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create() =>
    widget = @gtk_handle_box_new[GObjectREF]() //


fun get_child_detached(): Bool =>
  @gtk_handle_box_get_child_detached[Bool](widget)

/* get_handle_position unavailable due to return typing issues
{:argctype, "GtkPositionType"}
{:argname, "rv"}
{:argtype, "PositionType"}
{:paramtype, :param}
{:txo, "none"} */

/* get_shadow_type unavailable due to return typing issues
{:argctype, "GtkShadowType"}
{:argname, "rv"}
{:argtype, "ShadowType"}
{:paramtype, :param}
{:txo, "none"} */

/* get_snap_edge unavailable due to return typing issues
{:argctype, "GtkPositionType"}
{:argname, "rv"}
{:argtype, "PositionType"}
{:paramtype, :param}
{:txo, "none"} */

/* set_handle_position unavailable due to typing issues
 {:doh, %{argctype: "GtkPositionType", argname: "position", argtype: "PositionType", paramtype: :param, txo: "none"}}
*/

/* set_shadow_type unavailable due to typing issues
 {:doh, %{argctype: "GtkShadowType", argname: "gtype", argtype: "ShadowType", paramtype: :param, txo: "none"}}
*/

/* set_snap_edge unavailable due to typing issues
 {:doh, %{argctype: "GtkPositionType", argname: "edge", argtype: "PositionType", paramtype: :param, txo: "none"}}
*/

