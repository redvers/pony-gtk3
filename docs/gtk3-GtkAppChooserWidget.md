# GtkAppChooserWidget
<span class="source-link">[[Source]](src/gtk3/GtkAppChooserWidget.md#L6)</span>
```pony
class ref GtkAppChooserWidget is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkAppChooserWidget.md#L10)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkAppChooserWidget ref^
```

#### Returns

* [GtkAppChooserWidget](gtk3-GtkAppChooserWidget.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkAppChooserWidget.md#L13)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkAppChooserWidget ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkAppChooserWidget](gtk3-GtkAppChooserWidget.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkAppChooserWidget.md#L17)</span>


```pony
new ref create(
  content_type_pony: String val)
: GtkAppChooserWidget ref^
```
#### Parameters

*   content_type_pony: [String](builtin-String.md) val

#### Returns

* [GtkAppChooserWidget](gtk3-GtkAppChooserWidget.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkAppChooserWidget.md#L7)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkAppChooserWidget.md#L9)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### get_default_text
<span class="source-link">[[Source]](src/gtk3/GtkAppChooserWidget.md#L21)</span>


Returns the text that is shown if there are not applications
that can handle the content type.


```pony
fun box get_default_text()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_show_all
<span class="source-link">[[Source]](src/gtk3/GtkAppChooserWidget.md#L30)</span>


Returns the current value of the #GtkAppChooserWidget:show-all
property.


```pony
fun box get_show_all()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_show_default
<span class="source-link">[[Source]](src/gtk3/GtkAppChooserWidget.md#L37)</span>


Returns the current value of the #GtkAppChooserWidget:show-default
property.


```pony
fun box get_show_default()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_show_fallback
<span class="source-link">[[Source]](src/gtk3/GtkAppChooserWidget.md#L44)</span>


Returns the current value of the #GtkAppChooserWidget:show-fallback
property.


```pony
fun box get_show_fallback()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_show_other
<span class="source-link">[[Source]](src/gtk3/GtkAppChooserWidget.md#L51)</span>


Returns the current value of the #GtkAppChooserWidget:show-other
property.


```pony
fun box get_show_other()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_show_recommended
<span class="source-link">[[Source]](src/gtk3/GtkAppChooserWidget.md#L58)</span>


Returns the current value of the #GtkAppChooserWidget:show-recommended
property.


```pony
fun box get_show_recommended()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### set_show_all
<span class="source-link">[[Source]](src/gtk3/GtkAppChooserWidget.md#L69)</span>


Sets whether the app chooser should show all applications
in a flat list.


```pony
fun box set_show_all(
  setting_pony: Bool val)
: None val
```
#### Parameters

*   setting_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_show_default
<span class="source-link">[[Source]](src/gtk3/GtkAppChooserWidget.md#L76)</span>


Sets whether the app chooser should show the default handler
for the content type in a separate section.


```pony
fun box set_show_default(
  setting_pony: Bool val)
: None val
```
#### Parameters

*   setting_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_show_fallback
<span class="source-link">[[Source]](src/gtk3/GtkAppChooserWidget.md#L83)</span>


Sets whether the app chooser should show related applications
for the content type in a separate section.


```pony
fun box set_show_fallback(
  setting_pony: Bool val)
: None val
```
#### Parameters

*   setting_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_show_other
<span class="source-link">[[Source]](src/gtk3/GtkAppChooserWidget.md#L90)</span>


Sets whether the app chooser should show applications
which are unrelated to the content type.


```pony
fun box set_show_other(
  setting_pony: Bool val)
: None val
```
#### Parameters

*   setting_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_show_recommended
<span class="source-link">[[Source]](src/gtk3/GtkAppChooserWidget.md#L97)</span>


Sets whether the app chooser should show recommended applications
for the content type in a separate section.


```pony
fun box set_show_recommended(
  setting_pony: Bool val)
: None val
```
#### Parameters

*   setting_pony: [Bool](builtin-Bool.md) val

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

