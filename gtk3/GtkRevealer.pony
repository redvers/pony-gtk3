/*
   needs: ["Bool", "U32", "None", "GObjectREF"]
provides: ["GtkRevealer"]
*/
class GtkRevealer is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create() =>
    widget = @gtk_revealer_new[GObjectREF]() //


fun get_child_revealed(): Bool =>
  @gtk_revealer_get_child_revealed[Bool](widget)

fun get_reveal_child(): Bool =>
  @gtk_revealer_get_reveal_child[Bool](widget)

fun get_transition_duration(): U32 =>
  @gtk_revealer_get_transition_duration[U32](widget)

/* get_transition_type unavailable due to return typing issues
{:argctype, "GtkRevealerTransitionType"}
{:argname, "rv"}
{:argtype, "RevealerTransitionType"}
{:paramtype, :param}
{:txo, "none"} */

fun set_reveal_child(reveal_child_pony: Bool): None =>
  @gtk_revealer_set_reveal_child[None](widget, reveal_child_pony)

fun set_transition_duration(duration_pony: U32): None =>
  @gtk_revealer_set_transition_duration[None](widget, duration_pony)

/* set_transition_type unavailable due to typing issues
 {:doh, %{argctype: "GtkRevealerTransitionType", argname: "transition", argtype: "RevealerTransitionType", paramtype: :param, txo: "none"}}
*/

