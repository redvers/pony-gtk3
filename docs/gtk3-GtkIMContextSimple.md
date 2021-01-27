# GtkIMContextSimple
<span class="source-link">[[Source]](src/gtk3/GtkIMContextSimple.md#L6)</span>

GtkIMContextSimple is a simple input method context supporting table-based
input methods. It has a built-in table of compose sequences that is derived
from the X11 Compose files.

GtkIMContextSimple reads additional compose sequences from the first of the
following files that is found: ~/.config/gtk-3.0/Compose, ~/.XCompose,
/usr/share/X11/locale/$locale/Compose (for locales that have a nontrivial
Compose file). The syntax of these files is described in the Compose(5)
manual page.

GtkIMContextSimple also supports numeric entry of Unicode characters
by typing Ctrl-Shift-u, followed by a hexadecimal Unicode codepoint.
For example, Ctrl-Shift-u 1 2 3 Enter yields U+0123 LATIN SMALL LETTER
G WITH CEDILLA, i.e. ģ.


```pony
class ref GtkIMContextSimple is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkIMContextSimple.md#L26)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkIMContextSimple ref^
```

#### Returns

* [GtkIMContextSimple](gtk3-GtkIMContextSimple.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkIMContextSimple.md#L29)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkIMContextSimple ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkIMContextSimple](gtk3-GtkIMContextSimple.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkIMContextSimple.md#L33)</span>


```pony
new ref create()
: GtkIMContextSimple ref^
```

#### Returns

* [GtkIMContextSimple](gtk3-GtkIMContextSimple.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkIMContextSimple.md#L23)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkIMContextSimple.md#L25)</span>


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

