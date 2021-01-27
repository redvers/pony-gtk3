```````pony-full-source
/*
   needs: ["I32", "GObjectREF"]
provides: ["GtkTextTagTable"]
*/
use "../gobject"
class GtkTextTagTable is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create() =>
    widget = @gtk_text_tag_table_new[GObjectREF]() //


/* add unavailable due to typing issues
 {:doh, %{argctype: "GtkTextTag*", argname: "gtag", argtype: "TextTag", paramtype: :param, txo: "none"}}
*/

/* foreach unavailable due to typing issues
 {:doh, %{argctype: "GtkTextTagTableForeach", argname: "func", argtype: "TextTagTableForeach", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "data", argtype: "gpointer", paramtype: :param, txo: "none"}}
*/

fun get_size(): I32 =>
"""
Returns the size of the table (number of tags)
"""
  @gtk_text_tag_table_get_size[I32](widget)

/* lookup unavailable due to return typing issues
{:argctype, "GtkTextTag*"}
{:argname, "rv"}
{:argtype, "TextTag"}
{:paramtype, :param}
{:txo, "none"} */

/* remove unavailable due to typing issues
 {:doh, %{argctype: "GtkTextTag*", argname: "gtag", argtype: "TextTag", paramtype: :param, txo: "none"}}
*/


```````