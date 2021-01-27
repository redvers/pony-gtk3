# GtkPlacesSidebar
<span class="source-link">[[Source]](src/gtk3/GtkPlacesSidebar.md#L6)</span>
```pony
class ref GtkPlacesSidebar is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkPlacesSidebar.md#L10)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkPlacesSidebar ref^
```

#### Returns

* [GtkPlacesSidebar](gtk3-GtkPlacesSidebar.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkPlacesSidebar.md#L13)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkPlacesSidebar ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkPlacesSidebar](gtk3-GtkPlacesSidebar.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkPlacesSidebar.md#L17)</span>


```pony
new ref create()
: GtkPlacesSidebar ref^
```

#### Returns

* [GtkPlacesSidebar](gtk3-GtkPlacesSidebar.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkPlacesSidebar.md#L7)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkPlacesSidebar.md#L9)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### get_local_only
<span class="source-link">[[Source]](src/gtk3/GtkPlacesSidebar.md#L25)</span>


```pony
fun box get_local_only()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_show_connect_to_server
<span class="source-link">[[Source]](src/gtk3/GtkPlacesSidebar.md#L49)</span>


```pony
fun box get_show_connect_to_server()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_show_desktop
<span class="source-link">[[Source]](src/gtk3/GtkPlacesSidebar.md#L52)</span>


```pony
fun box get_show_desktop()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_show_enter_location
<span class="source-link">[[Source]](src/gtk3/GtkPlacesSidebar.md#L55)</span>


```pony
fun box get_show_enter_location()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_show_other_locations
<span class="source-link">[[Source]](src/gtk3/GtkPlacesSidebar.md#L58)</span>


```pony
fun box get_show_other_locations()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_show_recent
<span class="source-link">[[Source]](src/gtk3/GtkPlacesSidebar.md#L61)</span>


```pony
fun box get_show_recent()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_show_starred_location
<span class="source-link">[[Source]](src/gtk3/GtkPlacesSidebar.md#L64)</span>


```pony
fun box get_show_starred_location()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_show_trash
<span class="source-link">[[Source]](src/gtk3/GtkPlacesSidebar.md#L67)</span>


```pony
fun box get_show_trash()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### set_local_only
<span class="source-link">[[Source]](src/gtk3/GtkPlacesSidebar.md#L85)</span>


```pony
fun box set_local_only(
  local_only_pony: Bool val)
: None val
```
#### Parameters

*   local_only_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_show_connect_to_server
<span class="source-link">[[Source]](src/gtk3/GtkPlacesSidebar.md#L96)</span>


```pony
fun box set_show_connect_to_server(
  show_connect_to_server_pony: Bool val)
: None val
```
#### Parameters

*   show_connect_to_server_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_show_desktop
<span class="source-link">[[Source]](src/gtk3/GtkPlacesSidebar.md#L99)</span>


```pony
fun box set_show_desktop(
  show_desktop_pony: Bool val)
: None val
```
#### Parameters

*   show_desktop_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_show_enter_location
<span class="source-link">[[Source]](src/gtk3/GtkPlacesSidebar.md#L102)</span>


```pony
fun box set_show_enter_location(
  show_enter_location_pony: Bool val)
: None val
```
#### Parameters

*   show_enter_location_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_show_other_locations
<span class="source-link">[[Source]](src/gtk3/GtkPlacesSidebar.md#L105)</span>


```pony
fun box set_show_other_locations(
  show_other_locations_pony: Bool val)
: None val
```
#### Parameters

*   show_other_locations_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_show_recent
<span class="source-link">[[Source]](src/gtk3/GtkPlacesSidebar.md#L108)</span>


```pony
fun box set_show_recent(
  show_recent_pony: Bool val)
: None val
```
#### Parameters

*   show_recent_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_show_starred_location
<span class="source-link">[[Source]](src/gtk3/GtkPlacesSidebar.md#L111)</span>


```pony
fun box set_show_starred_location(
  show_starred_location_pony: Bool val)
: None val
```
#### Parameters

*   show_starred_location_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_show_trash
<span class="source-link">[[Source]](src/gtk3/GtkPlacesSidebar.md#L114)</span>


```pony
fun box set_show_trash(
  show_trash_pony: Bool val)
: None val
```
#### Parameters

*   show_trash_pony: [Bool](builtin-Bool.md) val

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

