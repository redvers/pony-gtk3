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
class ref GtkPlacesSidebar is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkPlacesSidebar.md#L45)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkPlacesSidebar ref^
```

#### Returns

* [GtkPlacesSidebar](gtk3-GtkPlacesSidebar.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkPlacesSidebar.md#L48)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkPlacesSidebar ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkPlacesSidebar](gtk3-GtkPlacesSidebar.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkPlacesSidebar.md#L52)</span>


```pony
new ref create()
: GtkPlacesSidebar ref^
```

#### Returns

* [GtkPlacesSidebar](gtk3-GtkPlacesSidebar.md) ref^

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

### get_local_only
<span class="source-link">[[Source]](src/gtk3/GtkPlacesSidebar.md#L60)</span>


Returns the value previously set with gtk_places_sidebar_set_local_only().


```pony
fun box get_local_only()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_show_connect_to_server
<span class="source-link">[[Source]](src/gtk3/GtkPlacesSidebar.md#L87)</span>


Returns the value previously set with gtk_places_sidebar_set_show_connect_to_server()


```pony
fun box get_show_connect_to_server()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_show_desktop
<span class="source-link">[[Source]](src/gtk3/GtkPlacesSidebar.md#L93)</span>


Returns the value previously set with gtk_places_sidebar_set_show_desktop()


```pony
fun box get_show_desktop()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_show_enter_location
<span class="source-link">[[Source]](src/gtk3/GtkPlacesSidebar.md#L99)</span>


Returns the value previously set with gtk_places_sidebar_set_show_enter_location()


```pony
fun box get_show_enter_location()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_show_other_locations
<span class="source-link">[[Source]](src/gtk3/GtkPlacesSidebar.md#L105)</span>


Returns the value previously set with gtk_places_sidebar_set_show_other_locations()


```pony
fun box get_show_other_locations()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_show_recent
<span class="source-link">[[Source]](src/gtk3/GtkPlacesSidebar.md#L111)</span>


Returns the value previously set with gtk_places_sidebar_set_show_recent()


```pony
fun box get_show_recent()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_show_starred_location
<span class="source-link">[[Source]](src/gtk3/GtkPlacesSidebar.md#L117)</span>


Returns the value previously set with gtk_places_sidebar_set_show_starred_location()


```pony
fun box get_show_starred_location()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_show_trash
<span class="source-link">[[Source]](src/gtk3/GtkPlacesSidebar.md#L123)</span>


Returns the value previously set with gtk_places_sidebar_set_show_trash()


```pony
fun box get_show_trash()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### set_local_only
<span class="source-link">[[Source]](src/gtk3/GtkPlacesSidebar.md#L144)</span>


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

### set_show_connect_to_server
<span class="source-link">[[Source]](src/gtk3/GtkPlacesSidebar.md#L158)</span>


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
<span class="source-link">[[Source]](src/gtk3/GtkPlacesSidebar.md#L169)</span>


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
<span class="source-link">[[Source]](src/gtk3/GtkPlacesSidebar.md#L178)</span>


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
<span class="source-link">[[Source]](src/gtk3/GtkPlacesSidebar.md#L189)</span>


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
<span class="source-link">[[Source]](src/gtk3/GtkPlacesSidebar.md#L202)</span>


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
<span class="source-link">[[Source]](src/gtk3/GtkPlacesSidebar.md#L211)</span>


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
<span class="source-link">[[Source]](src/gtk3/GtkPlacesSidebar.md#L218)</span>


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

