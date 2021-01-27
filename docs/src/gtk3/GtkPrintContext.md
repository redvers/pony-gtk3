```````pony-full-source
/*
   needs: ["GObjectREF"]
provides: ["GtkPrintContext"]
*/
use "../gobject"
class GtkPrintContext is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'




/* create_pango_context unavailable due to return typing issues
{:argctype, "PangoContext*"}
{:argname, "rv"}
{:argtype, "Pango.Context"}
{:paramtype, :param}
{:txo, "full"} */

/* create_pango_layout unavailable due to return typing issues
{:argctype, "PangoLayout*"}
{:argname, "rv"}
{:argtype, "Pango.Layout"}
{:paramtype, :param}
{:txo, "full"} */

/* get_cairo_context unavailable due to return typing issues
{:argctype, "cairo_t*"}
{:argname, "rv"}
{:argtype, "cairo.Context"}
{:paramtype, :param}
{:txo, "none"} */

/* get_dpi_x unavailable due to return typing issues
{:argctype, "gdouble"}
{:argname, "rv"}
{:argtype, "gdouble"}
{:paramtype, :param}
{:txo, "none"} */

/* get_dpi_y unavailable due to return typing issues
{:argctype, "gdouble"}
{:argname, "rv"}
{:argtype, "gdouble"}
{:paramtype, :param}
{:txo, "none"} */

/* get_hard_margins unavailable due to typing issues
 {:doh, %{argctype: "gdouble*", argname: "top", argtype: "gdouble", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gdouble*", argname: "bottom", argtype: "gdouble", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gdouble*", argname: "left", argtype: "gdouble", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gdouble*", argname: "right", argtype: "gdouble", paramtype: :param, txo: "full"}}
*/

/* get_height unavailable due to return typing issues
{:argctype, "gdouble"}
{:argname, "rv"}
{:argtype, "gdouble"}
{:paramtype, :param}
{:txo, "none"} */

/* get_page_setup unavailable due to return typing issues
{:argctype, "GtkPageSetup*"}
{:argname, "rv"}
{:argtype, "PageSetup"}
{:paramtype, :param}
{:txo, "none"} */

/* get_pango_fontmap unavailable due to return typing issues
{:argctype, "PangoFontMap*"}
{:argname, "rv"}
{:argtype, "Pango.FontMap"}
{:paramtype, :param}
{:txo, "none"} */

/* get_width unavailable due to return typing issues
{:argctype, "gdouble"}
{:argname, "rv"}
{:argtype, "gdouble"}
{:paramtype, :param}
{:txo, "none"} */

/* set_cairo_context unavailable due to typing issues
 {:doh, %{argctype: "cairo_t*", argname: "cr", argtype: "cairo.Context", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "double", argname: "dpi_x", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "double", argname: "dpi_y", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/


```````