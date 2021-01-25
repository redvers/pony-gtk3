/*
   needs: ["Bool", "None", "GObjectREF"]
provides: ["GtkSearchBar"]
*/
class GtkSearchBar is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create() =>
    widget = @gtk_search_bar_new[GObjectREF]() //


/* connect_entry unavailable due to typing issues
 {:doh, %{argctype: "GtkEntry*", argname: "entry", argtype: "Entry", paramtype: :param, txo: "none"}}
*/

fun get_search_mode(): Bool =>
  @gtk_search_bar_get_search_mode[Bool](widget)

fun get_show_close_button(): Bool =>
  @gtk_search_bar_get_show_close_button[Bool](widget)

/* handle_event unavailable due to typing issues
 {:doh, %{argctype: "GdkEvent*", argname: "event", argtype: "Gdk.Event", paramtype: :param, txo: "none"}}
*/

fun set_search_mode(search_mode_pony: Bool): None =>
  @gtk_search_bar_set_search_mode[None](widget, search_mode_pony)

fun set_show_close_button(visible_pony: Bool): None =>
  @gtk_search_bar_set_show_close_button[None](widget, visible_pony)

