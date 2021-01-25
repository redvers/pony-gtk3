/*
   needs: ["None", "Bool", "I32", "GObjectREF", "String"]
provides: ["GtkTextTag"]
*/
class GtkTextTag is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create(name_pony: String) =>
    widget = @gtk_text_tag_new[GObjectREF](name_pony.cstring()) //


fun changed(size_changed_pony: Bool): None =>
  @gtk_text_tag_changed[None](widget, size_changed_pony)

/* event unavailable due to typing issues
 {:doh, %{argctype: "GObject*", argname: "event_object", argtype: "GObject.Object", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GdkEvent*", argname: "event", argtype: "Gdk.Event", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const GtkTextIter*", argname: "iter", argtype: "TextIter", paramtype: :param, txo: "none"}}
*/

fun get_priority(): I32 =>
  @gtk_text_tag_get_priority[I32](widget)

fun set_priority(priority_pony: I32): None =>
  @gtk_text_tag_set_priority[None](widget, priority_pony)

