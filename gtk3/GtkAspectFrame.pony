/*
   needs: ["GObjectREF", "String", "F32", "Bool"]
provides: ["GtkAspectFrame"]
*/
class GtkAspectFrame is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create(label_pony: String, xalign_pony: F32, yalign_pony: F32, ratio_pony: F32, obey_child_pony: Bool) =>
    widget = @gtk_aspect_frame_new[GObjectREF](label_pony.cstring(), xalign_pony, yalign_pony, ratio_pony, obey_child_pony) //


/* set unavailable due to typing issues
 {:doh, %{argctype: "gfloat", argname: "xalign", argtype: "gfloat", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gfloat", argname: "yalign", argtype: "gfloat", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gfloat", argname: "ratio", argtype: "gfloat", paramtype: :param, txo: "none"}}
*/

