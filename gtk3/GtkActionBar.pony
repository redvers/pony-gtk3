/*
   needs: ["GObjectREF"]
provides: ["GtkActionBar"]
*/
class GtkActionBar is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF


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

