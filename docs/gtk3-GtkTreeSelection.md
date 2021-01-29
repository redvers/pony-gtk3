# GtkTreeSelection
<span class="source-link">[[Source]](src/gtk3/GtkTreeSelection.md#L6)</span>

The #GtkTreeSelection object is a helper object to manage the selection
for a #GtkTreeView widget.  The #GtkTreeSelection object is
automatically created when a new #GtkTreeView widget is created, and
cannot exist independently of this widget.  The primary reason the
#GtkTreeSelection objects exists is for cleanliness of code and API.
That is, there is no conceptual reason all these functions could not be
methods on the #GtkTreeView widget instead of a separate function.

The #GtkTreeSelection object is gotten from a #GtkTreeView by calling
gtk_tree_view_get_selection().  It can be manipulated to check the
selection status of the tree, as well as select and deselect individual
rows.  Selection is done completely view side.  As a result, multiple
views of the same model can have completely different selections.
Additionally, you cannot change the selection of a row on the model that
is not currently displayed by the view without expanding its parents
first.

One of the important things to remember when monitoring the selection of
a view is that the #GtkTreeSelection::changed signal is mostly a hint.
That is, it may only emit one signal when a range of rows is selected.
Additionally, it may on occasion emit a #GtkTreeSelection::changed signal
when nothing has happened (mostly as a result of programmers calling
select_row on an already selected row).


```pony
class val GtkTreeSelection is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkTreeSelection.md#L36)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkTreeSelection val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkTreeSelection](gtk3-GtkTreeSelection.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkTreeSelection.md#L39)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkTreeSelection val^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkTreeSelection](gtk3-GtkTreeSelection.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkTreeSelection.md#L42)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkTreeSelection val^
```

#### Returns

* [GtkTreeSelection](gtk3-GtkTreeSelection.md) val^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkTreeSelection.md#L32)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkTreeSelection.md#L34)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### count_selected_rows
<span class="source-link">[[Source]](src/gtk3/GtkTreeSelection.md#L48)</span>


Returns the number of rows that have been selected in @tree.


```pony
fun box count_selected_rows()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_mode
<span class="source-link">[[Source]](src/gtk3/GtkTreeSelection.md#L54)</span>


    Gets the selection mode for @selection. See
gtk_tree_selection_set_mode().

    {:argctype, "GtkSelectionMode"}
{:argname, "rv"}
{:argtype, "SelectionMode"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_mode()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_select_function
<span class="source-link">[[Source]](src/gtk3/GtkTreeSelection.md#L67)</span>


    Returns the current selection function.

    {:argctype, "GtkTreeSelectionFunc"}
{:argname, "rv"}
{:argtype, "TreeSelectionFunc"}
{:paramtype, :param}
{:txo, "notpresent"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_select_function()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_selected
<span class="source-link">[[Source]](src/gtk3/GtkTreeSelection.md#L79)</span>


    Sets @iter to the currently selected node if @selection is set to
#GTK_SELECTION_SINGLE or #GTK_SELECTION_BROWSE.  @iter may be NULL if you
just want to test if @selection has any selected nodes.  @model is filled
with the current model as a convenience.  This function will not work if you
use @selection is #GTK_SELECTION_MULTIPLE.

    {:doh, %{argctype: "GtkTreeModel**", argname: "model", argtype: "TreeModel", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkTreeIter*", argname: "iter", argtype: "TreeIter", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_selected()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_selected_rows
<span class="source-link">[[Source]](src/gtk3/GtkTreeSelection.md#L92)</span>


    Creates a list of path of all selected rows. Additionally, if you are
planning on modifying the model after calling this function, you may
want to convert the returned list into a list of #GtkTreeRowReferences.
To do this, you can use gtk_tree_row_reference_new().

To free the return value, use:
|[<!-- language="C" -->
g_list_free_full (list, (GDestroyNotify) gtk_tree_path_free);
]|

    {:argctype, "GList*"}
{:argname, "rv"}
{:argtype, "GLib.List"}
{:paramtype, :param}
{:txo, "full"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_selected_rows()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_tree_view
<span class="source-link">[[Source]](src/gtk3/GtkTreeSelection.md#L112)</span>


    Returns the tree view associated with @selection.

    {:argctype, "GtkTreeView*"}
{:argname, "rv"}
{:argtype, "TreeView"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_tree_view()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_user_data
<span class="source-link">[[Source]](src/gtk3/GtkTreeSelection.md#L124)</span>


    Returns the user data for the selection function.

    {:argctype, "gpointer"}
{:argname, "rv"}
{:argtype, "gpointer"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_user_data()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_iter_is_selected
<span class="source-link">[[Source]](src/gtk3/GtkTreeSelection.md#L136)</span>


    Returns %TRUE if the row at @iter is currently selected.

    {:doh, %{argctype: "GtkTreeIter*", argname: "iter", argtype: "TreeIter", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_iter_is_selected()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_path_is_selected
<span class="source-link">[[Source]](src/gtk3/GtkTreeSelection.md#L144)</span>


    Returns %TRUE if the row pointed to by @path is currently selected.  If @path
does not point to a valid location, %FALSE is returned

    {:doh, %{argctype: "GtkTreePath*", argname: "path", argtype: "TreePath", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_path_is_selected()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### select_all
<span class="source-link">[[Source]](src/gtk3/GtkTreeSelection.md#L153)</span>


Selects all the nodes. @selection must be set to #GTK_SELECTION_MULTIPLE
mode.


```pony
fun box select_all()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_select_iter
<span class="source-link">[[Source]](src/gtk3/GtkTreeSelection.md#L160)</span>


    Selects the specified iterator.

    {:doh, %{argctype: "GtkTreeIter*", argname: "iter", argtype: "TreeIter", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_select_iter()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_select_path
<span class="source-link">[[Source]](src/gtk3/GtkTreeSelection.md#L168)</span>


    Select the row at @path.

    {:doh, %{argctype: "GtkTreePath*", argname: "path", argtype: "TreePath", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_select_path()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_select_range
<span class="source-link">[[Source]](src/gtk3/GtkTreeSelection.md#L176)</span>


    Selects a range of nodes, determined by @start_path and @end_path inclusive.
@selection must be set to #GTK_SELECTION_MULTIPLE mode.

    {:doh, %{argctype: "GtkTreePath*", argname: "start_path", argtype: "TreePath", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkTreePath*", argname: "end_path", argtype: "TreePath", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_select_range()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_selected_foreach
<span class="source-link">[[Source]](src/gtk3/GtkTreeSelection.md#L186)</span>


    Calls a function for each selected node. Note that you cannot modify
the tree or selection from within this function. As a result,
gtk_tree_selection_get_selected_rows() might be more useful.

    {:doh, %{argctype: "GtkTreeSelectionForeachFunc", argname: "func", argtype: "TreeSelectionForeachFunc", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "data", argtype: "gpointer", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_selected_foreach()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_mode
<span class="source-link">[[Source]](src/gtk3/GtkTreeSelection.md#L197)</span>


    Sets the selection mode of the @selection.  If the previous type was
#GTK_SELECTION_MULTIPLE, then the anchor is kept selected, if it was
previously selected.

    {:doh, %{argctype: "GtkSelectionMode", argname: "gtype", argtype: "SelectionMode", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_mode()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_select_function
<span class="source-link">[[Source]](src/gtk3/GtkTreeSelection.md#L207)</span>


    Sets the selection function.

If set, this function is called before any node is selected or unselected,
giving some control over which nodes are selected. The select function
should return %TRUE if the state of the node may be toggled, and %FALSE
if the state of the node should be left unchanged.

    {:doh, %{argctype: "GtkTreeSelectionFunc", argname: "func", argtype: "TreeSelectionFunc", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "data", argtype: "gpointer", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GDestroyNotify", argname: "destroy", argtype: "GLib.DestroyNotify", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_select_function()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### unselect_all
<span class="source-link">[[Source]](src/gtk3/GtkTreeSelection.md#L222)</span>


Unselects all the nodes.


```pony
fun box unselect_all()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_unselect_iter
<span class="source-link">[[Source]](src/gtk3/GtkTreeSelection.md#L228)</span>


    Unselects the specified iterator.

    {:doh, %{argctype: "GtkTreeIter*", argname: "iter", argtype: "TreeIter", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_unselect_iter()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_unselect_path
<span class="source-link">[[Source]](src/gtk3/GtkTreeSelection.md#L236)</span>


    Unselects the row at @path.

    {:doh, %{argctype: "GtkTreePath*", argname: "path", argtype: "TreePath", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_unselect_path()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_unselect_range
<span class="source-link">[[Source]](src/gtk3/GtkTreeSelection.md#L244)</span>


    Unselects a range of nodes, determined by @start_path and @end_path
inclusive.

    {:doh, %{argctype: "GtkTreePath*", argname: "start_path", argtype: "TreePath", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkTreePath*", argname: "end_path", argtype: "TreePath", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_unselect_range()
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

