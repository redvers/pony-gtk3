/*
   needs: ["GObjectREF"]
provides: ["GtkSettings"]
*/
class GtkSettings is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'




/* reset_property unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "name", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* set_double_property unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gdouble", argname: "v_double", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "origin", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* set_long_property unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "glong", argname: "v_long", argtype: "glong", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "origin", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* set_property_value unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const GtkSettingsValue*", argname: "svalue", argtype: "SettingsValue", paramtype: :param, txo: "none"}}
*/

/* set_string_property unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "v_string", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "origin", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

