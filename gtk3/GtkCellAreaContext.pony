/*
   needs: ["None", "I32", "GObjectREF"]
provides: ["GtkCellAreaContext val"]
*/
use "../gobject"
class val GtkCellAreaContext is GtkWidget
"""
The #GtkCellAreaContext object is created by a given #GtkCellArea
implementation via its #GtkCellAreaClass.create_context() virtual
method and is used to store cell sizes and alignments for a series of
#GtkTreeModel rows that are requested and rendered in the same context.

#GtkCellLayout widgets can create any number of contexts in which to
request and render groups of data rows. However, it’s important that the
same context which was used to request sizes for a given #GtkTreeModel
row also be used for the same row when calling other #GtkCellArea APIs
such as gtk_cell_area_render() and gtk_cell_area_event().
"""
  var widget: GObjectREF val

  fun gtkwidget(): GObjectREF val => widget

  new val create_from_GtkBuilder(gtkbuilder: GtkBuilder, glade_id: String) =>
    widget = @gtk_builder_get_object[GObjectREF](gtkbuilder.gtkwidget(), glade_id.cstring())

  new val create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'

  new val never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF




fun allocate(width_pony: I32, height_pony: I32): None =>
"""
Allocates a width and/or a height for all rows which are to be
rendered with @context.

Usually allocation is performed only horizontally or sometimes
vertically since a group of rows are usually rendered side by
side vertically or horizontally and share either the same width
or the same height. Sometimes they are allocated in both horizontal
and vertical orientations producing a homogeneous effect of the
rows. This is generally the case for #GtkTreeView when
#GtkTreeView:fixed-height-mode is enabled.

Since 3.0
"""
  @gtk_cell_area_context_allocate[None](widget, width_pony, height_pony)

  fun pony_NOT_IMPLEMENTED_YET_get_allocation(): None =>
    """
    Fetches the current allocation size for @context.

If the context was not allocated in width or height, or if the
context was recently reset with gtk_cell_area_context_reset(),
the returned value will be -1.

    {:doh, %{argctype: "gint*", argname: "width", argtype: "gint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gint*", argname: "height", argtype: "gint", paramtype: :param, txo: "full"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_area(): None =>
    """
    Fetches the #GtkCellArea this @context was created by.

This is generally unneeded by layouting widgets; however,
it is important for the context implementation itself to
fetch information about the area it is being used for.

For instance at #GtkCellAreaContextClass.allocate() time
it’s important to know details about any cell spacing
that the #GtkCellArea is configured with in order to
compute a proper allocation.

    {:argctype, "GtkCellArea*"}
{:argname, "rv"}
{:argtype, "CellArea"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_preferred_height(): None =>
    """
    Gets the accumulative preferred height for all rows which have been
requested with this context.

After gtk_cell_area_context_reset() is called and/or before ever
requesting the size of a #GtkCellArea, the returned values are 0.

    {:doh, %{argctype: "gint*", argname: "minimum_height", argtype: "gint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gint*", argname: "natural_height", argtype: "gint", paramtype: :param, txo: "full"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_preferred_height_for_width(): None =>
    """
    Gets the accumulative preferred height for @width for all rows
which have been requested for the same said @width with this context.

After gtk_cell_area_context_reset() is called and/or before ever
requesting the size of a #GtkCellArea, the returned values are -1.

    {:doh, %{argctype: "gint*", argname: "minimum_height", argtype: "gint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gint*", argname: "natural_height", argtype: "gint", paramtype: :param, txo: "full"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_preferred_width(): None =>
    """
    Gets the accumulative preferred width for all rows which have been
requested with this context.

After gtk_cell_area_context_reset() is called and/or before ever
requesting the size of a #GtkCellArea, the returned values are 0.

    {:doh, %{argctype: "gint*", argname: "minimum_width", argtype: "gint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gint*", argname: "natural_width", argtype: "gint", paramtype: :param, txo: "full"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_get_preferred_width_for_height(): None =>
    """
    Gets the accumulative preferred width for @height for all rows which
have been requested for the same said @height with this context.

After gtk_cell_area_context_reset() is called and/or before ever
requesting the size of a #GtkCellArea, the returned values are -1.

    {:doh, %{argctype: "gint*", argname: "minimum_width", argtype: "gint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gint*", argname: "natural_width", argtype: "gint", paramtype: :param, txo: "full"}}
*/
    """

fun push_preferred_height(minimum_height_pony: I32, natural_height_pony: I32): None =>
"""
Causes the minimum and/or natural height to grow if the new
proposed sizes exceed the current minimum and natural height.

This is used by #GtkCellAreaContext implementations during
the request process over a series of #GtkTreeModel rows to
progressively push the requested height over a series of
gtk_cell_area_get_preferred_height() requests.
"""
  @gtk_cell_area_context_push_preferred_height[None](widget, minimum_height_pony, natural_height_pony)

fun push_preferred_width(minimum_width_pony: I32, natural_width_pony: I32): None =>
"""
Causes the minimum and/or natural width to grow if the new
proposed sizes exceed the current minimum and natural width.

This is used by #GtkCellAreaContext implementations during
the request process over a series of #GtkTreeModel rows to
progressively push the requested width over a series of
gtk_cell_area_get_preferred_width() requests.
"""
  @gtk_cell_area_context_push_preferred_width[None](widget, minimum_width_pony, natural_width_pony)

fun reset(): None =>
"""
Resets any previously cached request and allocation
data.

When underlying #GtkTreeModel data changes its
important to reset the context if the content
size is allowed to shrink. If the content size
is only allowed to grow (this is usually an option
for views rendering large data stores as a measure
of optimization), then only the row that changed
or was inserted needs to be (re)requested with
gtk_cell_area_get_preferred_width().

When the new overall size of the context requires
that the allocated size changes (or whenever this
allocation changes at all), the variable row
sizes need to be re-requested for every row.

For instance, if the rows are displayed all with
the same width from top to bottom then a change
in the allocated width necessitates a recalculation
of all the displayed row heights using
gtk_cell_area_get_preferred_height_for_width().

Since 3.0
"""
  @gtk_cell_area_context_reset[None](widget)

