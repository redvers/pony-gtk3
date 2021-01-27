```````pony-full-source
/*
   needs: ["Pointer[U8 val] ref", "String", "Bool", "None", "GObjectREF"]
provides: ["GtkLinkButton"]
*/
use "../gobject"
class GtkLinkButton is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create(uri_pony: String) =>
    widget = @gtk_link_button_new[GObjectREF](uri_pony.cstring()) //

  new new_with_label(uri_pony: String, label_pony: String) =>
    widget = @gtk_link_button_new_with_label[GObjectREF](uri_pony.cstring(), label_pony.cstring()) //


fun get_uri(): String =>
"""
Retrieves the URI set using gtk_link_button_set_uri().
"""
  var cstring_pony: Pointer[U8 val] ref = @gtk_link_button_get_uri[Pointer[U8 val] ref](widget)
var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

fun get_visited(): Bool =>
"""
Retrieves the “visited” state of the URI where the #GtkLinkButton
points. The button becomes visited when it is clicked. If the URI
is changed on the button, the “visited” state is unset again.

The state may also be changed using gtk_link_button_set_visited().
"""
  @gtk_link_button_get_visited[Bool](widget)

/* set_uri unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "uri", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

fun set_visited(visited_pony: Bool): None =>
"""
Sets the “visited” state of the URI where the #GtkLinkButton
points.  See gtk_link_button_get_visited() for more details.
"""
  @gtk_link_button_set_visited[None](widget, visited_pony)


```````