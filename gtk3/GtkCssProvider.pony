/*
   needs: ["GObjectREF"]
provides: ["GtkCssProvider"]
*/
class GtkCssProvider is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create() =>
    widget = @gtk_css_provider_new[GObjectREF]() //


/* load_from_data unavailable due to typing issues
 {:doh, %{argctype: "", argname: "data", argtype: "", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gssize", argname: "length", argtype: "gssize", paramtype: :param, txo: "none"}}
*/

/* load_from_file unavailable due to typing issues
 {:doh, %{argctype: "GFile*", argname: "file", argtype: "Gio.File", paramtype: :param, txo: "none"}}
*/

/* load_from_path unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "path", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* load_from_resource unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "resource_path", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* to_string unavailable due to return typing issues
{:argctype, "char*"}
{:argname, "rv"}
{:argtype, "utf8"}
{:paramtype, :param}
{:txo, "full"} */

