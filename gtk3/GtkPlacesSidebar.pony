/*
   needs: ["Bool", "None", "GObjectREF"]
provides: ["GtkPlacesSidebar"]
*/
use "../gobject"
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
"""
Returns the value previously set with gtk_places_sidebar_set_local_only().
"""
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
"""
Returns the value previously set with gtk_places_sidebar_set_show_connect_to_server()
"""
  @gtk_places_sidebar_get_show_connect_to_server[Bool](widget)

fun get_show_desktop(): Bool =>
"""
Returns the value previously set with gtk_places_sidebar_set_show_desktop()
"""
  @gtk_places_sidebar_get_show_desktop[Bool](widget)

fun get_show_enter_location(): Bool =>
"""
Returns the value previously set with gtk_places_sidebar_set_show_enter_location()
"""
  @gtk_places_sidebar_get_show_enter_location[Bool](widget)

fun get_show_other_locations(): Bool =>
"""
Returns the value previously set with gtk_places_sidebar_set_show_other_locations()
"""
  @gtk_places_sidebar_get_show_other_locations[Bool](widget)

fun get_show_recent(): Bool =>
"""
Returns the value previously set with gtk_places_sidebar_set_show_recent()
"""
  @gtk_places_sidebar_get_show_recent[Bool](widget)

fun get_show_starred_location(): Bool =>
"""
Returns the value previously set with gtk_places_sidebar_set_show_starred_location()
"""
  @gtk_places_sidebar_get_show_starred_location[Bool](widget)

fun get_show_trash(): Bool =>
"""
Returns the value previously set with gtk_places_sidebar_set_show_trash()
"""
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
"""
Sets whether the @sidebar should only show local files.
"""
  @gtk_places_sidebar_set_local_only[None](widget, local_only_pony)

/* set_location unavailable due to typing issues
 {:doh, %{argctype: "GFile*", argname: "location", argtype: "Gio.File", paramtype: :param, txo: "none"}}
*/

/* set_open_flags unavailable due to typing issues
 {:doh, %{argctype: "GtkPlacesOpenFlags", argname: "flags", argtype: "PlacesOpenFlags", paramtype: :param, txo: "none"}}
*/

fun set_show_connect_to_server(show_connect_to_server_pony: Bool): None =>
"""
Sets whether the @sidebar should show an item for connecting to a network server;
this is off by default. An application may want to turn this on if it implements
a way for the user to connect to network servers directly.

If you enable this, you should connect to the
#GtkPlacesSidebar::show-connect-to-server signal.
"""
  @gtk_places_sidebar_set_show_connect_to_server[None](widget, show_connect_to_server_pony)

fun set_show_desktop(show_desktop_pony: Bool): None =>
"""
Sets whether the @sidebar should show an item for the Desktop folder.
The default value for this option is determined by the desktop
environment and the user’s configuration, but this function can be
used to override it on a per-application basis.
"""
  @gtk_places_sidebar_set_show_desktop[None](widget, show_desktop_pony)

fun set_show_enter_location(show_enter_location_pony: Bool): None =>
"""
Sets whether the @sidebar should show an item for entering a location;
this is off by default. An application may want to turn this on if manually
entering URLs is an expected user action.

If you enable this, you should connect to the
#GtkPlacesSidebar::show-enter-location signal.
"""
  @gtk_places_sidebar_set_show_enter_location[None](widget, show_enter_location_pony)

fun set_show_other_locations(show_other_locations_pony: Bool): None =>
"""
Sets whether the @sidebar should show an item for the application to show
an Other Locations view; this is off by default. When set to %TRUE, persistent
devices such as hard drives are hidden, otherwise they are shown in the sidebar.
An application may want to turn this on if it implements a way for the user to
see and interact with drives and network servers directly.

If you enable this, you should connect to the
#GtkPlacesSidebar::show-other-locations signal.
"""
  @gtk_places_sidebar_set_show_other_locations[None](widget, show_other_locations_pony)

fun set_show_recent(show_recent_pony: Bool): None =>
"""
Sets whether the @sidebar should show an item for recent files.
The default value for this option is determined by the desktop
environment, but this function can be used to override it on a
per-application basis.
"""
  @gtk_places_sidebar_set_show_recent[None](widget, show_recent_pony)

fun set_show_starred_location(show_starred_location_pony: Bool): None =>
"""
If you enable this, you should connect to the
#GtkPlacesSidebar::show-starred-location signal.
"""
  @gtk_places_sidebar_set_show_starred_location[None](widget, show_starred_location_pony)

fun set_show_trash(show_trash_pony: Bool): None =>
"""
Sets whether the @sidebar should show an item for the Trash location.
"""
  @gtk_places_sidebar_set_show_trash[None](widget, show_trash_pony)

