/*
   needs: ["GObjectREF"]
provides: ["GtkSearchEntry"]
*/
class GtkSearchEntry is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create() =>
    widget = @gtk_search_entry_new[GObjectREF]() //


/* handle_event unavailable due to typing issues
 {:doh, %{argctype: "GdkEvent*", argname: "event", argtype: "Gdk.Event", paramtype: :param, txo: "none"}}
*/

