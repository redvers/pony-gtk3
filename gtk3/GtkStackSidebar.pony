/*
   needs: ["GObjectREF"]
provides: ["GtkStackSidebar val"]
*/
use "../gobject"
class val GtkStackSidebar is GtkWidget
"""
A GtkStackSidebar enables you to quickly and easily provide a
consistent "sidebar" object for your user interface.

In order to use a GtkStackSidebar, you simply use a GtkStack to
organize your UI flow, and add the sidebar to your sidebar area. You
can use gtk_stack_sidebar_set_stack() to connect the #GtkStackSidebar
to the #GtkStack.

# CSS nodes

GtkStackSidebar has a single CSS node with name stacksidebar and
style class .sidebar.

When circumstances require it, GtkStackSidebar adds the
.needs-attention style class to the widgets representing the stack
pages.
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
    widget = @gtk_stack_sidebar_new[GObjectREF]() //


  fun pony_NOT_IMPLEMENTED_YET_get_stack(): None =>
    """
    Retrieves the stack.
See gtk_stack_sidebar_set_stack().

    {:argctype, "GtkStack*"}
{:argname, "rv"}
{:argtype, "Stack"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_set_stack(): None =>
    """
    Set the #GtkStack associated with this #GtkStackSidebar.

The sidebar widget will automatically update according to the order
(packing) and items within the given #GtkStack.

    {:doh, %{argctype: "GtkStack*", argname: "stack", argtype: "Stack", paramtype: :param, txo: "none"}}
*/
    """

