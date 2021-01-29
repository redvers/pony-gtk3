# GtkRecentFilter
<span class="source-link">[[Source]](src/gtk3/GtkRecentFilter.md#L6)</span>

A #GtkRecentFilter can be used to restrict the files being shown
in a #GtkRecentChooser.  Files can be filtered based on their name
(with gtk_recent_filter_add_pattern()), on their mime type (with
gtk_file_filter_add_mime_type()), on the application that has
registered them (with gtk_recent_filter_add_application()), or by
a custom filter function (with gtk_recent_filter_add_custom()).

Filtering by mime type handles aliasing and subclassing of mime
types; e.g. a filter for text/plain also matches a file with mime
type application/rtf, since application/rtf is a subclass of text/plain.
Note that #GtkRecentFilter allows wildcards for the subtype of a
mime type, so you can e.g. filter for image/\*.

Normally, filters are used by adding them to a #GtkRecentChooser,
see gtk_recent_chooser_add_filter(), but it is also possible to
manually use a filter on a file with gtk_recent_filter_filter().

Recently used files are supported since GTK+ 2.10.

## GtkRecentFilter as GtkBuildable

The GtkRecentFilter implementation of the GtkBuildable interface
supports adding rules using the <mime-types>, <patterns> and
<applications> elements and listing the rules within. Specifying
a <mime-type>, <pattern> or <application> has the same effect as
calling gtk_recent_filter_add_mime_type(),
gtk_recent_filter_add_pattern() or gtk_recent_filter_add_application().

An example of a UI definition fragment specifying GtkRecentFilter rules:
|[
<object class="GtkRecentFilter">
  <mime-types>
    <mime-type>text/plain</mime-type>
    <mime-type>image/png</mime-type>
  </mime-types>
  <patterns>
    <pattern>*.txt</pattern>
    <pattern>*.png</pattern>
  </patterns>
  <applications>
    <application>gimp</application>
    <application>gedit</application>
    <application>glade</application>
  </applications>
</object>
]|


```pony
class val GtkRecentFilter is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkRecentFilter.md#L59)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkRecentFilter val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkRecentFilter](gtk3-GtkRecentFilter.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkRecentFilter.md#L62)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkRecentFilter val^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkRecentFilter](gtk3-GtkRecentFilter.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkRecentFilter.md#L65)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkRecentFilter val^
```

#### Returns

* [GtkRecentFilter](gtk3-GtkRecentFilter.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkRecentFilter.md#L69)</span>


```pony
new val create()
: GtkRecentFilter val^
```

#### Returns

* [GtkRecentFilter](gtk3-GtkRecentFilter.md) val^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkRecentFilter.md#L55)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkRecentFilter.md#L57)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### add_age
<span class="source-link">[[Source]](src/gtk3/GtkRecentFilter.md#L73)</span>


Adds a rule that allows resources based on their age - that is, the number
of days elapsed since they were last modified.


```pony
fun box add_age(
  days_pony: I32 val)
: None val
```
#### Parameters

*   days_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_add_application
<span class="source-link">[[Source]](src/gtk3/GtkRecentFilter.md#L80)</span>


    Adds a rule that allows resources based on the name of the application
that has registered them.

    {:doh, %{argctype: "const gchar*", argname: "application", argtype: "utf8", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_add_application()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_add_custom
<span class="source-link">[[Source]](src/gtk3/GtkRecentFilter.md#L89)</span>


    Adds a rule to a filter that allows resources based on a custom callback
function. The bitfield @needed which is passed in provides information
about what sorts of information that the filter function needs;
this allows GTK+ to avoid retrieving expensive information when
it isn’t needed by the filter.

    {:doh, %{argctype: "GtkRecentFilterFlags", argname: "needed", argtype: "RecentFilterFlags", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkRecentFilterFunc", argname: "func", argtype: "RecentFilterFunc", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "data", argtype: "gpointer", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GDestroyNotify", argname: "data_destroy", argtype: "GLib.DestroyNotify", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_add_custom()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_add_group
<span class="source-link">[[Source]](src/gtk3/GtkRecentFilter.md#L104)</span>


    Adds a rule that allows resources based on the name of the group
to which they belong

    {:doh, %{argctype: "const gchar*", argname: "group", argtype: "utf8", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_add_group()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_add_mime_type
<span class="source-link">[[Source]](src/gtk3/GtkRecentFilter.md#L113)</span>


    Adds a rule that allows resources based on their registered MIME type.

    {:doh, %{argctype: "const gchar*", argname: "mime_type", argtype: "utf8", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_add_mime_type()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_add_pattern
<span class="source-link">[[Source]](src/gtk3/GtkRecentFilter.md#L121)</span>


    Adds a rule that allows resources based on a pattern matching their
display name.

    {:doh, %{argctype: "const gchar*", argname: "pattern", argtype: "utf8", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_add_pattern()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### add_pixbuf_formats
<span class="source-link">[[Source]](src/gtk3/GtkRecentFilter.md#L130)</span>


Adds a rule allowing image files in the formats supported
by GdkPixbuf.


```pony
fun box add_pixbuf_formats()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_filter
<span class="source-link">[[Source]](src/gtk3/GtkRecentFilter.md#L137)</span>


    Tests whether a file should be displayed according to @filter.
The #GtkRecentFilterInfo @filter_info should include
the fields returned from gtk_recent_filter_get_needed(), and
must set the #GtkRecentFilterInfo.contains field of @filter_info
to indicate which fields have been set.

This function will not typically be used by applications; it
is intended principally for use in the implementation of
#GtkRecentChooser.

    {:doh, %{argctype: "const GtkRecentFilterInfo*", argname: "filter_info", argtype: "RecentFilterInfo", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_filter()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### get_name
<span class="source-link">[[Source]](src/gtk3/GtkRecentFilter.md#L153)</span>


Gets the human-readable name for the filter.
See gtk_recent_filter_set_name().


```pony
fun box get_name()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_needed
<span class="source-link">[[Source]](src/gtk3/GtkRecentFilter.md#L162)</span>


    Gets the fields that need to be filled in for the #GtkRecentFilterInfo
passed to gtk_recent_filter_filter()

This function will not typically be used by applications; it
is intended principally for use in the implementation of
#GtkRecentChooser.

    {:argctype, "GtkRecentFilterFlags"}
{:argname, "rv"}
{:argtype, "RecentFilterFlags"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_needed()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_name
<span class="source-link">[[Source]](src/gtk3/GtkRecentFilter.md#L179)</span>


    Sets the human-readable name of the filter; this is the string
that will be displayed in the recently used resources selector
user interface if there is a selectable list of filters.

    {:doh, %{argctype: "const gchar*", argname: "name", argtype: "utf8", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_name()
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

