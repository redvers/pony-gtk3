/*
   needs: ["GObjectREF"]
provides: ["GtkSocketAccessible"]
*/
use "../gobject"
class GtkSocketAccessible is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'




/* embed unavailable due to typing issues
 {:doh, %{argctype: "gchar*", argname: "path", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

