/*
   needs: ["None", "U32", "GObjectREF", "F32"]
provides: ["GtkAlignment"]
*/
class GtkAlignment is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF


  new create(xalign_pony: F32, yalign_pony: F32, xscale_pony: F32, yscale_pony: F32) =>
    widget = @gtk_alignment_new[GObjectREF](xalign_pony, yalign_pony, xscale_pony, yscale_pony) //


/* get_padding unavailable due to typing issues
 {:doh, %{argctype: "guint*", argname: "padding_top", argtype: "guint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "guint*", argname: "padding_bottom", argtype: "guint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "guint*", argname: "padding_left", argtype: "guint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "guint*", argname: "padding_right", argtype: "guint", paramtype: :param, txo: "full"}}
*/

/* set unavailable due to typing issues
 {:doh, %{argctype: "gfloat", argname: "xalign", argtype: "gfloat", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gfloat", argname: "yalign", argtype: "gfloat", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gfloat", argname: "xscale", argtype: "gfloat", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gfloat", argname: "yscale", argtype: "gfloat", paramtype: :param, txo: "none"}}
*/

fun set_padding(padding_top_pony: U32, padding_bottom_pony: U32, padding_left_pony: U32, padding_right_pony: U32): None =>
  @gtk_alignment_set_padding[None](widget, padding_top_pony, padding_bottom_pony, padding_left_pony, padding_right_pony)

