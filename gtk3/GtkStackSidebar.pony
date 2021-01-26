/*
   needs: ["GObjectREF"]
provides: ["GtkStackSidebar"]
*/
use "../gobject"
class GtkStackSidebar is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create() =>
    widget = @gtk_stack_sidebar_new[GObjectREF]() //


/* get_stack unavailable due to return typing issues
{:argctype, "GtkStack*"}
{:argname, "rv"}
{:argtype, "Stack"}
{:paramtype, :param}
{:txo, "none"} */

/* set_stack unavailable due to typing issues
 {:doh, %{argctype: "GtkStack*", argname: "stack", argtype: "Stack", paramtype: :param, txo: "none"}}
*/

