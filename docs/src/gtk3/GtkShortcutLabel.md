```````pony-full-source
/*
   needs: ["Pointer[U8 val] ref", "String", "GObjectREF"]
provides: ["GtkShortcutLabel"]
*/
use "../gobject"
class GtkShortcutLabel is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create(accelerator_pony: String) =>
    widget = @gtk_shortcut_label_new[GObjectREF](accelerator_pony.cstring()) //


fun get_accelerator(): String =>
"""
Retrieves the current accelerator of @self.
"""
  var cstring_pony: Pointer[U8 val] ref = @gtk_shortcut_label_get_accelerator[Pointer[U8 val] ref](widget)
var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

fun get_disabled_text(): String =>
"""
Retrieves the text that is displayed when no accelerator is set.
"""
  var cstring_pony: Pointer[U8 val] ref = @gtk_shortcut_label_get_disabled_text[Pointer[U8 val] ref](widget)
var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

/* set_accelerator unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "accelerator", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* set_disabled_text unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "disabled_text", argtype: "utf8", paramtype: :param, txo: "none"}}
*/


```````