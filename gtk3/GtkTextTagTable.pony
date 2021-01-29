/*
   needs: ["I32", "GObjectREF"]
provides: ["GtkTextTagTable val"]
*/
use "../gobject"
class val GtkTextTagTable is GtkWidget
"""
You may wish to begin by reading the
[text widget conceptual overview][TextWidget]
which gives an overview of all the objects and
data types related to the text widget and how they work together.

# GtkTextTagTables as GtkBuildable

The GtkTextTagTable implementation of the GtkBuildable interface
supports adding tags by specifying “tag” as the “type” attribute
of a <child> element.

An example of a UI definition fragment specifying tags:
|[
<object class="GtkTextTagTable">
 <child type="tag">
   <object class="GtkTextTag"/>
 </child>
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
    widget = @gtk_text_tag_table_new[GObjectREF]() //


/* add unavailable due to typing issues
Add a tag to the table. The tag is assigned the highest priority
in the table.

@tag must not be in a tag table already, and may not have
the same name as an already-added tag.
{:doh, %{argctype: "GtkTextTag*", argname: "gtag", argtype: "TextTag", paramtype: :param, txo: "none"}}
*/

/* foreach unavailable due to typing issues
Calls @func on each tag in @table, with user data @data.
Note that the table may not be modified while iterating
over it (you can’t add/remove tags).
{:doh, %{argctype: "GtkTextTagTableForeach", argname: "func", argtype: "TextTagTableForeach", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "data", argtype: "gpointer", paramtype: :param, txo: "none"}}
*/

fun get_size(): I32 =>
"""
Returns the size of the table (number of tags)
"""
  @gtk_text_tag_table_get_size[I32](widget)

/* lookup unavailable due to return typing issues
Look up a named tag.
{:argctype, "GtkTextTag*"}
{:argname, "rv"}
{:argtype, "TextTag"}
{:paramtype, :param}
{:txo, "none"} */

/* remove unavailable due to typing issues
Remove a tag from the table. If a #GtkTextBuffer has @table as its tag table,
the tag is removed from the buffer. The table’s reference to the tag is
removed, so the tag will end up destroyed if you don’t have a reference to
it.
{:doh, %{argctype: "GtkTextTag*", argname: "gtag", argtype: "TextTag", paramtype: :param, txo: "none"}}
*/

