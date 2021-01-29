```````pony-full-source
/*
   needs: ["Bool", "None", "GObjectREF"]
provides: ["GtkSearchBar val"]
*/
use "../gobject"
class val GtkSearchBar is GtkWidget
"""
#GtkSearchBar is a container made to have a search entry (possibly
with additional connex widgets, such as drop-down menus, or buttons)
built-in. The search bar would appear when a search is started through
typing on the keyboard, or the application’s search mode is toggled on.

For keyboard presses to start a search, events will need to be
forwarded from the top-level window that contains the search bar.
See gtk_search_bar_handle_event() for example code. Common shortcuts
such as Ctrl+F should be handled as an application action, or through
the menu items.

You will also need to tell the search bar about which entry you
are using as your search entry using gtk_search_bar_connect_entry().
The following example shows you how to create a more complex search
entry.

# CSS nodes

GtkSearchBar has a single CSS node with name searchbar.

## Creating a search bar

[A simple example](https://gitlab.gnome.org/GNOME/gtk/blob/gtk-3-24/examples/search-bar.c)
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
    widget = @gtk_search_bar_new[GObjectREF]() //


  fun pony_NOT_IMPLEMENTED_YET_connect_entry(): None =>
    """
    Connects the #GtkEntry widget passed as the one to be used in
this search bar. The entry should be a descendant of the search bar.
This is only required if the entry isn’t the direct child of the
search bar (as in our main example).

    {:doh, %{argctype: "GtkEntry*", argname: "entry", argtype: "Entry", paramtype: :param, txo: "none"}}
*/
    """

fun get_search_mode(): Bool =>
"""
Returns whether the search mode is on or off.
"""
  @gtk_search_bar_get_search_mode[Bool](widget)

fun get_show_close_button(): Bool =>
"""
Returns whether the close button is shown.
"""
  @gtk_search_bar_get_show_close_button[Bool](widget)

  fun pony_NOT_IMPLEMENTED_YET_handle_event(): None =>
    """
    This function should be called when the top-level
window which contains the search bar received a key event.

If the key event is handled by the search bar, the bar will
be shown, the entry populated with the entered text and %GDK_EVENT_STOP
will be returned. The caller should ensure that events are
not propagated further.

If no entry has been connected to the search bar, using
gtk_search_bar_connect_entry(), this function will return
immediately with a warning.

## Showing the search bar on key presses

|[<!-- language="C" -->
static gboolean
on_key_press_event (GtkWidget *widget,
                    GdkEvent  *event,
                    gpointer   user_data)
{
  GtkSearchBar *bar = GTK_SEARCH_BAR (user_data);
  return gtk_search_bar_handle_event (bar, event);
}

static void
create_toplevel (void)
{
  GtkWidget *window = gtk_window_new (GTK_WINDOW_TOPLEVEL);
  GtkWindow *search_bar = gtk_search_bar_new ();

 // Add more widgets to the window...

  g_signal_connect (window,
                   "key-press-event",
                    G_CALLBACK (on_key_press_event),
                    search_bar);
}
]|

    {:doh, %{argctype: "GdkEvent*", argname: "event", argtype: "Gdk.Event", paramtype: :param, txo: "none"}}
*/
    """

fun set_search_mode(search_mode_pony: Bool): None =>
"""
Switches the search mode on or off.
"""
  @gtk_search_bar_set_search_mode[None](widget, search_mode_pony)

fun set_show_close_button(visible_pony: Bool): None =>
"""
Shows or hides the close button. Applications that
already have a “search” toggle button should not show a close
button in their search bar, as it duplicates the role of the
toggle button.
"""
  @gtk_search_bar_set_show_close_button[None](widget, visible_pony)


```````