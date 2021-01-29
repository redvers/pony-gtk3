# GtkPlacesSidebar
<span class="source-link">[[Source]](src/gtk3/GtkPlacesSidebar.md#L6)</span>

#GtkPlacesSidebar is a widget that displays a list of frequently-used places in the
file system:  the user’s home directory, the user’s bookmarks, and volumes and drives.
This widget is used as a sidebar in #GtkFileChooser and may be used by file managers
and similar programs.

The places sidebar displays drives and volumes, and will automatically mount
or unmount them when the user selects them.

Applications can hook to various signals in the places sidebar to customize
its behavior.  For example, they can add extra commands to the context menu
of the sidebar.

While bookmarks are completely in control of the user, the places sidebar also
allows individual applications to provide extra shortcut folders that are unique
to each application.  For example, a Paint program may want to add a shortcut
for a Clipart folder.  You can do this with gtk_places_sidebar_add_shortcut().

To make use of the places sidebar, an application at least needs to connect
to the #GtkPlacesSidebar::open-location signal.  This is emitted when the
user selects in the sidebar a location to open.  The application should also
call gtk_places_sidebar_set_location() when it changes the currently-viewed
location.

# CSS nodes

GtkPlacesSidebar uses a single CSS node with name placessidebar and style
class .sidebar.

Among the children of the places sidebar, the following style classes can
be used:
- .sidebar-new-bookmark-row for the 'Add new bookmark' row
- .sidebar-placeholder-row for a row that is a placeholder
- .has-open-popup when a popup is open for a row


```pony
class val GtkPlacesSidebar is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkPlacesSidebar.md#L46)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkPlacesSidebar val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkPlacesSidebar](gtk3-GtkPlacesSidebar.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkPlacesSidebar.md#L49)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkPlacesSidebar val^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkPlacesSidebar](gtk3-GtkPlacesSidebar.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkPlacesSidebar.md#L52)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkPlacesSidebar val^
```

#### Returns

* [GtkPlacesSidebar](gtk3-GtkPlacesSidebar.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkPlacesSidebar.md#L56)</span>


```pony
new val create()
: GtkPlacesSidebar val^
```

#### Returns

* [GtkPlacesSidebar](gtk3-GtkPlacesSidebar.md) val^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkPlacesSidebar.md#L42)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkPlacesSidebar.md#L44)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### pony_NOT_IMPLEMENTED_YET_add_shortcut
<span class="source-link">[[Source]](src/gtk3/GtkPlacesSidebar.md#L60)</span>


    Applications may want to present some folders in the places sidebar if
they could be immediately useful to users.  For example, a drawing
program could add a “/usr/share/clipart” location when the sidebar is
being used in an “Insert Clipart” dialog box.

This function adds the specified @location to a special place for immutable
shortcuts.  The shortcuts are application-specific; they are not shared
across applications, and they are not persistent.  If this function
is called multiple times with different locations, then they are added
to the sidebar’s list in the same order as the function is called.

    {:doh, %{argctype: "GFile*", argname: "location", argtype: "Gio.File", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_add_shortcut()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### get_local_only
<span class="source-link">[[Source]](src/gtk3/GtkPlacesSidebar.md#L77)</span>


Returns the value previously set with gtk_places_sidebar_set_local_only().


```pony
fun box get_local_only()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_location
<span class="source-link">[[Source]](src/gtk3/GtkPlacesSidebar.md#L83)</span>


    Gets the currently selected location in the @sidebar. This can be %NULL when
nothing is selected, for example, when gtk_places_sidebar_set_location() has
been called with a location that is not among the sidebar’s list of places to
show.

You can use this function to get the selection in the @sidebar.  Also, if you
connect to the #GtkPlacesSidebar::populate-popup signal, you can use this
function to get the location that is being referred to during the callbacks
for your menu items.

    {:argctype, "GFile*"}
{:argname, "rv"}
{:argtype, "Gio.File"}
{:paramtype, :param}
{:txo, "full"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_location()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_nth_bookmark
<span class="source-link">[[Source]](src/gtk3/GtkPlacesSidebar.md#L103)</span>


    This function queries the bookmarks added by the user to the places sidebar,
and returns one of them.  This function is used by #GtkFileChooser to implement
the “Alt-1”, “Alt-2”, etc. shortcuts, which activate the cooresponding bookmark.

    {:argctype, "GFile*"}
{:argname, "rv"}
{:argtype, "Gio.File"}
{:paramtype, :param}
{:txo, "full"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_nth_bookmark()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_open_flags
<span class="source-link">[[Source]](src/gtk3/GtkPlacesSidebar.md#L117)</span>


    Gets the open flags.

    {:argctype, "GtkPlacesOpenFlags"}
{:argname, "rv"}
{:argtype, "PlacesOpenFlags"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_open_flags()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### get_show_connect_to_server
<span class="source-link">[[Source]](src/gtk3/GtkPlacesSidebar.md#L129)</span>


Returns the value previously set with gtk_places_sidebar_set_show_connect_to_server()


```pony
fun box get_show_connect_to_server()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_show_desktop
<span class="source-link">[[Source]](src/gtk3/GtkPlacesSidebar.md#L135)</span>


Returns the value previously set with gtk_places_sidebar_set_show_desktop()


```pony
fun box get_show_desktop()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_show_enter_location
<span class="source-link">[[Source]](src/gtk3/GtkPlacesSidebar.md#L141)</span>


Returns the value previously set with gtk_places_sidebar_set_show_enter_location()


```pony
fun box get_show_enter_location()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_show_other_locations
<span class="source-link">[[Source]](src/gtk3/GtkPlacesSidebar.md#L147)</span>


Returns the value previously set with gtk_places_sidebar_set_show_other_locations()


```pony
fun box get_show_other_locations()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_show_recent
<span class="source-link">[[Source]](src/gtk3/GtkPlacesSidebar.md#L153)</span>


Returns the value previously set with gtk_places_sidebar_set_show_recent()


```pony
fun box get_show_recent()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_show_starred_location
<span class="source-link">[[Source]](src/gtk3/GtkPlacesSidebar.md#L159)</span>


Returns the value previously set with gtk_places_sidebar_set_show_starred_location()


```pony
fun box get_show_starred_location()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_show_trash
<span class="source-link">[[Source]](src/gtk3/GtkPlacesSidebar.md#L165)</span>


Returns the value previously set with gtk_places_sidebar_set_show_trash()


```pony
fun box get_show_trash()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### pony_NOT_IMPLEMENTED_YET_list_shortcuts
<span class="source-link">[[Source]](src/gtk3/GtkPlacesSidebar.md#L171)</span>


    Gets the list of shortcuts.

    {:argctype, "GSList*"}
{:argname, "rv"}
{:argtype, "GLib.SList"}
{:paramtype, :param}
{:txo, "full"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_list_shortcuts()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_remove_shortcut
<span class="source-link">[[Source]](src/gtk3/GtkPlacesSidebar.md#L183)</span>


    Removes an application-specific shortcut that has been previously been
inserted with gtk_places_sidebar_add_shortcut().  If the @location is not a
shortcut in the sidebar, then nothing is done.

    {:doh, %{argctype: "GFile*", argname: "location", argtype: "Gio.File", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_remove_shortcut()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_drop_targets_visible
<span class="source-link">[[Source]](src/gtk3/GtkPlacesSidebar.md#L193)</span>


    Make the GtkPlacesSidebar show drop targets, so it can show the available
drop targets and a "new bookmark" row. This improves the Drag-and-Drop
experience of the user and allows applications to show all available
drop targets at once.

This needs to be called when the application is aware of an ongoing drag
that might target the sidebar. The drop-targets-visible state will be unset
automatically if the drag finishes in the GtkPlacesSidebar. You only need
to unset the state when the drag ends on some other widget on your application.

    {:doh, %{argctype: "GdkDragContext*", argname: "context", argtype: "Gdk.DragContext", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_drop_targets_visible()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### set_local_only
<span class="source-link">[[Source]](src/gtk3/GtkPlacesSidebar.md#L209)</span>


Sets whether the @sidebar should only show local files.


```pony
fun box set_local_only(
  local_only_pony: Bool val)
: None val
```
#### Parameters

*   local_only_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_location
<span class="source-link">[[Source]](src/gtk3/GtkPlacesSidebar.md#L215)</span>


    Sets the location that is being shown in the widgets surrounding the
@sidebar, for example, in a folder view in a file manager.  In turn, the
@sidebar will highlight that location if it is being shown in the list of
places, or it will unhighlight everything if the @location is not among the
places in the list.

    {:doh, %{argctype: "GFile*", argname: "location", argtype: "Gio.File", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_location()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_open_flags
<span class="source-link">[[Source]](src/gtk3/GtkPlacesSidebar.md#L227)</span>


    Sets the way in which the calling application can open new locations from
the places sidebar.  For example, some applications only open locations
“directly” into their main view, while others may support opening locations
in a new notebook tab or a new window.

This function is used to tell the places @sidebar about the ways in which the
application can open new locations, so that the sidebar can display (or not)
the “Open in new tab” and “Open in new window” menu items as appropriate.

When the #GtkPlacesSidebar::open-location signal is emitted, its flags
argument will be set to one of the @flags that was passed in
gtk_places_sidebar_set_open_flags().

Passing 0 for @flags will cause #GTK_PLACES_OPEN_NORMAL to always be sent
to callbacks for the “open-location” signal.

    {:doh, %{argctype: "GtkPlacesOpenFlags", argname: "flags", argtype: "PlacesOpenFlags", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_open_flags()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### set_show_connect_to_server
<span class="source-link">[[Source]](src/gtk3/GtkPlacesSidebar.md#L249)</span>


Sets whether the @sidebar should show an item for connecting to a network server;
this is off by default. An application may want to turn this on if it implements
a way for the user to connect to network servers directly.

If you enable this, you should connect to the
#GtkPlacesSidebar::show-connect-to-server signal.


```pony
fun box set_show_connect_to_server(
  show_connect_to_server_pony: Bool val)
: None val
```
#### Parameters

*   show_connect_to_server_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_show_desktop
<span class="source-link">[[Source]](src/gtk3/GtkPlacesSidebar.md#L260)</span>


Sets whether the @sidebar should show an item for the Desktop folder.
The default value for this option is determined by the desktop
environment and the user’s configuration, but this function can be
used to override it on a per-application basis.


```pony
fun box set_show_desktop(
  show_desktop_pony: Bool val)
: None val
```
#### Parameters

*   show_desktop_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_show_enter_location
<span class="source-link">[[Source]](src/gtk3/GtkPlacesSidebar.md#L269)</span>


Sets whether the @sidebar should show an item for entering a location;
this is off by default. An application may want to turn this on if manually
entering URLs is an expected user action.

If you enable this, you should connect to the
#GtkPlacesSidebar::show-enter-location signal.


```pony
fun box set_show_enter_location(
  show_enter_location_pony: Bool val)
: None val
```
#### Parameters

*   show_enter_location_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_show_other_locations
<span class="source-link">[[Source]](src/gtk3/GtkPlacesSidebar.md#L280)</span>


Sets whether the @sidebar should show an item for the application to show
an Other Locations view; this is off by default. When set to %TRUE, persistent
devices such as hard drives are hidden, otherwise they are shown in the sidebar.
An application may want to turn this on if it implements a way for the user to
see and interact with drives and network servers directly.

If you enable this, you should connect to the
#GtkPlacesSidebar::show-other-locations signal.


```pony
fun box set_show_other_locations(
  show_other_locations_pony: Bool val)
: None val
```
#### Parameters

*   show_other_locations_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_show_recent
<span class="source-link">[[Source]](src/gtk3/GtkPlacesSidebar.md#L293)</span>


Sets whether the @sidebar should show an item for recent files.
The default value for this option is determined by the desktop
environment, but this function can be used to override it on a
per-application basis.


```pony
fun box set_show_recent(
  show_recent_pony: Bool val)
: None val
```
#### Parameters

*   show_recent_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_show_starred_location
<span class="source-link">[[Source]](src/gtk3/GtkPlacesSidebar.md#L302)</span>


If you enable this, you should connect to the
#GtkPlacesSidebar::show-starred-location signal.


```pony
fun box set_show_starred_location(
  show_starred_location_pony: Bool val)
: None val
```
#### Parameters

*   show_starred_location_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_show_trash
<span class="source-link">[[Source]](src/gtk3/GtkPlacesSidebar.md#L309)</span>


Sets whether the @sidebar should show an item for the Trash location.


```pony
fun box set_show_trash(
  show_trash_pony: Bool val)
: None val
```
#### Parameters

*   show_trash_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### show_all
<span class="source-link">[[Source]](src/gtk3/GtkWidget.md#L4)</span>


```pony
fun box show_all()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### destroy
<span class="source-link">[[Source]](src/gtk3/GtkWidget.md#L7)</span>


```pony
fun box destroy()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### signal_connect\[V: [Any](builtin-Any.md) #share\]
<span class="source-link">[[Source]](src/gtk3/GtkWidget.md#L10)</span>


```pony
fun box signal_connect[V: Any #share](
  detailed_signal: String val,
  c_handler: @{(GObjectREF, V)}[V] val,
  data: V)
: U64 val
```
#### Parameters

*   detailed_signal: [String](builtin-String.md) val
*   c_handler: @{(GObjectREF, V)}[V] val
*   data: V

#### Returns

* [U64](builtin-U64.md) val

---

