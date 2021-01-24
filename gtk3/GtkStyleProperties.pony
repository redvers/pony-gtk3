/*
   needs: ["None", "GObjectREF"]
provides: ["GtkStyleProperties"]
*/
class GtkStyleProperties is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF


  new create() =>
    widget = @gtk_style_properties_new[GObjectREF]() //


fun clear(): None =>
  @gtk_style_properties_clear[None](widget)

/* get unavailable due to typing issues
 {:doh, %{argctype: "GtkStateFlags", argname: "state", argtype: "StateFlags", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "", argname: "...", argtype: "", paramtype: :param, txo: "none"}}
*/

/* get_property unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "property", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkStateFlags", argname: "state", argtype: "StateFlags", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GValue*", argname: "value", argtype: "GObject.Value", paramtype: :param, txo: "full"}}
*/

/* get_valist unavailable due to typing issues
 {:doh, %{argctype: "GtkStateFlags", argname: "state", argtype: "StateFlags", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "va_list", argname: "args", argtype: "va_list", paramtype: :param, txo: "none"}}
*/

/* lookup_color unavailable due to return typing issues
{:argctype, "GtkSymbolicColor*"}
{:argname, "rv"}
{:argtype, "SymbolicColor"}
{:paramtype, :param}
{:txo, "none"} */

/* map_color unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkSymbolicColor*", argname: "color", argtype: "SymbolicColor", paramtype: :param, txo: "none"}}
*/

/* merge unavailable due to typing issues
 {:doh, %{argctype: "const GtkStyleProperties*", argname: "props_to_merge", argtype: "StyleProperties", paramtype: :param, txo: "none"}}
*/

/* set unavailable due to typing issues
 {:doh, %{argctype: "GtkStateFlags", argname: "state", argtype: "StateFlags", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "", argname: "...", argtype: "", paramtype: :param, txo: "none"}}
*/

/* set_property unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "property", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkStateFlags", argname: "state", argtype: "StateFlags", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const GValue*", argname: "value", argtype: "GObject.Value", paramtype: :param, txo: "none"}}
*/

/* set_valist unavailable due to typing issues
 {:doh, %{argctype: "GtkStateFlags", argname: "state", argtype: "StateFlags", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "va_list", argname: "args", argtype: "va_list", paramtype: :param, txo: "none"}}
*/

/* unset_property unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "property", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkStateFlags", argname: "state", argtype: "StateFlags", paramtype: :param, txo: "none"}}
*/

