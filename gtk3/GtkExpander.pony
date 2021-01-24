/*
   needs: ["Bool", "Pointer[U8 val] ref", "String", "I32", "None", "GObjectREF"]
provides: ["GtkExpander"]
*/
class GtkExpander is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF


  new create(label_pony: String) =>
    widget = @gtk_expander_new[GObjectREF](label_pony.cstring()) //

  new new_with_mnemonic(label_pony: String) =>
    widget = @gtk_expander_new_with_mnemonic[GObjectREF](label_pony.cstring()) //


fun get_expanded(): Bool =>
  @gtk_expander_get_expanded[Bool](widget)

fun get_label(): String =>
  var cstring_pony: Pointer[U8 val] ref = @gtk_expander_get_label[Pointer[U8 val] ref](widget)
var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

fun get_label_fill(): Bool =>
  @gtk_expander_get_label_fill[Bool](widget)

/* get_label_widget unavailable due to return typing issues
{:argctype, "GtkWidget*"}
{:argname, "rv"}
{:argtype, "Widget"}
{:paramtype, :param}
{:txo, "none"} */

fun get_resize_toplevel(): Bool =>
  @gtk_expander_get_resize_toplevel[Bool](widget)

fun get_spacing(): I32 =>
  @gtk_expander_get_spacing[I32](widget)

fun get_use_markup(): Bool =>
  @gtk_expander_get_use_markup[Bool](widget)

fun get_use_underline(): Bool =>
  @gtk_expander_get_use_underline[Bool](widget)

fun set_expanded(expanded_pony: Bool): None =>
  @gtk_expander_set_expanded[None](widget, expanded_pony)

/* set_label unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "label", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

fun set_label_fill(label_fill_pony: Bool): None =>
  @gtk_expander_set_label_fill[None](widget, label_fill_pony)

/* set_label_widget unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "label_widget", argtype: "Widget", paramtype: :param, txo: "none"}}
*/

fun set_resize_toplevel(resize_toplevel_pony: Bool): None =>
  @gtk_expander_set_resize_toplevel[None](widget, resize_toplevel_pony)

fun set_spacing(spacing_pony: I32): None =>
  @gtk_expander_set_spacing[None](widget, spacing_pony)

fun set_use_markup(use_markup_pony: Bool): None =>
  @gtk_expander_set_use_markup[None](widget, use_markup_pony)

fun set_use_underline(use_underline_pony: Bool): None =>
  @gtk_expander_set_use_underline[None](widget, use_underline_pony)

