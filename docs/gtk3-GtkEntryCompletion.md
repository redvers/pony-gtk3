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
class ref GtkEntryCompletion is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkEntryCompletion.md#L52)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkEntryCompletion ref^
```

#### Returns

* [GtkEntryCompletion](gtk3-GtkEntryCompletion.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkEntryCompletion.md#L55)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkEntryCompletion ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkEntryCompletion](gtk3-GtkEntryCompletion.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkEntryCompletion.md#L59)</span>


```pony
new ref create()
: GtkEntryCompletion ref^
```

#### Returns

* [GtkEntryCompletion](gtk3-GtkEntryCompletion.md) ref^

---

### new_with_area
<span class="source-link">[[Source]](src/gtk3/GtkEntryCompletion.md#L62)</span>


```pony
new ref new_with_area(
  area_pony: GtkCellArea ref)
: GtkEntryCompletion ref^
```
#### Parameters

*   area_pony: [GtkCellArea](gtk3-GtkCellArea.md) ref

#### Returns

* [GtkEntryCompletion](gtk3-GtkEntryCompletion.md) ref^

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
<span class="source-link">[[Source]](src/gtk3/GtkEntryCompletion.md#L66)</span>


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

### delete_action
<span class="source-link">[[Source]](src/gtk3/GtkEntryCompletion.md#L81)</span>


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
<span class="source-link">[[Source]](src/gtk3/GtkEntryCompletion.md#L90)</span>


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
<span class="source-link">[[Source]](src/gtk3/GtkEntryCompletion.md#L106)</span>


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
<span class="source-link">[[Source]](src/gtk3/GtkEntryCompletion.md#L113)</span>


Returns %TRUE if inline-selection mode is turned on.


```pony
fun box get_inline_selection()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_minimum_key_length
<span class="source-link">[[Source]](src/gtk3/GtkEntryCompletion.md#L119)</span>


Returns the minimum key length as set for @completion.


```pony
fun box get_minimum_key_length()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### get_popup_completion
<span class="source-link">[[Source]](src/gtk3/GtkEntryCompletion.md#L132)</span>


Returns whether the completions should be presented in a popup window.


```pony
fun box get_popup_completion()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_popup_set_width
<span class="source-link">[[Source]](src/gtk3/GtkEntryCompletion.md#L138)</span>


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
<span class="source-link">[[Source]](src/gtk3/GtkEntryCompletion.md#L145)</span>


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
<span class="source-link">[[Source]](src/gtk3/GtkEntryCompletion.md#L152)</span>


Returns the column in the model of @completion to get strings from.


```pony
fun box get_text_column()
: I32 val
```

#### Returns

* [I32](builtin-I32.md) val

---

### insert_prefix
<span class="source-link">[[Source]](src/gtk3/GtkEntryCompletion.md#L166)</span>


Requests a prefix insertion.


```pony
fun box insert_prefix()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### set_inline_completion
<span class="source-link">[[Source]](src/gtk3/GtkEntryCompletion.md#L172)</span>


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
<span class="source-link">[[Source]](src/gtk3/GtkEntryCompletion.md#L179)</span>


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

### set_minimum_key_length
<span class="source-link">[[Source]](src/gtk3/GtkEntryCompletion.md#L192)</span>


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

### set_popup_completion
<span class="source-link">[[Source]](src/gtk3/GtkEntryCompletion.md#L205)</span>


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
<span class="source-link">[[Source]](src/gtk3/GtkEntryCompletion.md#L211)</span>


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
<span class="source-link">[[Source]](src/gtk3/GtkEntryCompletion.md#L218)</span>


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
<span class="source-link">[[Source]](src/gtk3/GtkEntryCompletion.md#L226)</span>


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

