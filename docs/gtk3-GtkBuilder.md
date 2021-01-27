# GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkBuilder.md#L6)</span>
```pony
class ref GtkBuilder is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkBuilder.md#L10)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkBuilder ref^
```

#### Returns

* [GtkBuilder](gtk3-GtkBuilder.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkBuilder.md#L13)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkBuilder ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkBuilder](gtk3-GtkBuilder.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkBuilder.md#L17)</span>


```pony
new ref create()
: GtkBuilder ref^
```

#### Returns

* [GtkBuilder](gtk3-GtkBuilder.md) ref^

---

### new_from_file
<span class="source-link">[[Source]](src/gtk3/GtkBuilder.md#L20)</span>


```pony
new ref new_from_file(
  filename_pony: String val)
: GtkBuilder ref^
```
#### Parameters

*   filename_pony: [String](builtin-String.md) val

#### Returns

* [GtkBuilder](gtk3-GtkBuilder.md) ref^

---

### new_from_resource
<span class="source-link">[[Source]](src/gtk3/GtkBuilder.md#L23)</span>


```pony
new ref new_from_resource(
  resource_path_pony: String val)
: GtkBuilder ref^
```
#### Parameters

*   resource_path_pony: [String](builtin-String.md) val

#### Returns

* [GtkBuilder](gtk3-GtkBuilder.md) ref^

---

### new_from_string
<span class="source-link">[[Source]](src/gtk3/GtkBuilder.md#L26)</span>


```pony
new ref new_from_string(
  string_pony: String val,
  length_pony: I64 val)
: GtkBuilder ref^
```
#### Parameters

*   string_pony: [String](builtin-String.md) val
*   length_pony: [I64](builtin-I64.md) val

#### Returns

* [GtkBuilder](gtk3-GtkBuilder.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkBuilder.md#L7)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkBuilder.md#L9)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### add_callback_symbol
<span class="source-link">[[Source]](src/gtk3/GtkBuilder.md#L30)</span>


Adds the @callback_symbol to the scope of @builder under the given @callback_name.

Using this function overrides the behavior of gtk_builder_connect_signals()
for any callback symbols that are added. Using this method allows for better
encapsulation as it does not require that callback symbols be declared in
the global namespace.


```pony
fun box add_callback_symbol(
  callback_name: String val,
  callback_symbol: @{(GObjectREF)} val)
: None val
```
#### Parameters

*   callback_name: [String](builtin-String.md) val
*   callback_symbol: @{(GObjectREF)} val

#### Returns

* [None](builtin-None.md) val

---

### connect_signals
<span class="source-link">[[Source]](src/gtk3/GtkBuilder.md#L76)</span>


This method is a simpler variation of gtk_builder_connect_signals_full().
It uses symbols explicitly added to @builder with prior calls to
gtk_builder_add_callback_symbol(). In the case that symbols are not
explicitly added; it uses #GModule’s introspective features (by opening the module %NULL)
to look at the application’s symbol table. From here it tries to match
the signal handler names given in the interface description with
symbols in the application and connects the signals. Note that this
function can only be called once, subsequent calls will do nothing.

Note that unless gtk_builder_add_callback_symbol() is called for
all signal callbacks which are referenced by the loaded XML, this
function will require that #GModule be supported on the platform.

If you rely on #GModule support to lookup callbacks in the symbol table,
the following details should be noted:

When compiling applications for Windows, you must declare signal callbacks
with #G_MODULE_EXPORT, or they will not be put in the symbol table.
On Linux and Unices, this is not necessary; applications should instead
be compiled with the -Wl,--export-dynamic CFLAGS, and linked against
gmodule-export-2.0.


```pony
fun box connect_signals()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### get_translation_domain
<span class="source-link">[[Source]](src/gtk3/GtkBuilder.md#L140)</span>


Gets the translation domain of @builder.


```pony
fun box get_translation_domain()
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

