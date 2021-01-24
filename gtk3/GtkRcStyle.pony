/*
   needs: ["GObjectREF"]
provides: ["GtkRcStyle"]
*/
class GtkRcStyle is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF


  new create() =>
    widget = @gtk_rc_style_new[GObjectREF]() //


/* copy unavailable due to return typing issues
{:argctype, "GtkRcStyle*"}
{:argname, "rv"}
{:argtype, "RcStyle"}
{:paramtype, :param}
{:txo, "full"} */

