/*
   needs: ["U32", "Bool", "GObjectREF", "String"]
provides: ["GtkAccelLabel"]
*/
class GtkAccelLabel is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create(string_pony: String) =>
    widget = @gtk_accel_label_new[GObjectREF](string_pony.cstring()) //


/* get_accel unavailable due to typing issues
 {:doh, %{argctype: "guint*", argname: "accelerator_key", argtype: "guint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "GdkModifierType*", argname: "accelerator_mods", argtype: "Gdk.ModifierType", paramtype: :param, txo: "full"}}
*/

/* get_accel_widget unavailable due to return typing issues
{:argctype, "GtkWidget*"}
{:argname, "rv"}
{:argtype, "Widget"}
{:paramtype, :param}
{:txo, "none"} */

fun get_accel_width(): U32 =>
  @gtk_accel_label_get_accel_width[U32](widget)

fun refetch(): Bool =>
  @gtk_accel_label_refetch[Bool](widget)

/* set_accel unavailable due to typing issues
 {:doh, %{argctype: "GdkModifierType", argname: "accelerator_mods", argtype: "Gdk.ModifierType", paramtype: :param, txo: "none"}}
*/

/* set_accel_closure unavailable due to typing issues
 {:doh, %{argctype: "GClosure*", argname: "accel_closure", argtype: "GObject.Closure", paramtype: :param, txo: "none"}}
*/

/* set_accel_widget unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "accel_widget", argtype: "Widget", paramtype: :param, txo: "none"}}
*/

