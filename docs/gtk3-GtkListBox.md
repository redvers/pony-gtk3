# GtkListBox
<span class="source-link">[[Source]](src/gtk3/GtkListBox.md#L6)</span>

A GtkListBox is a vertical container that contains GtkListBoxRow
children. These rows can by dynamically sorted and filtered, and
headers can be added dynamically depending on the row content.
It also allows keyboard and mouse navigation and selection like
a typical list.

Using GtkListBox is often an alternative to #GtkTreeView, especially
when the list contents has a more complicated layout than what is allowed
by a #GtkCellRenderer, or when the contents is interactive (i.e. has a
button in it).

Although a #GtkListBox must have only #GtkListBoxRow children you can
add any kind of widget to it via gtk_container_add(), and a #GtkListBoxRow
widget will automatically be inserted between the list and the widget.

#GtkListBoxRows can be marked as activatable or selectable. If a row
is activatable, #GtkListBox::row-activated will be emitted for it when
the user tries to activate it. If it is selectable, the row will be marked
as selected when the user tries to select it.

The GtkListBox widget was added in GTK+ 3.10.

# GtkListBox as GtkBuildable

The GtkListBox implementation of the #GtkBuildable interface supports
setting a child as the placeholder by specifying “placeholder” as the “type”
attribute of a <child> element. See gtk_list_box_set_placeholder() for info.

# CSS nodes

|[<!-- language="plain" -->
list
╰── row[.activatable]
]|

GtkListBox uses a single CSS node named list. Each GtkListBoxRow uses
a single CSS node named row. The row nodes get the .activatable
style class added when appropriate.


```pony
class val GtkListBox is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkListBox.md#L51)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkListBox val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkListBox](gtk3-GtkListBox.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkListBox.md#L54)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkListBox val^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkListBox](gtk3-GtkListBox.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkListBox.md#L57)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkListBox val^
```

#### Returns

* [GtkListBox](gtk3-GtkListBox.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkListBox.md#L61)</span>


```pony
new val create()
: GtkListBox val^
```

#### Returns

* [GtkListBox](gtk3-GtkListBox.md) val^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkListBox.md#L47)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkListBox.md#L49)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### pony_NOT_IMPLEMENTED_YET_bind_model
<span class="source-link">[[Source]](src/gtk3/GtkListBox.md#L65)</span>


    Binds @model to @box.

If @box was already bound to a model, that previous binding is
destroyed.

The contents of @box are cleared and then filled with widgets that
represent items from @model. @box is updated whenever @model changes.
If @model is %NULL, @box is left empty.

It is undefined to add or remove widgets directly (for example, with
gtk_list_box_insert() or gtk_container_add()) while @box is bound to a
model.

Note that using a model is incompatible with the filtering and sorting
functionality in GtkListBox. When using a model, filtering and sorting
should be implemented by the model.

    {:doh, %{argctype: "GListModel*", argname: "model", argtype: "Gio.ListModel", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkListBoxCreateWidgetFunc", argname: "create_widget_func", argtype: "ListBoxCreateWidgetFunc", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "user_data", argtype: "gpointer", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GDestroyNotify", argname: "user_data_free_func", argtype: "GLib.DestroyNotify", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_bind_model()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_drag_highlight_row
<span class="source-link">[[Source]](src/gtk3/GtkListBox.md#L91)</span>


    This is a helper function for implementing DnD onto a #GtkListBox.
The passed in @row will be highlighted via gtk_drag_highlight(),
and any previously highlighted row will be unhighlighted.

The row will also be unhighlighted when the widget gets
a drag leave event.

    {:doh, %{argctype: "GtkListBoxRow*", argname: "row", argtype: "ListBoxRow", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_drag_highlight_row()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### drag_unhighlight_row
<span class="source-link">[[Source]](src/gtk3/GtkListBox.md#L104)</span>


If a row has previously been highlighted via gtk_list_box_drag_highlight_row()
it will have the highlight removed.


```pony
fun box drag_unhighlight_row()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### get_activate_on_single_click
<span class="source-link">[[Source]](src/gtk3/GtkListBox.md#L111)</span>


Returns whether rows activate on single clicks.


```pony
fun box get_activate_on_single_click()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_adjustment
<span class="source-link">[[Source]](src/gtk3/GtkListBox.md#L117)</span>


    Gets the adjustment (if any) that the widget uses to
for vertical scrolling.

    {:argctype, "GtkAdjustment*"}
{:argname, "rv"}
{:argtype, "Adjustment"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_adjustment()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_row_at_index
<span class="source-link">[[Source]](src/gtk3/GtkListBox.md#L130)</span>


    Gets the n-th child in the list (not counting headers).
If @_index is negative or larger than the number of items in the
list, %NULL is returned.

    {:argctype, "GtkListBoxRow*"}
{:argname, "rv"}
{:argtype, "ListBoxRow"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_row_at_index()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_row_at_y
<span class="source-link">[[Source]](src/gtk3/GtkListBox.md#L144)</span>


    Gets the row at the @y position.

    {:argctype, "GtkListBoxRow*"}
{:argname, "rv"}
{:argtype, "ListBoxRow"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_row_at_y()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_selected_row
<span class="source-link">[[Source]](src/gtk3/GtkListBox.md#L156)</span>


    Gets the selected row.

Note that the box may allow multiple selection, in which
case you should use gtk_list_box_selected_foreach() to
find all selected rows.

    {:argctype, "GtkListBoxRow*"}
{:argname, "rv"}
{:argtype, "ListBoxRow"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_selected_row()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_selected_rows
<span class="source-link">[[Source]](src/gtk3/GtkListBox.md#L172)</span>


    Creates a list of all selected children.

    {:argctype, "GList*"}
{:argname, "rv"}
{:argtype, "GLib.List"}
{:paramtype, :param}
{:txo, "container"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_selected_rows()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_selection_mode
<span class="source-link">[[Source]](src/gtk3/GtkListBox.md#L184)</span>


    Gets the selection mode of the listbox.

    {:argctype, "GtkSelectionMode"}
{:argname, "rv"}
{:argtype, "SelectionMode"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_selection_mode()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### insert
<span class="source-link">[[Source]](src/gtk3/GtkListBox.md#L196)</span>


Insert the @child into the @box at @position. If a sort function is
set, the widget will actually be inserted at the calculated position and
this function has the same effect of gtk_container_add().

If @position is -1, or larger than the total number of items in the
@box, then the @child will be appended to the end.


```pony
fun box insert(
  child_pony: GtkWidget val,
  position_pony: I32 val)
: None val
```
#### Parameters

*   child_pony: [GtkWidget](gtk3-GtkWidget.md) val
*   position_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### invalidate_filter
<span class="source-link">[[Source]](src/gtk3/GtkListBox.md#L207)</span>


Update the filtering for all rows. Call this when result
of the filter function on the @box is changed due
to an external factor. For instance, this would be used
if the filter function just looked for a specific search
string and the entry with the search string has changed.


```pony
fun box invalidate_filter()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### invalidate_headers
<span class="source-link">[[Source]](src/gtk3/GtkListBox.md#L217)</span>


Update the separators for all rows. Call this when result
of the header function on the @box is changed due
to an external factor.


```pony
fun box invalidate_headers()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### invalidate_sort
<span class="source-link">[[Source]](src/gtk3/GtkListBox.md#L225)</span>


Update the sorting for all rows. Call this when result
of the sort function on the @box is changed due
to an external factor.


```pony
fun box invalidate_sort()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### prepend
<span class="source-link">[[Source]](src/gtk3/GtkListBox.md#L233)</span>


Prepend a widget to the list. If a sort function is set, the widget will
actually be inserted at the calculated position and this function has the
same effect of gtk_container_add().


```pony
fun box prepend(
  child_pony: GtkWidget val)
: None val
```
#### Parameters

*   child_pony: [GtkWidget](gtk3-GtkWidget.md) val

#### Returns

* [None](builtin-None.md) val

---

### select_all
<span class="source-link">[[Source]](src/gtk3/GtkListBox.md#L241)</span>


Select all children of @box, if the selection mode allows it.


```pony
fun box select_all()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_select_row
<span class="source-link">[[Source]](src/gtk3/GtkListBox.md#L247)</span>


    Make @row the currently selected row.

    {:doh, %{argctype: "GtkListBoxRow*", argname: "row", argtype: "ListBoxRow", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_select_row()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_selected_foreach
<span class="source-link">[[Source]](src/gtk3/GtkListBox.md#L255)</span>


    Calls a function for each selected child.

Note that the selection cannot be modified from within this function.

    {:doh, %{argctype: "GtkListBoxForeachFunc", argname: "func", argtype: "ListBoxForeachFunc", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "data", argtype: "gpointer", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_selected_foreach()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### set_activate_on_single_click
<span class="source-link">[[Source]](src/gtk3/GtkListBox.md#L266)</span>


If @single is %TRUE, rows will be activated when you click on them,
otherwise you need to double-click.


```pony
fun box set_activate_on_single_click(
  single_pony: Bool val)
: None val
```
#### Parameters

*   single_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_adjustment
<span class="source-link">[[Source]](src/gtk3/GtkListBox.md#L273)</span>


    Sets the adjustment (if any) that the widget uses to
for vertical scrolling. For instance, this is used
to get the page size for PageUp/Down key handling.

In the normal case when the @box is packed inside
a #GtkScrolledWindow the adjustment from that will
be picked up automatically, so there is no need
to manually do that.

    {:doh, %{argctype: "GtkAdjustment*", argname: "adjustment", argtype: "Adjustment", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_adjustment()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_filter_func
<span class="source-link">[[Source]](src/gtk3/GtkListBox.md#L288)</span>


    By setting a filter function on the @box one can decide dynamically which
of the rows to show. For instance, to implement a search function on a list that
filters the original list to only show the matching rows.

The @filter_func will be called for each row after the call, and it will
continue to be called each time a row changes (via gtk_list_box_row_changed()) or
when gtk_list_box_invalidate_filter() is called.

Note that using a filter function is incompatible with using a model
(see gtk_list_box_bind_model()).

    {:doh, %{argctype: "GtkListBoxFilterFunc", argname: "filter_func", argtype: "ListBoxFilterFunc", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "user_data", argtype: "gpointer", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GDestroyNotify", argname: "destroy", argtype: "GLib.DestroyNotify", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_filter_func()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_header_func
<span class="source-link">[[Source]](src/gtk3/GtkListBox.md#L307)</span>


    By setting a header function on the @box one can dynamically add headers
in front of rows, depending on the contents of the row and its position in the list.
For instance, one could use it to add headers in front of the first item of a
new kind, in a list sorted by the kind.

The @update_header can look at the current header widget using gtk_list_box_row_get_header()
and either update the state of the widget as needed, or set a new one using
gtk_list_box_row_set_header(). If no header is needed, set the header to %NULL.

Note that you may get many calls @update_header to this for a particular row when e.g.
changing things that don’t affect the header. In this case it is important for performance
to not blindly replace an existing header with an identical one.

The @update_header function will be called for each row after the call, and it will
continue to be called each time a row changes (via gtk_list_box_row_changed()) and when
the row before changes (either by gtk_list_box_row_changed() on the previous row, or when
the previous row becomes a different row). It is also called for all rows when
gtk_list_box_invalidate_headers() is called.

    {:doh, %{argctype: "GtkListBoxUpdateHeaderFunc", argname: "update_header", argtype: "ListBoxUpdateHeaderFunc", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "user_data", argtype: "gpointer", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GDestroyNotify", argname: "destroy", argtype: "GLib.DestroyNotify", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_header_func()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### set_placeholder
<span class="source-link">[[Source]](src/gtk3/GtkListBox.md#L334)</span>


Sets the placeholder widget that is shown in the list when
it doesn't display any visible children.


```pony
fun box set_placeholder(
  placeholder_pony: GtkWidget val)
: None val
```
#### Parameters

*   placeholder_pony: [GtkWidget](gtk3-GtkWidget.md) val

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_selection_mode
<span class="source-link">[[Source]](src/gtk3/GtkListBox.md#L341)</span>


    Sets how selection works in the listbox.
See #GtkSelectionMode for details.

    {:doh, %{argctype: "GtkSelectionMode", argname: "mode", argtype: "SelectionMode", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_selection_mode()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_sort_func
<span class="source-link">[[Source]](src/gtk3/GtkListBox.md#L350)</span>


    By setting a sort function on the @box one can dynamically reorder the rows
of the list, based on the contents of the rows.

The @sort_func will be called for each row after the call, and will continue to
be called each time a row changes (via gtk_list_box_row_changed()) and when
gtk_list_box_invalidate_sort() is called.

Note that using a sort function is incompatible with using a model
(see gtk_list_box_bind_model()).

    {:doh, %{argctype: "GtkListBoxSortFunc", argname: "sort_func", argtype: "ListBoxSortFunc", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "user_data", argtype: "gpointer", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GDestroyNotify", argname: "destroy", argtype: "GLib.DestroyNotify", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_sort_func()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### unselect_all
<span class="source-link">[[Source]](src/gtk3/GtkListBox.md#L368)</span>


Unselect all children of @box, if the selection mode allows it.


```pony
fun box unselect_all()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_unselect_row
<span class="source-link">[[Source]](src/gtk3/GtkListBox.md#L374)</span>


    Unselects a single row of @box, if the selection mode allows it.

    {:doh, %{argctype: "GtkListBoxRow*", argname: "row", argtype: "ListBoxRow", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_unselect_row()
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

