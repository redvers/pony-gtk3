/*
   needs: ["Pointer[U8 val] ref", "String", "Bool", "None", "GObjectREF"]
provides: ["GtkAboutDialog"]
*/
use "../gobject"
class GtkAboutDialog is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create() =>
    widget = @gtk_about_dialog_new[GObjectREF]() //


/* add_credit_section unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "section_name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "", argname: "people", argtype: "", paramtype: :param, txo: "none"}}
*/

/* get_artists unavailable due to return typing issues
{:argctype, ""}
{:argname, "rv"}
{:argtype, ""}
{:paramtype, :param}
{:txo, "none"} */

/* get_authors unavailable due to return typing issues
{:argctype, ""}
{:argname, "rv"}
{:argtype, ""}
{:paramtype, :param}
{:txo, "none"} */

fun get_comments(): String =>
"""
Returns the comments string.
"""
  var cstring_pony: Pointer[U8 val] ref = @gtk_about_dialog_get_comments[Pointer[U8 val] ref](widget)
var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

fun get_copyright(): String =>
"""
Returns the copyright string.
"""
  var cstring_pony: Pointer[U8 val] ref = @gtk_about_dialog_get_copyright[Pointer[U8 val] ref](widget)
var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

/* get_documenters unavailable due to return typing issues
{:argctype, ""}
{:argname, "rv"}
{:argtype, ""}
{:paramtype, :param}
{:txo, "none"} */

fun get_license(): String =>
"""
Returns the license information.
"""
  var cstring_pony: Pointer[U8 val] ref = @gtk_about_dialog_get_license[Pointer[U8 val] ref](widget)
var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

/* get_license_type unavailable due to return typing issues
{:argctype, "GtkLicense"}
{:argname, "rv"}
{:argtype, "License"}
{:paramtype, :param}
{:txo, "none"} */

/* get_logo unavailable due to return typing issues
{:argctype, "GdkPixbuf*"}
{:argname, "rv"}
{:argtype, "GdkPixbuf.Pixbuf"}
{:paramtype, :param}
{:txo, "none"} */

fun get_logo_icon_name(): String =>
"""
Returns the icon name displayed as logo in the about dialog.
"""
  var cstring_pony: Pointer[U8 val] ref = @gtk_about_dialog_get_logo_icon_name[Pointer[U8 val] ref](widget)
var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

fun get_program_name(): String =>
"""
Returns the program name displayed in the about dialog.
"""
  var cstring_pony: Pointer[U8 val] ref = @gtk_about_dialog_get_program_name[Pointer[U8 val] ref](widget)
var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

fun get_translator_credits(): String =>
"""
Returns the translator credits string which is displayed
in the translators tab of the secondary credits dialog.
"""
  var cstring_pony: Pointer[U8 val] ref = @gtk_about_dialog_get_translator_credits[Pointer[U8 val] ref](widget)
var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

fun get_version(): String =>
"""
Returns the version string.
"""
  var cstring_pony: Pointer[U8 val] ref = @gtk_about_dialog_get_version[Pointer[U8 val] ref](widget)
var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

fun get_website(): String =>
"""
Returns the website URL.
"""
  var cstring_pony: Pointer[U8 val] ref = @gtk_about_dialog_get_website[Pointer[U8 val] ref](widget)
var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

fun get_website_label(): String =>
"""
Returns the label used for the website link.
"""
  var cstring_pony: Pointer[U8 val] ref = @gtk_about_dialog_get_website_label[Pointer[U8 val] ref](widget)
var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

fun get_wrap_license(): Bool =>
"""
Returns whether the license text in @about is
automatically wrapped.
"""
  @gtk_about_dialog_get_wrap_license[Bool](widget)

/* set_artists unavailable due to typing issues
 {:doh, %{argctype: "", argname: "artists", argtype: "", paramtype: :param, txo: "none"}}
*/

/* set_authors unavailable due to typing issues
 {:doh, %{argctype: "", argname: "authors", argtype: "", paramtype: :param, txo: "none"}}
*/

/* set_comments unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "comments", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* set_copyright unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "copyright", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* set_documenters unavailable due to typing issues
 {:doh, %{argctype: "", argname: "documenters", argtype: "", paramtype: :param, txo: "none"}}
*/

/* set_license unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "license", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* set_license_type unavailable due to typing issues
 {:doh, %{argctype: "GtkLicense", argname: "license_type", argtype: "License", paramtype: :param, txo: "none"}}
*/

/* set_logo unavailable due to typing issues
 {:doh, %{argctype: "GdkPixbuf*", argname: "logo", argtype: "GdkPixbuf.Pixbuf", paramtype: :param, txo: "none"}}
*/

/* set_logo_icon_name unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "icon_name", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* set_program_name unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "name", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* set_translator_credits unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "translator_credits", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* set_version unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "version", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* set_website unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "website", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* set_website_label unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "website_label", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

fun set_wrap_license(wrap_license_pony: Bool): None =>
"""
Sets whether the license text in @about is
automatically wrapped.
"""
  @gtk_about_dialog_set_wrap_license[None](widget, wrap_license_pony)

