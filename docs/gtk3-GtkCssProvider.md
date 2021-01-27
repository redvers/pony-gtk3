# GtkCssProvider
<span class="source-link">[[Source]](src/gtk3/GtkCssProvider.md#L6)</span>

GtkCssProvider is an object implementing the #GtkStyleProvider interface.
It is able to parse [CSS-like][css-overview] input in order to style widgets.

An application can make GTK+ parse a specific CSS style sheet by calling
gtk_css_provider_load_from_file() or gtk_css_provider_load_from_resource()
and adding the provider with gtk_style_context_add_provider() or
gtk_style_context_add_provider_for_screen().

In addition, certain files will be read when GTK+ is initialized. First, the
file `$XDG_CONFIG_HOME/gtk-3.0/gtk.css` is loaded if it exists. Then, GTK+
loads the first existing file among
`XDG_DATA_HOME/themes/THEME/gtk-VERSION/gtk.css`,
`$HOME/.themes/THEME/gtk-VERSION/gtk.css`,
`$XDG_DATA_DIRS/themes/THEME/gtk-VERSION/gtk.css` and
`DATADIR/share/themes/THEME/gtk-VERSION/gtk.css`, where `THEME` is the name of
the current theme (see the #GtkSettings:gtk-theme-name setting), `DATADIR`
is the prefix configured when GTK+ was compiled (unless overridden by the
`GTK_DATA_PREFIX` environment variable), and `VERSION` is the GTK+ version number.
If no file is found for the current version, GTK+ tries older versions all the
way back to 3.0.

In the same way, GTK+ tries to load a gtk-keys.css file for the current
key theme, as defined by #GtkSettings:gtk-key-theme-name.


```pony
class ref GtkCssProvider is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkCssProvider.md#L35)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkCssProvider ref^
```

#### Returns

* [GtkCssProvider](gtk3-GtkCssProvider.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkCssProvider.md#L38)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkCssProvider ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkCssProvider](gtk3-GtkCssProvider.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkCssProvider.md#L42)</span>


```pony
new ref create()
: GtkCssProvider ref^
```

#### Returns

* [GtkCssProvider](gtk3-GtkCssProvider.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkCssProvider.md#L32)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkCssProvider.md#L34)</span>


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

