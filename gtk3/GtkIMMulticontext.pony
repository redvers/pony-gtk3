/*
   needs: ["GObjectREF"]
provides: ["GtkIMMulticontext val"]
*/
use "../gobject"
class val GtkIMMulticontext is GtkWidget
"""
No documentation provided
"""
  var widget: GObjectREF val

  fun gtkwidget(): GObjectREF val => widget

  new val create_from_GtkBuilder(gtkbuilder: GtkBuilder, glade_id: String) =>
    widget = @gtk_builder_get_object[GObjectREF](gtkbuilder.gtkwidget(), glade_id.cstring())

  new val create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'

  new val never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF


  new val create() =>
    widget = @gtk_im_multicontext_new[GObjectREF]() //


  fun pony_NOT_IMPLEMENTED_YET_append_menuitems(): None =>
    """
    Add menuitems for various available input methods to a menu;
the menuitems, when selected, will switch the input method
for the context and the global default input method.

    {:doh, %{argctype: "GtkMenuShell*", argname: "menushell", argtype: "MenuShell", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_context_id(): None =>
    """
    Gets the id of the currently active slave of the @context.

    {:argctype, "const char*"}
{:argname, "rv"}
{:argtype, "utf8"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_set_context_id(): None =>
    """
    Sets the context id for @context.

This causes the currently active slave of @context to be
replaced by the slave corresponding to the new context id.

    {:doh, %{argctype: "const char*", argname: "context_id", argtype: "utf8", paramtype: :param, txo: "none"}}
*/
    """

