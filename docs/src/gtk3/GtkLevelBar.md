```````pony-full-source
/*
   needs: ["Bool", "None", "GObjectREF", "F64"]
provides: ["GtkLevelBar"]
*/
use "../gobject"
class GtkLevelBar is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create() =>
    widget = @gtk_level_bar_new[GObjectREF]() //

  new new_for_interval(min_value_pony: F64, max_value_pony: F64) =>
    widget = @gtk_level_bar_new_for_interval[GObjectREF](min_value_pony, max_value_pony) //


/* add_offset_value unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "value", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/

fun get_inverted(): Bool =>
"""
Return the value of the #GtkLevelBar:inverted property.
"""
  @gtk_level_bar_get_inverted[Bool](widget)

/* get_max_value unavailable due to return typing issues
{:argctype, "gdouble"}
{:argname, "rv"}
{:argtype, "gdouble"}
{:paramtype, :param}
{:txo, "none"} */

/* get_min_value unavailable due to return typing issues
{:argctype, "gdouble"}
{:argname, "rv"}
{:argtype, "gdouble"}
{:paramtype, :param}
{:txo, "none"} */

/* get_mode unavailable due to return typing issues
{:argctype, "GtkLevelBarMode"}
{:argname, "rv"}
{:argtype, "LevelBarMode"}
{:paramtype, :param}
{:txo, "none"} */

/* get_offset_value unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble*", argname: "value", argtype: "gdouble", paramtype: :param, txo: "full"}}
*/

/* get_value unavailable due to return typing issues
{:argctype, "gdouble"}
{:argname, "rv"}
{:argtype, "gdouble"}
{:paramtype, :param}
{:txo, "none"} */

/* remove_offset_value unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "name", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

fun set_inverted(inverted_pony: Bool): None =>
"""
Sets the value of the #GtkLevelBar:inverted property.
"""
  @gtk_level_bar_set_inverted[None](widget, inverted_pony)

/* set_max_value unavailable due to typing issues
 {:doh, %{argctype: "gdouble", argname: "value", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/

/* set_min_value unavailable due to typing issues
 {:doh, %{argctype: "gdouble", argname: "value", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/

/* set_mode unavailable due to typing issues
 {:doh, %{argctype: "GtkLevelBarMode", argname: "mode", argtype: "LevelBarMode", paramtype: :param, txo: "none"}}
*/

/* set_value unavailable due to typing issues
 {:doh, %{argctype: "gdouble", argname: "value", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/


```````