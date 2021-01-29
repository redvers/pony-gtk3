/*
   needs: ["GObjectREF"]
provides: ["GtkSearchEntry val"]
*/
use "../gobject"
class val GtkSearchEntry is GtkWidget
"""
#GtkSearchEntry is a subclass of #GtkEntry that has been
tailored for use as a search entry.

It will show an inactive symbolic “find” icon when the search
entry is empty, and a symbolic “clear” icon when there is text.
Clicking on the “clear” icon will empty the search entry.

Note that the search/clear icon is shown using a secondary
icon, and thus does not work if you are using the secondary
icon position for some other purpose.

To make filtering appear more reactive, it is a good idea to
not react to every change in the entry text immediately, but
only after a short delay. To support this, #GtkSearchEntry
emits the #GtkSearchEntry::search-changed signal which can
be used instead of the #GtkEditable::changed signal.

The #GtkSearchEntry::previous-match, #GtkSearchEntry::next-match
and #GtkSearchEntry::stop-search signals can be used to implement
moving between search results and ending the search.

Often, GtkSearchEntry will be fed events by means of being
placed inside a #GtkSearchBar. If that is not the case,
you can use gtk_search_entry_handle_event() to pass events.
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
    widget = @gtk_search_entry_new[GObjectREF]() //


/* handle_event unavailable due to typing issues
This function should be called when the top-level window
which contains the search entry received a key event. If
the entry is part of a #GtkSearchBar, it is preferable
to call gtk_search_bar_handle_event() instead, which will
reveal the entry in addition to passing the event to this
function.

If the key event is handled by the search entry and starts
or continues a search, %GDK_EVENT_STOP will be returned.
The caller should ensure that the entry is shown in this
case, and not propagate the event further.
{:doh, %{argctype: "GdkEvent*", argname: "event", argtype: "Gdk.Event", paramtype: :param, txo: "none"}}
*/

