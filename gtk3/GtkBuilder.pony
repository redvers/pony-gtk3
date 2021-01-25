/*
   needs: ["None", "String", "@{(GObjectREF)}", "", "Pointer[U8 val] ref", "GObjectREF", "I64"]
provides: ["GtkBuilder"]
*/
class GtkBuilder is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create() =>
    widget = @gtk_builder_new[GObjectREF]() //

  new new_from_file(filename_pony: String) =>
    widget = @gtk_builder_new_from_file[GObjectREF](filename_pony.cstring()) //

  new new_from_resource(resource_path_pony: String) =>
    widget = @gtk_builder_new_from_resource[GObjectREF](resource_path_pony.cstring()) //

  new new_from_string(string_pony: String, length_pony: I64) =>
    widget = @gtk_builder_new_from_string[GObjectREF](string_pony.cstring(), length_pony) //


fun add_callback_symbol(callback_name: String, callback_symbol: @{(GObjectREF)}): None =>
  @gtk_builder_add_callback_symbol[None](widget, callback_name.cstring(), callback_symbol)

/* add_callback_symbols unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "first_callback_name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GCallback", argname: "first_callback_symbol", argtype: "GObject.Callback", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "", argname: "...", argtype: "", paramtype: :param, txo: "none"}}
*/

/* add_from_file unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "filename", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* add_from_resource unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "resource_path", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* add_from_string unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "buffer", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gsize", argname: "length", argtype: "gsize", paramtype: :param, txo: "none"}}
*/

/* add_objects_from_file unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "filename", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "", argname: "object_ids", argtype: "", paramtype: :param, txo: "none"}}
*/

/* add_objects_from_resource unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "resource_path", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "", argname: "object_ids", argtype: "", paramtype: :param, txo: "none"}}
*/

/* add_objects_from_string unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "buffer", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gsize", argname: "length", argtype: "gsize", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "", argname: "object_ids", argtype: "", paramtype: :param, txo: "none"}}
*/

fun connect_signals(): None =>
  @gtk_builder_connect_signals[None](widget, None)

/* connect_signals_full unavailable due to typing issues
 {:doh, %{argctype: "GtkBuilderConnectFunc", argname: "func", argtype: "BuilderConnectFunc", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "user_data", argtype: "gpointer", paramtype: :param, txo: "none"}}
*/

/* expose_object unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GObject*", argname: "gobject", argtype: "GObject.Object", paramtype: :param, txo: "none"}}
*/

/* extend_with_template unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "widget", argtype: "Widget", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GType", argname: "template_type", argtype: "GType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "buffer", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gsize", argname: "length", argtype: "gsize", paramtype: :param, txo: "none"}}
*/

/* get_application unavailable due to return typing issues
{:argctype, "GtkApplication*"}
{:argname, "rv"}
{:argtype, "Application"}
{:paramtype, :param}
{:txo, "none"} */

/* get_object unavailable due to return typing issues
{:argctype, "GObject*"}
{:argname, "rv"}
{:argtype, "GObject.Object"}
{:paramtype, :param}
{:txo, "none"} */

/* get_objects unavailable due to return typing issues
{:argctype, "GSList*"}
{:argname, "rv"}
{:argtype, "GLib.SList"}
{:paramtype, :param}
{:txo, "container"} */

fun get_translation_domain(): String =>
  var cstring_pony: Pointer[U8 val] ref = @gtk_builder_get_translation_domain[Pointer[U8 val] ref](widget)
var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

/* get_type_from_name unavailable due to return typing issues
{:argctype, "GType"}
{:argname, "rv"}
{:argtype, "GType"}
{:paramtype, :param}
{:txo, "none"} */

/* lookup_callback_symbol unavailable due to return typing issues
{:argctype, "GCallback"}
{:argname, "rv"}
{:argtype, "GObject.Callback"}
{:paramtype, :param}
{:txo, "notpresent"} */

/* set_application unavailable due to typing issues
 {:doh, %{argctype: "GtkApplication*", argname: "application", argtype: "Application", paramtype: :param, txo: "none"}}
*/

/* set_translation_domain unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "domain", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* value_from_string unavailable due to typing issues
 {:doh, %{argctype: "GParamSpec*", argname: "pspec", argtype: "GObject.ParamSpec", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "string", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GValue*", argname: "value", argtype: "GObject.Value", paramtype: :param, txo: "none"}}
*/

/* value_from_string_type unavailable due to typing issues
 {:doh, %{argctype: "GType", argname: "gtype", argtype: "GType", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "string", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GValue*", argname: "value", argtype: "GObject.Value", paramtype: :param, txo: "none"}}
*/

