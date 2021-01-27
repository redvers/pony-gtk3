# GtkRecentFilter
<span class="source-link">[[Source]](src/gtk3/GtkRecentFilter.md#L6)</span>
```pony
class ref GtkRecentFilter is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkRecentFilter.md#L10)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkRecentFilter ref^
```

#### Returns

* [GtkRecentFilter](gtk3-GtkRecentFilter.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkRecentFilter.md#L13)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkRecentFilter ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkRecentFilter](gtk3-GtkRecentFilter.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkRecentFilter.md#L17)</span>


```pony
new ref create()
: GtkRecentFilter ref^
```

#### Returns

* [GtkRecentFilter](gtk3-GtkRecentFilter.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkRecentFilter.md#L7)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkRecentFilter.md#L9)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### add_age
<span class="source-link">[[Source]](src/gtk3/GtkRecentFilter.md#L21)</span>


Adds a rule that allows resources based on their age - that is, the number
of days elapsed since they were last modified.


```pony
fun box add_age(
  days_pony: I32 val)
: None val
```
#### Parameters

*   days_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### add_pixbuf_formats
<span class="source-link">[[Source]](src/gtk3/GtkRecentFilter.md#L51)</span>


Adds a rule allowing image files in the formats supported
by GdkPixbuf.


```pony
fun box add_pixbuf_formats()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### get_name
<span class="source-link">[[Source]](src/gtk3/GtkRecentFilter.md#L62)</span>


Gets the human-readable name for the filter.
See gtk_recent_filter_set_name().


```pony
fun box get_name()
: String val
```

#### Returns

* [String](builtin-String.md) val

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

