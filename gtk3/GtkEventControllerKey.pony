/*
   needs: ["U32", "GObjectREF", "GtkWidget"]
provides: ["GtkEventControllerKey"]
*/
class GtkEventControllerKey is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF


  new create(widget_pony: GtkWidget) =>
    widget = @gtk_event_controller_key_new[GObjectREF](widget_pony.gtkwidget()) //


/* forward unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "widget", argtype: "Widget", paramtype: :param, txo: "none"}}
*/

fun get_group(): U32 =>
  @gtk_event_controller_key_get_group[U32](widget)

/* get_im_context unavailable due to return typing issues
{:argctype, "GtkIMContext*"}
{:argname, "rv"}
{:argtype, "IMContext"}
{:paramtype, :param}
{:txo, "none"} */

/* set_im_context unavailable due to typing issues
 {:doh, %{argctype: "GtkIMContext*", argname: "im_context", argtype: "IMContext", paramtype: :param, txo: "none"}}
*/

