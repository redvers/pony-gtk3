/*
   needs: ["Bool", "None", "GObjectREF"]
provides: ["GtkPlacesSidebar"]
*/
class GtkPlacesSidebar is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create() =>
    widget = @gtk_places_sidebar_new[GObjectREF]() //


/* add_shortcut unavailable due to typing issues
 {:doh, %{argctype: "GFile*", argname: "location", argtype: "Gio.File", paramtype: :param, txo: "none"}}
*/

fun get_local_only(): Bool =>
  @gtk_places_sidebar_get_local_only[Bool](widget)

/* get_location unavailable due to return typing issues
{:argctype, "GFile*"}
{:argname, "rv"}
{:argtype, "Gio.File"}
{:paramtype, :param}
{:txo, "full"} */

/* get_nth_bookmark unavailable due to return typing issues
{:argctype, "GFile*"}
{:argname, "rv"}
{:argtype, "Gio.File"}
{:paramtype, :param}
{:txo, "full"} */

/* get_open_flags unavailable due to return typing issues
{:argctype, "GtkPlacesOpenFlags"}
{:argname, "rv"}
{:argtype, "PlacesOpenFlags"}
{:paramtype, :param}
{:txo, "none"} */

fun get_show_connect_to_server(): Bool =>
  @gtk_places_sidebar_get_show_connect_to_server[Bool](widget)

fun get_show_desktop(): Bool =>
  @gtk_places_sidebar_get_show_desktop[Bool](widget)

fun get_show_enter_location(): Bool =>
  @gtk_places_sidebar_get_show_enter_location[Bool](widget)

fun get_show_other_locations(): Bool =>
  @gtk_places_sidebar_get_show_other_locations[Bool](widget)

fun get_show_recent(): Bool =>
  @gtk_places_sidebar_get_show_recent[Bool](widget)

fun get_show_starred_location(): Bool =>
  @gtk_places_sidebar_get_show_starred_location[Bool](widget)

fun get_show_trash(): Bool =>
  @gtk_places_sidebar_get_show_trash[Bool](widget)

/* list_shortcuts unavailable due to return typing issues
{:argctype, "GSList*"}
{:argname, "rv"}
{:argtype, "GLib.SList"}
{:paramtype, :param}
{:txo, "full"} */

/* remove_shortcut unavailable due to typing issues
 {:doh, %{argctype: "GFile*", argname: "location", argtype: "Gio.File", paramtype: :param, txo: "none"}}
*/

/* set_drop_targets_visible unavailable due to typing issues
 {:doh, %{argctype: "GdkDragContext*", argname: "context", argtype: "Gdk.DragContext", paramtype: :param, txo: "none"}}
*/

fun set_local_only(local_only_pony: Bool): None =>
  @gtk_places_sidebar_set_local_only[None](widget, local_only_pony)

/* set_location unavailable due to typing issues
 {:doh, %{argctype: "GFile*", argname: "location", argtype: "Gio.File", paramtype: :param, txo: "none"}}
*/

/* set_open_flags unavailable due to typing issues
 {:doh, %{argctype: "GtkPlacesOpenFlags", argname: "flags", argtype: "PlacesOpenFlags", paramtype: :param, txo: "none"}}
*/

fun set_show_connect_to_server(show_connect_to_server_pony: Bool): None =>
  @gtk_places_sidebar_set_show_connect_to_server[None](widget, show_connect_to_server_pony)

fun set_show_desktop(show_desktop_pony: Bool): None =>
  @gtk_places_sidebar_set_show_desktop[None](widget, show_desktop_pony)

fun set_show_enter_location(show_enter_location_pony: Bool): None =>
  @gtk_places_sidebar_set_show_enter_location[None](widget, show_enter_location_pony)

fun set_show_other_locations(show_other_locations_pony: Bool): None =>
  @gtk_places_sidebar_set_show_other_locations[None](widget, show_other_locations_pony)

fun set_show_recent(show_recent_pony: Bool): None =>
  @gtk_places_sidebar_set_show_recent[None](widget, show_recent_pony)

fun set_show_starred_location(show_starred_location_pony: Bool): None =>
  @gtk_places_sidebar_set_show_starred_location[None](widget, show_starred_location_pony)

fun set_show_trash(show_trash_pony: Bool): None =>
  @gtk_places_sidebar_set_show_trash[None](widget, show_trash_pony)

