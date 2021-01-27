# GtkIconFactory
<span class="source-link">[[Source]](src/gtk3/GtkIconFactory.md#L6)</span>

An icon factory manages a collection of #GtkIconSet; a #GtkIconSet manages a
set of variants of a particular icon (i.e. a #GtkIconSet contains variants for
different sizes and widget states). Icons in an icon factory are named by a
stock ID, which is a simple string identifying the icon. Each #GtkStyle has a
list of #GtkIconFactory derived from the current theme; those icon factories
are consulted first when searching for an icon. If the theme doesn’t set a
particular icon, GTK+ looks for the icon in a list of default icon factories,
maintained by gtk_icon_factory_add_default() and
gtk_icon_factory_remove_default(). Applications with icons should add a default
icon factory with their icons, which will allow themes to override the icons
for the application.

To display an icon, always use gtk_style_lookup_icon_set() on the widget that
will display the icon, or the convenience function
gtk_widget_render_icon(). These functions take the theme into account when
looking up the icon to use for a given stock ID.

# GtkIconFactory as GtkBuildable # {#GtkIconFactory-BUILDER-UI}

GtkIconFactory supports a custom <sources> element, which can contain
multiple <source> elements. The following attributes are allowed:

- stock-id

    The stock id of the source, a string. This attribute is
    mandatory

- filename

    The filename of the source, a string.  This attribute is
    optional

- icon-name

    The icon name for the source, a string.  This attribute is
    optional.

- size

    Size of the icon, a #GtkIconSize enum value.  This attribute is
    optional.

- direction

    Direction of the source, a #GtkTextDirection enum value.  This
    attribute is optional.

- state

    State of the source, a #GtkStateType enum value.  This
    attribute is optional.


## A #GtkIconFactory UI definition fragment. ##

|[
<object class="GtkIconFactory" id="iconfactory1">
  <sources>
    <source stock-id="apple-red" filename="apple-red.png"/>
  </sources>
</object>
<object class="GtkWindow" id="window1">
  <child>
    <object class="GtkButton" id="apple_button">
      <property name="label">apple-red</property>
      <property name="use-stock">True</property>
    </object>
  </child>
</object>
]|


```pony
class ref GtkIconFactory is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkIconFactory.md#L82)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkIconFactory ref^
```

#### Returns

* [GtkIconFactory](gtk3-GtkIconFactory.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkIconFactory.md#L85)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkIconFactory ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkIconFactory](gtk3-GtkIconFactory.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkIconFactory.md#L89)</span>


```pony
new ref create()
: GtkIconFactory ref^
```

#### Returns

* [GtkIconFactory](gtk3-GtkIconFactory.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkIconFactory.md#L79)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkIconFactory.md#L81)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### add_default
<span class="source-link">[[Source]](src/gtk3/GtkIconFactory.md#L98)</span>


Adds an icon factory to the list of icon factories searched by
gtk_style_lookup_icon_set(). This means that, for example,
gtk_image_new_from_stock() will be able to find icons in @factory.
There will normally be an icon factory added for each library or
application that comes with icons. The default icon factories
can be overridden by themes.


```pony
fun box add_default()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### remove_default
<span class="source-link">[[Source]](src/gtk3/GtkIconFactory.md#L116)</span>


Removes an icon factory from the list of default icon
factories. Not normally used; you might use it for a library that
can be unloaded or shut down.


```pony
fun box remove_default()
: None val
```

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

