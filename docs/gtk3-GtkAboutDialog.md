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


Returns the comments string.


```pony
fun box get_comments()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_copyright
<span class="source-link">[[Source]](src/gtk3/GtkAboutDialog.md#L48)</span>


Returns the copyright string.


```pony
fun box get_copyright()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_license
<span class="source-link">[[Source]](src/gtk3/GtkAboutDialog.md#L63)</span>


Returns the license information.


```pony
fun box get_license()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_logo_icon_name
<span class="source-link">[[Source]](src/gtk3/GtkAboutDialog.md#L85)</span>


Returns the icon name displayed as logo in the about dialog.


```pony
fun box get_logo_icon_name()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_program_name
<span class="source-link">[[Source]](src/gtk3/GtkAboutDialog.md#L93)</span>


Returns the program name displayed in the about dialog.


```pony
fun box get_program_name()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_translator_credits
<span class="source-link">[[Source]](src/gtk3/GtkAboutDialog.md#L101)</span>


Returns the translator credits string which is displayed
in the translators tab of the secondary credits dialog.


```pony
fun box get_translator_credits()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_version
<span class="source-link">[[Source]](src/gtk3/GtkAboutDialog.md#L110)</span>


Returns the version string.


```pony
fun box get_version()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_website
<span class="source-link">[[Source]](src/gtk3/GtkAboutDialog.md#L118)</span>


Returns the website URL.


```pony
fun box get_website()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_website_label
<span class="source-link">[[Source]](src/gtk3/GtkAboutDialog.md#L126)</span>


Returns the label used for the website link.


```pony
fun box get_website_label()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_wrap_license
<span class="source-link">[[Source]](src/gtk3/GtkAboutDialog.md#L134)</span>


Returns whether the license text in @about is
automatically wrapped.


```pony
fun box get_wrap_license()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### set_wrap_license
<span class="source-link">[[Source]](src/gtk3/GtkAboutDialog.md#L197)</span>


Sets whether the license text in @about is
automatically wrapped.


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

