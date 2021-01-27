```````pony-full-source
/*
   needs: ["GObjectREF"]
provides: ["GtkPopoverMenu"]
*/
use "../gobject"
class GtkPopoverMenu is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create() =>
    widget = @gtk_popover_menu_new[GObjectREF]() //


/* open_submenu unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "name", argtype: "utf8", paramtype: :param, txo: "none"}}
*/


```````