/*
   needs: ["None", "I32", "GObjectREF"]
provides: ["GtkComboBoxText"]
*/
class GtkComboBoxText is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF


  new create() =>
    widget = @gtk_combo_box_text_new[GObjectREF]() //

  new new_with_entry() =>
    widget = @gtk_combo_box_text_new_with_entry[GObjectREF]() //


/* append unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "id", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "text", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* append_text unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "text", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* get_active_text unavailable due to return typing issues
{:argctype, "gchar*"}
{:argname, "rv"}
{:argtype, "utf8"}
{:paramtype, :param}
{:txo, "full"} */

/* insert unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "id", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "text", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* insert_text unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "text", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* prepend unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "id", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "text", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* prepend_text unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "text", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

fun remove(position_pony: I32): None =>
  @gtk_combo_box_text_remove[None](widget, position_pony)

fun remove_all(): None =>
  @gtk_combo_box_text_remove_all[None](widget)

