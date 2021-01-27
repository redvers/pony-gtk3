/*
   needs: ["Bool", "U32", "Pointer[U8 val] ref", "String", "None", "GObjectREF"]
provides: ["GtkStack"]
*/
use "../gobject"
class GtkStack is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


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
"""
Gets whether @stack is horizontally homogeneous.
See gtk_stack_set_hhomogeneous().
"""
  @gtk_stack_get_hhomogeneous[Bool](widget)

fun get_homogeneous(): Bool =>
"""
Gets whether @stack is homogeneous.
See gtk_stack_set_homogeneous().
"""
  @gtk_stack_get_homogeneous[Bool](widget)

fun get_interpolate_size(): Bool =>
"""
Returns wether the #GtkStack is set up to interpolate between
the sizes of children on page switch.
"""
  @gtk_stack_get_interpolate_size[Bool](widget)

fun get_transition_duration(): U32 =>
"""
Returns the amount of time (in milliseconds) that
transitions between pages in @stack will take.
"""
  @gtk_stack_get_transition_duration[U32](widget)

fun get_transition_running(): Bool =>
"""
Returns whether the @stack is currently in a transition from one page to
another.
"""
  @gtk_stack_get_transition_running[Bool](widget)

/* get_transition_type unavailable due to return typing issues
{:argctype, "GtkStackTransitionType"}
{:argname, "rv"}
{:argtype, "StackTransitionType"}
{:paramtype, :param}
{:txo, "none"} */

fun get_vhomogeneous(): Bool =>
"""
Gets whether @stack is vertically homogeneous.
See gtk_stack_set_vhomogeneous().
"""
  @gtk_stack_get_vhomogeneous[Bool](widget)

/* get_visible_child unavailable due to return typing issues
{:argctype, "GtkWidget*"}
{:argname, "rv"}
{:argtype, "Widget"}
{:paramtype, :param}
{:txo, "none"} */

fun get_visible_child_name(): String =>
"""
Returns the name of the currently visible child of @stack, or
%NULL if there is no visible child.
"""
  var cstring_pony: Pointer[U8 val] ref = @gtk_stack_get_visible_child_name[Pointer[U8 val] ref](widget)
var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

fun set_hhomogeneous(hhomogeneous_pony: Bool): None =>
"""
Sets the #GtkStack to be horizontally homogeneous or not.
If it is homogeneous, the #GtkStack will request the same
width for all its children. If it isn't, the stack
may change width when a different child becomes visible.
"""
  @gtk_stack_set_hhomogeneous[None](widget, hhomogeneous_pony)

fun set_homogeneous(homogeneous_pony: Bool): None =>
"""
Sets the #GtkStack to be homogeneous or not. If it
is homogeneous, the #GtkStack will request the same
size for all its children. If it isn't, the stack
may change size when a different child becomes visible.

Since 3.16, homogeneity can be controlled separately
for horizontal and vertical size, with the
#GtkStack:hhomogeneous and #GtkStack:vhomogeneous.
"""
  @gtk_stack_set_homogeneous[None](widget, homogeneous_pony)

fun set_interpolate_size(interpolate_size_pony: Bool): None =>
"""
Sets whether or not @stack will interpolate its size when
changing the visible child. If the #GtkStack:interpolate-size
property is set to %TRUE, @stack will interpolate its size between
the current one and the one it'll take after changing the
visible child, according to the set transition duration.
"""
  @gtk_stack_set_interpolate_size[None](widget, interpolate_size_pony)

fun set_transition_duration(duration_pony: U32): None =>
"""
Sets the duration that transitions between pages in @stack
will take.
"""
  @gtk_stack_set_transition_duration[None](widget, duration_pony)

/* set_transition_type unavailable due to typing issues
 {:doh, %{argctype: "GtkStackTransitionType", argname: "transition", argtype: "StackTransitionType", paramtype: :param, txo: "none"}}
*/

fun set_vhomogeneous(vhomogeneous_pony: Bool): None =>
"""
Sets the #GtkStack to be vertically homogeneous or not.
If it is homogeneous, the #GtkStack will request the same
height for all its children. If it isn't, the stack
may change height when a different child becomes visible.
"""
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

