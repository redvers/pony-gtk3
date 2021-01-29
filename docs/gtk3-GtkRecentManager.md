# GtkRecentManager
<span class="source-link">[[Source]](src/gtk3/GtkRecentManager.md#L6)</span>

#GtkRecentManager provides a facility for adding, removing and
looking up recently used files. Each recently used file is
identified by its URI, and has meta-data associated to it, like
the names and command lines of the applications that have
registered it, the number of time each application has registered
the same file, the mime type of the file and whether the file
should be displayed only by the applications that have
registered it.

The recently used files list is per user.

The #GtkRecentManager acts like a database of all the recently
used files. You can create new #GtkRecentManager objects, but
it is more efficient to use the default manager created by GTK+.

Adding a new recently used file is as simple as:

|[<!-- language="C" -->
GtkRecentManager *manager;

manager = gtk_recent_manager_get_default ();
gtk_recent_manager_add_item (manager, file_uri);
]|

The #GtkRecentManager will try to gather all the needed information
from the file itself through GIO.

Looking up the meta-data associated with a recently used file
given its URI requires calling gtk_recent_manager_lookup_item():

|[<!-- language="C" -->
GtkRecentManager *manager;
GtkRecentInfo *info;
GError *error = NULL;

manager = gtk_recent_manager_get_default ();
info = gtk_recent_manager_lookup_item (manager, file_uri, &error);
if (error)
  {
    g_warning ("Could not find the file: %s", error->message);
    g_error_free (error);
  }
else
 {
   // Use the info object
   gtk_recent_info_unref (info);
 }
]|

In order to retrieve the list of recently used files, you can use
gtk_recent_manager_get_items(), which returns a list of #GtkRecentInfo-structs.

A #GtkRecentManager is the model used to populate the contents of
one, or more #GtkRecentChooser implementations.

Note that the maximum age of the recently used files list is
controllable through the #GtkSettings:gtk-recent-files-max-age
property.

Recently used files are supported since GTK+ 2.10.


```pony
class val GtkRecentManager is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkRecentManager.md#L73)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkRecentManager val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkRecentManager](gtk3-GtkRecentManager.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkRecentManager.md#L76)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkRecentManager val^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkRecentManager](gtk3-GtkRecentManager.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkRecentManager.md#L79)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkRecentManager val^
```

#### Returns

* [GtkRecentManager](gtk3-GtkRecentManager.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkRecentManager.md#L83)</span>


```pony
new val create()
: GtkRecentManager val^
```

#### Returns

* [GtkRecentManager](gtk3-GtkRecentManager.md) val^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkRecentManager.md#L69)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkRecentManager.md#L71)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### pony_NOT_IMPLEMENTED_YET_add_full
<span class="source-link">[[Source]](src/gtk3/GtkRecentManager.md#L87)</span>


    Adds a new resource, pointed by @uri, into the recently used
resources list, using the metadata specified inside the
#GtkRecentData-struct passed in @recent_data.

The passed URI will be used to identify this resource inside the
list.

In order to register the new recently used resource, metadata about
the resource must be passed as well as the URI; the metadata is
stored in a #GtkRecentData-struct, which must contain the MIME
type of the resource pointed by the URI; the name of the application
that is registering the item, and a command line to be used when
launching the item.

Optionally, a #GtkRecentData-struct might contain a UTF-8 string
to be used when viewing the item instead of the last component of
the URI; a short description of the item; whether the item should
be considered private - that is, should be displayed only by the
applications that have registered it.

    {:doh, %{argctype: "const gchar*", argname: "uri", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const GtkRecentData*", argname: "recent_data", argtype: "RecentData", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_add_full()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_add_item
<span class="source-link">[[Source]](src/gtk3/GtkRecentManager.md#L114)</span>


    Adds a new resource, pointed by @uri, into the recently used
resources list.

This function automatically retrieves some of the needed
metadata and setting other metadata to common default values;
it then feeds the data to gtk_recent_manager_add_full().

See gtk_recent_manager_add_full() if you want to explicitly
define the metadata for the resource pointed by @uri.

    {:doh, %{argctype: "const gchar*", argname: "uri", argtype: "utf8", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_add_item()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_items
<span class="source-link">[[Source]](src/gtk3/GtkRecentManager.md#L130)</span>


    Gets the list of recently used resources.

    {:argctype, "GList*"}
{:argname, "rv"}
{:argtype, "GLib.List"}
{:paramtype, :param}
{:txo, "full"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_items()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_has_item
<span class="source-link">[[Source]](src/gtk3/GtkRecentManager.md#L142)</span>


    Checks whether there is a recently used resource registered
with @uri inside the recent manager.

    {:doh, %{argctype: "const gchar*", argname: "uri", argtype: "utf8", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_has_item()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_lookup_item
<span class="source-link">[[Source]](src/gtk3/GtkRecentManager.md#L151)</span>


    Searches for a URI inside the recently used resources list, and
returns a #GtkRecentInfo-struct containing informations about the resource
like its MIME type, or its display name.

    {:argctype, "GtkRecentInfo*"}
{:argname, "rv"}
{:argtype, "RecentInfo"}
{:paramtype, :param}
{:txo, "full"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_lookup_item()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_move_item
<span class="source-link">[[Source]](src/gtk3/GtkRecentManager.md#L165)</span>


    Changes the location of a recently used resource from @uri to @new_uri.

Please note that this function will not affect the resource pointed
by the URIs, but only the URI used in the recently used resources list.

    {:doh, %{argctype: "const gchar*", argname: "uri", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "new_uri", argtype: "utf8", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_move_item()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### purge_items
<span class="source-link">[[Source]](src/gtk3/GtkRecentManager.md#L177)</span>


Purges every item from the recently used resources list.


```pony
fun box purge_items()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### pony_NOT_IMPLEMENTED_YET_remove_item
<span class="source-link">[[Source]](src/gtk3/GtkRecentManager.md#L183)</span>


    Removes a resource pointed by @uri from the recently used resources
list handled by a recent manager.

    {:doh, %{argctype: "const gchar*", argname: "uri", argtype: "utf8", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_remove_item()
: None val
```

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

