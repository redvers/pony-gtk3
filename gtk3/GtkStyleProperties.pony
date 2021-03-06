/*
   needs: ["None", "GObjectREF"]
provides: ["GtkStyleProperties val"]
*/
use "../gobject"
class val GtkStyleProperties is GtkWidget
"""
GtkStyleProperties provides the storage for style information
that is used by #GtkStyleContext and other #GtkStyleProvider
implementations.

Before style properties can be stored in GtkStyleProperties, they
must be registered with gtk_style_properties_register_property().

Unless you are writing a #GtkStyleProvider implementation, you
are unlikely to use this API directly, as gtk_style_context_get()
and its variants are the preferred way to access styling information
from widget implementations and theming engine implementations
should use the APIs provided by #GtkThemingEngine instead.

#GtkStyleProperties has been deprecated in GTK 3.16. The CSS
machinery does not use it anymore and all users of this object
have been deprecated.
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
    widget = @gtk_style_properties_new[GObjectREF]() //


fun clear(): None =>
"""
Clears all style information from @props.
"""
  @gtk_style_properties_clear[None](widget)

  fun pony_NOT_IMPLEMENTED_YET_get(): None =>
    """
    Retrieves several style property values from @props for a
given state.

    {:doh, %{argctype: "GtkStateFlags", argname: "state", argtype: "StateFlags", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "", argname: "...", argtype: "", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_property(): None =>
    """
    Gets a style property from @props for the given state. When done with @value,
g_value_unset() needs to be called to free any allocated memory.

    {:doh, %{argctype: "const gchar*", argname: "property", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkStateFlags", argname: "state", argtype: "StateFlags", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GValue*", argname: "value", argtype: "GObject.Value", paramtype: :param, txo: "full"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_valist(): None =>
    """
    Retrieves several style property values from @props for a given state.

    {:doh, %{argctype: "GtkStateFlags", argname: "state", argtype: "StateFlags", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "va_list", argname: "args", argtype: "va_list", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_lookup_color(): None =>
    """
    Returns the symbolic color that is mapped
to @name.

    {:argctype, "GtkSymbolicColor*"}
{:argname, "rv"}
{:argtype, "SymbolicColor"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_map_color(): None =>
    """
    Maps @color so it can be referenced by @name. See
gtk_style_properties_lookup_color()

    {:doh, %{argctype: "const gchar*", argname: "name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkSymbolicColor*", argname: "color", argtype: "SymbolicColor", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_merge(): None =>
    """
    Merges into @props all the style information contained
in @props_to_merge. If @replace is %TRUE, the values
will be overwritten, if it is %FALSE, the older values
will prevail.

    {:doh, %{argctype: "const GtkStyleProperties*", argname: "props_to_merge", argtype: "StyleProperties", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_set(): None =>
    """
    Sets several style properties on @props.

    {:doh, %{argctype: "GtkStateFlags", argname: "state", argtype: "StateFlags", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "", argname: "...", argtype: "", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_set_property(): None =>
    """
    Sets a styling property in @props.

    {:doh, %{argctype: "const gchar*", argname: "property", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkStateFlags", argname: "state", argtype: "StateFlags", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const GValue*", argname: "value", argtype: "GObject.Value", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_set_valist(): None =>
    """
    Sets several style properties on @props.

    {:doh, %{argctype: "GtkStateFlags", argname: "state", argtype: "StateFlags", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "va_list", argname: "args", argtype: "va_list", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_unset_property(): None =>
    """
    Unsets a style property in @props.

    {:doh, %{argctype: "const gchar*", argname: "property", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkStateFlags", argname: "state", argtype: "StateFlags", paramtype: :param, txo: "none"}}
*/
    """

