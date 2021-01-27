```````pony-full-source
/*
   needs: ["None", "I32", "GObjectREF"]
provides: ["GtkMisc"]
*/
use "../gobject"
class GtkMisc is GtkWidget
"""
The #GtkMisc widget is an abstract widget which is not useful itself, but
is used to derive subclasses which have alignment and padding attributes.

The horizontal and vertical padding attributes allows extra space to be
added around the widget.

The horizontal and vertical alignment attributes enable the widget to be
positioned within its allocated area. Note that if the widget is added to
a container in such a way that it expands automatically to fill its
allocated area, the alignment settings will not alter the widget's position.

Note that the desired effect can in most cases be achieved by using the
#GtkWidget:halign, #GtkWidget:valign and #GtkWidget:margin properties
on the child widget, so GtkMisc should not be used in new code. To reflect
this fact, all #GtkMisc API has been deprecated.
"""
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'




/* get_alignment unavailable due to typing issues
 {:doh, %{argctype: "gfloat*", argname: "xalign", argtype: "gfloat", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gfloat*", argname: "yalign", argtype: "gfloat", paramtype: :param, txo: "full"}}
*/

/* get_padding unavailable due to typing issues
 {:doh, %{argctype: "gint*", argname: "xpad", argtype: "gint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gint*", argname: "ypad", argtype: "gint", paramtype: :param, txo: "full"}}
*/

/* set_alignment unavailable due to typing issues
 {:doh, %{argctype: "gfloat", argname: "xalign", argtype: "gfloat", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gfloat", argname: "yalign", argtype: "gfloat", paramtype: :param, txo: "none"}}
*/

fun set_padding(xpad_pony: I32, ypad_pony: I32): None =>
"""
Sets the amount of space to add around the widget.
"""
  @gtk_misc_set_padding[None](widget, xpad_pony, ypad_pony)


```````