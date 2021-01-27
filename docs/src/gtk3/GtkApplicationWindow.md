```````pony-full-source
/*
   needs: ["U32", "Bool", "None", "GObjectREF", "GtkApplication"]
provides: ["GtkApplicationWindow"]
*/
use "../gobject"
class GtkApplicationWindow is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create(application_pony: GtkApplication) =>
    widget = @gtk_application_window_new[GObjectREF](application_pony.gtkwidget()) //


/* get_help_overlay unavailable due to return typing issues
{:argctype, "GtkShortcutsWindow*"}
{:argname, "rv"}
{:argtype, "ShortcutsWindow"}
{:paramtype, :param}
{:txo, "none"} */

fun get_id(): U32 =>
"""
Returns the unique ID of the window. If the window has not yet been added to
a #GtkApplication, returns `0`.
"""
  @gtk_application_window_get_id[U32](widget)

fun get_show_menubar(): Bool =>
"""
Returns whether the window will display a menubar for the app menu
and menubar as needed.
"""
  @gtk_application_window_get_show_menubar[Bool](widget)

/* set_help_overlay unavailable due to typing issues
 {:doh, %{argctype: "GtkShortcutsWindow*", argname: "help_overlay", argtype: "ShortcutsWindow", paramtype: :param, txo: "none"}}
*/

fun set_show_menubar(show_menubar_pony: Bool): None =>
"""
Sets whether the window will display a menubar for the app menu
and menubar as needed.
"""
  @gtk_application_window_set_show_menubar[None](widget, show_menubar_pony)


```````