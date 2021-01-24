/*
   needs: ["GObjectREF"]
provides: ["GtkSocketAccessible"]
*/
class GtkSocketAccessible is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF




/* embed unavailable due to typing issues
 {:doh, %{argctype: "gchar*", argname: "path", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

