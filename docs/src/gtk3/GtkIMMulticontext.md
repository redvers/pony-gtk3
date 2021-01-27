```````pony-full-source
/*
   needs: ["GObjectREF"]
provides: ["GtkIMMulticontext"]
*/
use "../gobject"
class GtkIMMulticontext is GtkWidget
"""
No documentation provided
"""
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create() =>
    widget = @gtk_im_multicontext_new[GObjectREF]() //


/* append_menuitems unavailable due to typing issues
 {:doh, %{argctype: "GtkMenuShell*", argname: "menushell", argtype: "MenuShell", paramtype: :param, txo: "none"}}
*/

/* get_context_id unavailable due to return typing issues
{:argctype, "const char*"}
{:argname, "rv"}
{:argtype, "utf8"}
{:paramtype, :param}
{:txo, "none"} */

/* set_context_id unavailable due to typing issues
 {:doh, %{argctype: "const char*", argname: "context_id", argtype: "utf8", paramtype: :param, txo: "none"}}
*/


```````