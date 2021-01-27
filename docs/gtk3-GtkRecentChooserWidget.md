# GtkRecentChooserWidget
<span class="source-link">[[Source]](src/gtk3/GtkRecentChooserWidget.md#L6)</span>
```pony
class ref GtkRecentChooserWidget is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkRecentChooserWidget.md#L10)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkRecentChooserWidget ref^
```

#### Returns

* [GtkRecentChooserWidget](gtk3-GtkRecentChooserWidget.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkRecentChooserWidget.md#L13)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkRecentChooserWidget ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkRecentChooserWidget](gtk3-GtkRecentChooserWidget.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkRecentChooserWidget.md#L17)</span>


```pony
new ref create()
: GtkRecentChooserWidget ref^
```

#### Returns

* [GtkRecentChooserWidget](gtk3-GtkRecentChooserWidget.md) ref^

---

### new_for_manager
<span class="source-link">[[Source]](src/gtk3/GtkRecentChooserWidget.md#L20)</span>


```pony
new ref new_for_manager(
  manager_pony: GtkRecentManager ref)
: GtkRecentChooserWidget ref^
```
#### Parameters

*   manager_pony: [GtkRecentManager](gtk3-GtkRecentManager.md) ref

#### Returns

* [GtkRecentChooserWidget](gtk3-GtkRecentChooserWidget.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkRecentChooserWidget.md#L7)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkRecentChooserWidget.md#L9)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

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
<span class="source-link">[[Source]](src/gtk3/GtkWidget.md#L10)</span>


```pony
fun box destroy()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### signal_connect\[V: [Any](builtin-Any.md) #share\]
<span class="source-link">[[Source]](src/gtk3/GtkWidget.md#L13)</span>


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

