/*
   needs: ["None", "I32", "Pointer[U8 val] ref", "String", "GObjectREF"]
provides: ["GtkRecentFilter val"]
*/
use "../gobject"
class val GtkRecentFilter is GtkWidget
"""
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
"""
  var widget: GObjectREF val

  fun gtkwidget(): GObjectREF val => widget

  new val create_from_GtkBuilder(gtkbuilder: GtkBuilder, glade_id: String) =>
    widget = @gtk_builder_get_object[GObjectREF](gtkbuilder.gtkwidget(), glade_id.cstring())

  new val create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'

  new val never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF


  new val create() =>
    widget = @gtk_recent_filter_new[GObjectREF]() //


fun add_age(days_pony: I32): None =>
"""
Adds a rule that allows resources based on their age - that is, the number
of days elapsed since they were last modified.
"""
  @gtk_recent_filter_add_age[None](widget, days_pony)

/* add_application unavailable due to typing issues
Adds a rule that allows resources based on the name of the application
that has registered them.
{:doh, %{argctype: "const gchar*", argname: "application", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* add_custom unavailable due to typing issues
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

/* add_group unavailable due to typing issues
Adds a rule that allows resources based on the name of the group
to which they belong
{:doh, %{argctype: "const gchar*", argname: "group", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* add_mime_type unavailable due to typing issues
Adds a rule that allows resources based on their registered MIME type.
{:doh, %{argctype: "const gchar*", argname: "mime_type", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* add_pattern unavailable due to typing issues
Adds a rule that allows resources based on a pattern matching their
display name.
{:doh, %{argctype: "const gchar*", argname: "pattern", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

fun add_pixbuf_formats(): None =>
"""
Adds a rule allowing image files in the formats supported
by GdkPixbuf.
"""
  @gtk_recent_filter_add_pixbuf_formats[None](widget)

/* filter unavailable due to typing issues
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

fun get_name(): String =>
"""
Gets the human-readable name for the filter.
See gtk_recent_filter_set_name().
"""
  var cstring_pony: Pointer[U8 val] ref = @gtk_recent_filter_get_name[Pointer[U8 val] ref](widget)
  var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

/* get_needed unavailable due to return typing issues
Gets the fields that need to be filled in for the #GtkRecentFilterInfo
passed to gtk_recent_filter_filter()

This function will not typically be used by applications; it
is intended principally for use in the implementation of
#GtkRecentChooser.
{:argctype, "GtkRecentFilterFlags"}
{:argname, "rv"}
{:argtype, "RecentFilterFlags"}
{:paramtype, :param}
{:txo, "none"} */

/* set_name unavailable due to typing issues
Sets the human-readable name of the filter; this is the string
that will be displayed in the recently used resources selector
user interface if there is a selectable list of filters.
{:doh, %{argctype: "const gchar*", argname: "name", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

