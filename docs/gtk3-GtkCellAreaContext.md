# GtkCellAreaContext
<span class="source-link">[[Source]](src/gtk3/GtkCellAreaContext.md#L6)</span>

The #GtkCellAreaContext object is created by a given #GtkCellArea
implementation via its #GtkCellAreaClass.create_context() virtual
method and is used to store cell sizes and alignments for a series of
#GtkTreeModel rows that are requested and rendered in the same context.

#GtkCellLayout widgets can create any number of contexts in which to
request and render groups of data rows. However, it’s important that the
same context which was used to request sizes for a given #GtkTreeModel
row also be used for the same row when calling other #GtkCellArea APIs
such as gtk_cell_area_render() and gtk_cell_area_event().


```pony
class val GtkCellAreaContext is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkCellAreaContext.md#L23)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkCellAreaContext val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkCellAreaContext](gtk3-GtkCellAreaContext.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkCellAreaContext.md#L26)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkCellAreaContext val^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkCellAreaContext](gtk3-GtkCellAreaContext.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkCellAreaContext.md#L29)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkCellAreaContext val^
```

#### Returns

* [GtkCellAreaContext](gtk3-GtkCellAreaContext.md) val^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkCellAreaContext.md#L19)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkCellAreaContext.md#L21)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### allocate
<span class="source-link">[[Source]](src/gtk3/GtkCellAreaContext.md#L35)</span>


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


```pony
fun box allocate(
  width_pony: I32 val,
  height_pony: I32 val)
: None val
```
#### Parameters

*   width_pony: [I32](builtin-I32.md) val
*   height_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_allocation
<span class="source-link">[[Source]](src/gtk3/GtkCellAreaContext.md#L52)</span>


    Fetches the current allocation size for @context.

If the context was not allocated in width or height, or if the
context was recently reset with gtk_cell_area_context_reset(),
the returned value will be -1.

    {:doh, %{argctype: "gint*", argname: "width", argtype: "gint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gint*", argname: "height", argtype: "gint", paramtype: :param, txo: "full"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_allocation()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_area
<span class="source-link">[[Source]](src/gtk3/GtkCellAreaContext.md#L65)</span>


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


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_area()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_preferred_height
<span class="source-link">[[Source]](src/gtk3/GtkCellAreaContext.md#L86)</span>


    Gets the accumulative preferred height for all rows which have been
requested with this context.

After gtk_cell_area_context_reset() is called and/or before ever
requesting the size of a #GtkCellArea, the returned values are 0.

    {:doh, %{argctype: "gint*", argname: "minimum_height", argtype: "gint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gint*", argname: "natural_height", argtype: "gint", paramtype: :param, txo: "full"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_preferred_height()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_preferred_height_for_width
<span class="source-link">[[Source]](src/gtk3/GtkCellAreaContext.md#L99)</span>


    Gets the accumulative preferred height for @width for all rows
which have been requested for the same said @width with this context.

After gtk_cell_area_context_reset() is called and/or before ever
requesting the size of a #GtkCellArea, the returned values are -1.

    {:doh, %{argctype: "gint*", argname: "minimum_height", argtype: "gint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gint*", argname: "natural_height", argtype: "gint", paramtype: :param, txo: "full"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_preferred_height_for_width()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_preferred_width
<span class="source-link">[[Source]](src/gtk3/GtkCellAreaContext.md#L112)</span>


    Gets the accumulative preferred width for all rows which have been
requested with this context.

After gtk_cell_area_context_reset() is called and/or before ever
requesting the size of a #GtkCellArea, the returned values are 0.

    {:doh, %{argctype: "gint*", argname: "minimum_width", argtype: "gint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gint*", argname: "natural_width", argtype: "gint", paramtype: :param, txo: "full"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_preferred_width()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_preferred_width_for_height
<span class="source-link">[[Source]](src/gtk3/GtkCellAreaContext.md#L125)</span>


    Gets the accumulative preferred width for @height for all rows which
have been requested for the same said @height with this context.

After gtk_cell_area_context_reset() is called and/or before ever
requesting the size of a #GtkCellArea, the returned values are -1.

    {:doh, %{argctype: "gint*", argname: "minimum_width", argtype: "gint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gint*", argname: "natural_width", argtype: "gint", paramtype: :param, txo: "full"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_preferred_width_for_height()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### push_preferred_height
<span class="source-link">[[Source]](src/gtk3/GtkCellAreaContext.md#L138)</span>


Causes the minimum and/or natural height to grow if the new
proposed sizes exceed the current minimum and natural height.

This is used by #GtkCellAreaContext implementations during
the request process over a series of #GtkTreeModel rows to
progressively push the requested height over a series of
gtk_cell_area_get_preferred_height() requests.


```pony
fun box push_preferred_height(
  minimum_height_pony: I32 val,
  natural_height_pony: I32 val)
: None val
```
#### Parameters

*   minimum_height_pony: [I32](builtin-I32.md) val
*   natural_height_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### push_preferred_width
<span class="source-link">[[Source]](src/gtk3/GtkCellAreaContext.md#L150)</span>


Causes the minimum and/or natural width to grow if the new
proposed sizes exceed the current minimum and natural width.

This is used by #GtkCellAreaContext implementations during
the request process over a series of #GtkTreeModel rows to
progressively push the requested width over a series of
gtk_cell_area_get_preferred_width() requests.


```pony
fun box push_preferred_width(
  minimum_width_pony: I32 val,
  natural_width_pony: I32 val)
: None val
```
#### Parameters

*   minimum_width_pony: [I32](builtin-I32.md) val
*   natural_width_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### reset
<span class="source-link">[[Source]](src/gtk3/GtkCellAreaContext.md#L162)</span>


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


```pony
fun box reset()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### show_all
<span class="source-link">[[Source]](src/gtk3/GtkWidget.md#L4)</span>


```pony
fun box show_all()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### destroy
<span class="source-link">[[Source]](src/gtk3/GtkWidget.md#L7)</span>


```pony
fun box destroy()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### signal_connect\[V: [Any](builtin-Any.md) #share\]
<span class="source-link">[[Source]](src/gtk3/GtkWidget.md#L10)</span>


```pony
fun box signal_connect[V: Any #share](
  detailed_signal: String val,
  c_handler: @{(GObjectREF, V)}[V] val,
  data: V)
: U64 val
```
#### Parameters

*   detailed_signal: [String](builtin-String.md) val
*   c_handler: @{(GObjectREF, V)}[V] val
*   data: V

#### Returns

* [U64](builtin-U64.md) val

---

