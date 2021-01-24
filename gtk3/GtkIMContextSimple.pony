/*
   needs: ["GObjectREF"]
provides: ["GtkIMContextSimple"]
*/
class GtkIMContextSimple is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF


  new create() =>
    widget = @gtk_im_context_simple_new[GObjectREF]() //


/* add_compose_file unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "compose_file", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* add_table unavailable due to typing issues
 {:doh, %{argctype: "", argname: "data", argtype: "", paramtype: :param, txo: "none"}}
*/

