# GtkEntryCompletion
<span class="source-link">[[Source]](src/gtk3/GtkEntryCompletion.md#L6)</span>

#GtkEntryCompletion is an auxiliary object to be used in conjunction with
#GtkEntry to provide the completion functionality. It implements the
#GtkCellLayout interface, to allow the user to add extra cells to the
#GtkTreeView with completion matches.

“Completion functionality” means that when the user modifies the text
in the entry, #GtkEntryCompletion checks which rows in the model match
the current content of the entry, and displays a list of matches.
By default, the matching is done by comparing the entry text
case-insensitively against the text column of the model (see
gtk_entry_completion_set_text_column()), but this can be overridden
with a custom match function (see gtk_entry_completion_set_match_func()).

When the user selects a completion, the content of the entry is
updated. By default, the content of the entry is replaced by the
text column of the model, but this can be overridden by connecting
to the #GtkEntryCompletion::match-selected signal and updating the
entry in the signal handler. Note that you should return %TRUE from
the signal handler to suppress the default behaviour.

To add completion functionality to an entry, use gtk_entry_set_completion().

In addition to regular completion matches, which will be inserted into the
entry when they are selected, #GtkEntryCompletion also allows to display
“actions” in the popup window. Their appearance is similar to menuitems,
to differentiate them clearly from completion strings. When an action is
selected, the #GtkEntryCompletion::action-activated signal is emitted.

GtkEntryCompletion uses a #GtkTreeModelFilter model to represent the
subset of the entire model that is currently matching. While the
GtkEntryCompletion signals #GtkEntryCompletion::match-selected and
#GtkEntryCompletion::cursor-on-match take the original model and an
iter pointing to that model as arguments, other callbacks and signals
(such as #GtkCellLayoutDataFuncs or #GtkCellArea::apply-attributes)
will generally take the filter model as argument. As long as you are
only calling gtk_tree_model_get(), this will make no difference to
you. If for some reason, you need the original model, use
gtk_tree_model_filter_get_model(). Don’t forget to use
gtk_tree_model_filter_convert_iter_to_child_iter() to obtain a
matching iter.


```pony
class val GtkEntryCompletion is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkEntryCompletion.md#L53)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkEntryCompletion val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkEntryCompletion](gtk3-GtkEntryCompletion.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkEntryCompletion.md#L56)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkEntryCompletion val^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkEntryCompletion](gtk3-GtkEntryCompletion.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkEntryCompletion.md#L59)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkEntryCompletion val^
```

#### Returns

* [GtkEntryCompletion](gtk3-GtkEntryCompletion.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkEntryCompletion.md#L63)</span>


```pony
new val create()
: GtkEntryCompletion val^
```

#### Returns

* [GtkEntryCompletion](gtk3-GtkEntryCompletion.md) val^

---

### new_with_area
<span class="source-link">[[Source]](src/gtk3/GtkEntryCompletion.md#L66)</span>


```pony
new val new_with_area(
  area_pony: GtkCellArea val)
: GtkEntryCompletion val^
```
#### Parameters

*   area_pony: [GtkCellArea](gtk3-GtkCellArea.md) val

#### Returns

* [GtkEntryCompletion](gtk3-GtkEntryCompletion.md) val^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkEntryCompletion.md#L49)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkEntryCompletion.md#L51)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### complete
<span class="source-link">[[Source]](src/gtk3/GtkEntryCompletion.md#L70)</span>


Requests a completion operation, or in other words a refiltering of the
current list with completions, using the current key. The completion list
view will be updated accordingly.


```pony
fun box complete()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_compute_prefix
<span class="source-link">[[Source]](src/gtk3/GtkEntryCompletion.md#L78)</span>


    Computes the common prefix that is shared by all rows in @completion
that start with @key. If no row matches @key, %NULL will be returned.
Note that a text column must have been set for this function to work,
see gtk_entry_completion_set_text_column() for details.

    {:argctype, "gchar*"}
{:argname, "rv"}
{:argtype, "utf8"}
{:paramtype, :param}
{:txo, "full"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_compute_prefix()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### delete_action
<span class="source-link">[[Source]](src/gtk3/GtkEntryCompletion.md#L93)</span>


Deletes the action at @index_ from @completion’s action list.

Note that @index_ is a relative position and the position of an
action may have changed since it was inserted.


```pony
fun box delete_action(
  index__pony: I32 val)
: None val
```
#### Parameters

*   index__pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### get_completion_prefix
<span class="source-link">[[Source]](src/gtk3/GtkEntryCompletion.md#L102)</span>


Get the original text entered by the user that triggered
the completion or %NULL if there’s no completion ongoing.


```pony
fun box get_completion_prefix()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_inline_completion
<span class="source-link">[[Source]](src/gtk3/GtkEntryCompletion.md#L117)</span>


Returns whether the common prefix of the possible completions should
be automatically inserted in the entry.


```pony
fun box get_inline_completion()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_inline_selection
<span class="source-link">[[Source]](src/gtk3/GtkEntryCompletion.md#L124)</span>


Returns %TRUE if inline-selection mode is turned on.


```pony
fun box get_inline_selection()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_minimum_key_length
<span class="source-link">[[Source]](src/gtk3/GtkEntryCompletion.md#L130)</span>


Returns the minimum key length as set for @completion.


```pony
fun box get_minimum_key_length()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_model
<span class="source-link">[[Source]](src/gtk3/GtkEntryCompletion.md#L136)</span>


    Returns the model the #GtkEntryCompletion is using as data source.
Returns %NULL if the model is unset.

    {:argctype, "GtkTreeModel*"}
{:argname, "rv"}
{:argtype, "TreeModel"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_model()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### get_popup_completion
<span class="source-link">[[Source]](src/gtk3/GtkEntryCompletion.md#L149)</span>


Returns whether the completions should be presented in a popup window.


```pony
fun box get_popup_completion()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_popup_set_width
<span class="source-link">[[Source]](src/gtk3/GtkEntryCompletion.md#L155)</span>


Returns whether the  completion popup window will be resized to the
width of the entry.


```pony
fun box get_popup_set_width()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_popup_single_match
<span class="source-link">[[Source]](src/gtk3/GtkEntryCompletion.md#L162)</span>


Returns whether the completion popup window will appear even if there is
only a single match.


```pony
fun box get_popup_single_match()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_text_column
<span class="source-link">[[Source]](src/gtk3/GtkEntryCompletion.md#L169)</span>


Returns the column in the model of @completion to get strings from.


```pony
fun box get_text_column()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### pony_NOT_IMPLEMENTED_YET_insert_action_markup
<span class="source-link">[[Source]](src/gtk3/GtkEntryCompletion.md#L175)</span>


    Inserts an action in @completion’s action item list at position @index_
with markup @markup.

    {:doh, %{argctype: "const gchar*", argname: "markup", argtype: "utf8", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_insert_action_markup()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_insert_action_text
<span class="source-link">[[Source]](src/gtk3/GtkEntryCompletion.md#L184)</span>


    Inserts an action in @completion’s action item list at position @index_
with text @text. If you want the action item to have markup, use
gtk_entry_completion_insert_action_markup().

Note that @index_ is a relative position in the list of actions and
the position of an action can change when deleting a different action.

    {:doh, %{argctype: "const gchar*", argname: "text", argtype: "utf8", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_insert_action_text()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### insert_prefix
<span class="source-link">[[Source]](src/gtk3/GtkEntryCompletion.md#L197)</span>


Requests a prefix insertion.


```pony
fun box insert_prefix()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### set_inline_completion
<span class="source-link">[[Source]](src/gtk3/GtkEntryCompletion.md#L203)</span>


Sets whether the common prefix of the possible completions should
be automatically inserted in the entry.


```pony
fun box set_inline_completion(
  inline_completion_pony: Bool val)
: None val
```
#### Parameters

*   inline_completion_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_inline_selection
<span class="source-link">[[Source]](src/gtk3/GtkEntryCompletion.md#L210)</span>


Sets whether it is possible to cycle through the possible completions
inside the entry.


```pony
fun box set_inline_selection(
  inline_selection_pony: Bool val)
: None val
```
#### Parameters

*   inline_selection_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_match_func
<span class="source-link">[[Source]](src/gtk3/GtkEntryCompletion.md#L217)</span>


    Sets the match function for @completion to be @func. The match function
is used to determine if a row should or should not be in the completion
list.

    {:doh, %{argctype: "GtkEntryCompletionMatchFunc", argname: "func", argtype: "EntryCompletionMatchFunc", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "func_data", argtype: "gpointer", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GDestroyNotify", argname: "func_notify", argtype: "GLib.DestroyNotify", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_match_func()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### set_minimum_key_length
<span class="source-link">[[Source]](src/gtk3/GtkEntryCompletion.md#L229)</span>


Requires the length of the search key for @completion to be at least
@length. This is useful for long lists, where completing using a small
key takes a lot of time and will come up with meaningless results anyway
(ie, a too large dataset).


```pony
fun box set_minimum_key_length(
  length_pony: I32 val)
: None val
```
#### Parameters

*   length_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_model
<span class="source-link">[[Source]](src/gtk3/GtkEntryCompletion.md#L238)</span>


    Sets the model for a #GtkEntryCompletion. If @completion already has
a model set, it will remove it before setting the new model.
If model is %NULL, then it will unset the model.

    {:doh, %{argctype: "GtkTreeModel*", argname: "model", argtype: "TreeModel", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_model()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### set_popup_completion
<span class="source-link">[[Source]](src/gtk3/GtkEntryCompletion.md#L248)</span>


Sets whether the completions should be presented in a popup window.


```pony
fun box set_popup_completion(
  popup_completion_pony: Bool val)
: None val
```
#### Parameters

*   popup_completion_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_popup_set_width
<span class="source-link">[[Source]](src/gtk3/GtkEntryCompletion.md#L254)</span>


Sets whether the completion popup window will be resized to be the same
width as the entry.


```pony
fun box set_popup_set_width(
  popup_set_width_pony: Bool val)
: None val
```
#### Parameters

*   popup_set_width_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_popup_single_match
<span class="source-link">[[Source]](src/gtk3/GtkEntryCompletion.md#L261)</span>


Sets whether the completion popup window will appear even if there is
only a single match. You may want to set this to %FALSE if you
are using [inline completion][GtkEntryCompletion--inline-completion].


```pony
fun box set_popup_single_match(
  popup_single_match_pony: Bool val)
: None val
```
#### Parameters

*   popup_single_match_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_text_column
<span class="source-link">[[Source]](src/gtk3/GtkEntryCompletion.md#L269)</span>


Convenience function for setting up the most used case of this code: a
completion list with just strings. This function will set up @completion
to have a list displaying all (and just) strings in the completion list,
and to get those strings from @column in the model of @completion.

This functions creates and adds a #GtkCellRendererText for the selected
column. If you need to set the text column, but don't want the cell
renderer, use g_object_set() to set the #GtkEntryCompletion:text-column
property directly.


```pony
fun box set_text_column(
  column_pony: I32 val)
: None val
```
#### Parameters

*   column_pony: [I32](builtin-I32.md) val

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

