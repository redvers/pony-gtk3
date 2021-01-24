/*
   needs: ["Bool", "U32", "Pointer[U8 val] ref", "String", "None", "GObjectREF"]
provides: ["GtkStack"]
*/
class GtkStack is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF


  new create() =>
    widget = @gtk_stack_new[GObjectREF]() //


/* add_named unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "child", argtype: "Widget", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "name", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* add_titled unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "child", argtype: "Widget", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "title", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* get_child_by_name unavailable due to return typing issues
{:argctype, "GtkWidget*"}
{:argname, "rv"}
{:argtype, "Widget"}
{:paramtype, :param}
{:txo, "none"} */

fun get_hhomogeneous(): Bool =>
  @gtk_stack_get_hhomogeneous[Bool](widget)

fun get_homogeneous(): Bool =>
  @gtk_stack_get_homogeneous[Bool](widget)

fun get_interpolate_size(): Bool =>
  @gtk_stack_get_interpolate_size[Bool](widget)

fun get_transition_duration(): U32 =>
  @gtk_stack_get_transition_duration[U32](widget)

fun get_transition_running(): Bool =>
  @gtk_stack_get_transition_running[Bool](widget)

/* get_transition_type unavailable due to return typing issues
{:argctype, "GtkStackTransitionType"}
{:argname, "rv"}
{:argtype, "StackTransitionType"}
{:paramtype, :param}
{:txo, "none"} */

fun get_vhomogeneous(): Bool =>
  @gtk_stack_get_vhomogeneous[Bool](widget)

/* get_visible_child unavailable due to return typing issues
{:argctype, "GtkWidget*"}
{:argname, "rv"}
{:argtype, "Widget"}
{:paramtype, :param}
{:txo, "none"} */

fun get_visible_child_name(): String =>
  var cstring_pony: Pointer[U8 val] ref = @gtk_stack_get_visible_child_name[Pointer[U8 val] ref](widget)
var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

fun set_hhomogeneous(hhomogeneous_pony: Bool): None =>
  @gtk_stack_set_hhomogeneous[None](widget, hhomogeneous_pony)

fun set_homogeneous(homogeneous_pony: Bool): None =>
  @gtk_stack_set_homogeneous[None](widget, homogeneous_pony)

fun set_interpolate_size(interpolate_size_pony: Bool): None =>
  @gtk_stack_set_interpolate_size[None](widget, interpolate_size_pony)

fun set_transition_duration(duration_pony: U32): None =>
  @gtk_stack_set_transition_duration[None](widget, duration_pony)

/* set_transition_type unavailable due to typing issues
 {:doh, %{argctype: "GtkStackTransitionType", argname: "transition", argtype: "StackTransitionType", paramtype: :param, txo: "none"}}
*/

fun set_vhomogeneous(vhomogeneous_pony: Bool): None =>
  @gtk_stack_set_vhomogeneous[None](widget, vhomogeneous_pony)

/* set_visible_child unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "child", argtype: "Widget", paramtype: :param, txo: "none"}}
*/

/* set_visible_child_full unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkStackTransitionType", argname: "transition", argtype: "StackTransitionType", paramtype: :param, txo: "none"}}
*/

/* set_visible_child_name unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "name", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

