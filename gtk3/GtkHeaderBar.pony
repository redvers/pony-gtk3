/*
   needs: ["GObjectREF", "GtkWidget val", "Pointer[U8 val] ref", "String", "Bool", "None"]
provides: ["GtkHeaderBar val"]
*/
use "../gobject"
class val GtkHeaderBar is GtkWidget
"""
GtkHeaderBar is similar to a horizontal #GtkBox. It allows children to
be placed at the start or the end. In addition, it allows a title and
subtitle to be displayed. The title will be centered with respect to
the width of the box, even if the children at either side take up
different amounts of space. The height of the titlebar will be
set to provide sufficient space for the subtitle, even if none is
currently set. If a subtitle is not needed, the space reservation
can be turned off with gtk_header_bar_set_has_subtitle().

GtkHeaderBar can add typical window frame controls, such as minimize,
maximize and close buttons, or the window icon.

For these reasons, GtkHeaderBar is the natural choice for use as the custom
titlebar widget of a #GtkWindow (see gtk_window_set_titlebar()), as it gives
features typical of titlebars while allowing the addition of child widgets.
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
    widget = @gtk_header_bar_new[GObjectREF]() //


/* Needs conversion code 
Retrieves the custom title widget of the header. See
gtk_header_bar_set_custom_title().
  fun get_custom_title(): GtkWidget val =>
    @gtk_header_bar_get_custom_title[GObjectREF](widget)
*/

fun get_decoration_layout(): String =>
"""
Gets the decoration layout set with
gtk_header_bar_set_decoration_layout().
"""
  var cstring_pony: Pointer[U8 val] ref = @gtk_header_bar_get_decoration_layout[Pointer[U8 val] ref](widget)
  var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

fun get_has_subtitle(): Bool =>
"""
Retrieves whether the header bar reserves space for
a subtitle, regardless if one is currently set or not.
"""
  @gtk_header_bar_get_has_subtitle[Bool](widget)

fun get_show_close_button(): Bool =>
"""
Returns whether this header bar shows the standard window
decorations.
"""
  @gtk_header_bar_get_show_close_button[Bool](widget)

fun get_subtitle(): String =>
"""
Retrieves the subtitle of the header. See gtk_header_bar_set_subtitle().
"""
  var cstring_pony: Pointer[U8 val] ref = @gtk_header_bar_get_subtitle[Pointer[U8 val] ref](widget)
  var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

fun get_title(): String =>
"""
Retrieves the title of the header. See gtk_header_bar_set_title().
"""
  var cstring_pony: Pointer[U8 val] ref = @gtk_header_bar_get_title[Pointer[U8 val] ref](widget)
  var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

fun pack_end(child_pony: GtkWidget val): None =>
"""
Adds @child to @bar, packed with reference to the
end of the @bar.
"""
  @gtk_header_bar_pack_end[None](widget, child_pony.gtkwidget())

fun pack_start(child_pony: GtkWidget val): None =>
"""
Adds @child to @bar, packed with reference to the
start of the @bar.
"""
  @gtk_header_bar_pack_start[None](widget, child_pony.gtkwidget())

fun set_custom_title(title_widget_pony: GtkWidget val): None =>
"""
Sets a custom title for the #GtkHeaderBar.

The title should help a user identify the current view. This
supersedes any title set by gtk_header_bar_set_title() or
gtk_header_bar_set_subtitle(). To achieve the same style as
the builtin title and subtitle, use the “title” and “subtitle”
style classes.

You should set the custom title to %NULL, for the header title
label to be visible again.
"""
  @gtk_header_bar_set_custom_title[None](widget, title_widget_pony.gtkwidget())

/* set_decoration_layout unavailable due to typing issues
Sets the decoration layout for this header bar, overriding
the #GtkSettings:gtk-decoration-layout setting.

There can be valid reasons for overriding the setting, such
as a header bar design that does not allow for buttons to take
room on the right, or only offers room for a single close button.
Split header bars are another example for overriding the
setting.

The format of the string is button names, separated by commas.
A colon separates the buttons that should appear on the left
from those on the right. Recognized button names are minimize,
maximize, close, icon (the window icon) and menu (a menu button
for the fallback app menu).

For example, “menu:minimize,maximize,close” specifies a menu
on the left, and minimize, maximize and close buttons on the right.
{:doh, %{argctype: "const gchar*", argname: "layout", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

fun set_has_subtitle(setting_pony: Bool): None =>
"""
Sets whether the header bar should reserve space
for a subtitle, even if none is currently set.
"""
  @gtk_header_bar_set_has_subtitle[None](widget, setting_pony)

fun set_show_close_button(setting_pony: Bool): None =>
"""
Sets whether this header bar shows the standard window decorations,
including close, maximize, and minimize.
"""
  @gtk_header_bar_set_show_close_button[None](widget, setting_pony)

/* set_subtitle unavailable due to typing issues
Sets the subtitle of the #GtkHeaderBar. The title should give a user
an additional detail to help him identify the current view.

Note that GtkHeaderBar by default reserves room for the subtitle,
even if none is currently set. If this is not desired, set the
#GtkHeaderBar:has-subtitle property to %FALSE.
{:doh, %{argctype: "const gchar*", argname: "subtitle", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* set_title unavailable due to typing issues
Sets the title of the #GtkHeaderBar. The title should help a user
identify the current view. A good title should not include the
application name.
{:doh, %{argctype: "const gchar*", argname: "title", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

