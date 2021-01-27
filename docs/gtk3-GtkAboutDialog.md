# GtkAboutDialog
<span class="source-link">[[Source]](src/gtk3/GtkAboutDialog.md#L6)</span>
```pony
class ref GtkAboutDialog is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkAboutDialog.md#L10)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkAboutDialog ref^
```

#### Returns

* [GtkAboutDialog](gtk3-GtkAboutDialog.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkAboutDialog.md#L13)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkAboutDialog ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkAboutDialog](gtk3-GtkAboutDialog.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkAboutDialog.md#L17)</span>


```pony
new ref create()
: GtkAboutDialog ref^
```

#### Returns

* [GtkAboutDialog](gtk3-GtkAboutDialog.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkAboutDialog.md#L7)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkAboutDialog.md#L9)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### get_comments
<span class="source-link">[[Source]](src/gtk3/GtkAboutDialog.md#L40)</span>


```pony
fun box get_comments()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_copyright
<span class="source-link">[[Source]](src/gtk3/GtkAboutDialog.md#L45)</span>


```pony
fun box get_copyright()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_license
<span class="source-link">[[Source]](src/gtk3/GtkAboutDialog.md#L57)</span>


```pony
fun box get_license()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_logo_icon_name
<span class="source-link">[[Source]](src/gtk3/GtkAboutDialog.md#L76)</span>


```pony
fun box get_logo_icon_name()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_program_name
<span class="source-link">[[Source]](src/gtk3/GtkAboutDialog.md#L81)</span>


```pony
fun box get_program_name()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_translator_credits
<span class="source-link">[[Source]](src/gtk3/GtkAboutDialog.md#L86)</span>


```pony
fun box get_translator_credits()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_version
<span class="source-link">[[Source]](src/gtk3/GtkAboutDialog.md#L91)</span>


```pony
fun box get_version()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_website
<span class="source-link">[[Source]](src/gtk3/GtkAboutDialog.md#L96)</span>


```pony
fun box get_website()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_website_label
<span class="source-link">[[Source]](src/gtk3/GtkAboutDialog.md#L101)</span>


```pony
fun box get_website_label()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_wrap_license
<span class="source-link">[[Source]](src/gtk3/GtkAboutDialog.md#L106)</span>


```pony
fun box get_wrap_license()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### set_wrap_license
<span class="source-link">[[Source]](src/gtk3/GtkAboutDialog.md#L165)</span>


```pony
fun box set_wrap_license(
  wrap_license_pony: Bool val)
: None val
```
#### Parameters

*   wrap_license_pony: [Bool](builtin-Bool.md) val

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

