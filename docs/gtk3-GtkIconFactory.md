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
class val GtkIconFactory is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkIconFactory.md#L83)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkIconFactory val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkIconFactory](gtk3-GtkIconFactory.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkIconFactory.md#L86)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkIconFactory val^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkIconFactory](gtk3-GtkIconFactory.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkIconFactory.md#L89)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkIconFactory val^
```

#### Returns

* [GtkIconFactory](gtk3-GtkIconFactory.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkIconFactory.md#L93)</span>


```pony
new val create()
: GtkIconFactory val^
```

#### Returns

* [GtkIconFactory](gtk3-GtkIconFactory.md) val^

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

### pony_NOT_IMPLEMENTED_YET_add
<span class="source-link">[[Source]](src/gtk3/GtkIconFactory.md#L97)</span>


    Adds the given @icon_set to the icon factory, under the name
@stock_id.  @stock_id should be namespaced for your application,
e.g. “myapp-whatever-icon”.  Normally applications create a
#GtkIconFactory, then add it to the list of default factories with
gtk_icon_factory_add_default(). Then they pass the @stock_id to
widgets such as #GtkImage to display the icon. Themes can provide
an icon with the same name (such as "myapp-whatever-icon") to
override your application’s default icons. If an icon already
existed in @factory for @stock_id, it is unreferenced and replaced
with the new @icon_set.

    {:doh, %{argctype: "const gchar*", argname: "stock_id", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkIconSet*", argname: "icon_set", argtype: "IconSet", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_add()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### add_default
<span class="source-link">[[Source]](src/gtk3/GtkIconFactory.md#L115)</span>


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

### pony_NOT_IMPLEMENTED_YET_lookup
<span class="source-link">[[Source]](src/gtk3/GtkIconFactory.md#L126)</span>


    Looks up @stock_id in the icon factory, returning an icon set
if found, otherwise %NULL. For display to the user, you should
use gtk_style_lookup_icon_set() on the #GtkStyle for the
widget that will display the icon, instead of using this
function directly, so that themes are taken into account.

    {:argctype, "GtkIconSet*"}
{:argname, "rv"}
{:argtype, "IconSet"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_lookup()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### remove_default
<span class="source-link">[[Source]](src/gtk3/GtkIconFactory.md#L142)</span>


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

