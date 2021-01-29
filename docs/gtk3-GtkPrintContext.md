# GtkPrintContext
<span class="source-link">[[Source]](src/gtk3/GtkPrintContext.md#L6)</span>

A GtkPrintContext encapsulates context information that is required when
drawing pages for printing, such as the cairo context and important
parameters like page size and resolution. It also lets you easily
create #PangoLayout and #PangoContext objects that match the font metrics
of the cairo surface.

GtkPrintContext objects gets passed to the #GtkPrintOperation::begin-print,
#GtkPrintOperation::end-print, #GtkPrintOperation::request-page-setup and
#GtkPrintOperation::draw-page signals on the #GtkPrintOperation.

## Using GtkPrintContext in a #GtkPrintOperation::draw-page callback

|[<!-- language="C" -->
static void
draw_page (GtkPrintOperation *operation,
	   GtkPrintContext   *context,
	   int                page_nr)
{
  cairo_t *cr;
  PangoLayout *layout;
  PangoFontDescription *desc;

  cr = gtk_print_context_get_cairo_context (context);

  // Draw a red rectangle, as wide as the paper (inside the margins)
  cairo_set_source_rgb (cr, 1.0, 0, 0);
  cairo_rectangle (cr, 0, 0, gtk_print_context_get_width (context), 50);

  cairo_fill (cr);

  // Draw some lines
  cairo_move_to (cr, 20, 10);
  cairo_line_to (cr, 40, 20);
  cairo_arc (cr, 60, 60, 20, 0, M_PI);
  cairo_line_to (cr, 80, 20);

  cairo_set_source_rgb (cr, 0, 0, 0);
  cairo_set_line_width (cr, 5);
  cairo_set_line_cap (cr, CAIRO_LINE_CAP_ROUND);
  cairo_set_line_join (cr, CAIRO_LINE_JOIN_ROUND);

  cairo_stroke (cr);

  // Draw some text
  layout = gtk_print_context_create_pango_layout (context);
  pango_layout_set_text (layout, "Hello World! Printing is easy", -1);
  desc = pango_font_description_from_string ("sans 28");
  pango_layout_set_font_description (layout, desc);
  pango_font_description_free (desc);

  cairo_move_to (cr, 30, 20);
  pango_cairo_layout_path (cr, layout);

  // Font Outline
  cairo_set_source_rgb (cr, 0.93, 1.0, 0.47);
  cairo_set_line_width (cr, 0.5);
  cairo_stroke_preserve (cr);

  // Font Fill
  cairo_set_source_rgb (cr, 0, 0.0, 1.0);
  cairo_fill (cr);

  g_object_unref (layout);
}
]|

Printing support was added in GTK+ 2.10.


```pony
class val GtkPrintContext is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkPrintContext.md#L80)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkPrintContext val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkPrintContext](gtk3-GtkPrintContext.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkPrintContext.md#L83)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkPrintContext val^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkPrintContext](gtk3-GtkPrintContext.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkPrintContext.md#L86)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkPrintContext val^
```

#### Returns

* [GtkPrintContext](gtk3-GtkPrintContext.md) val^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkPrintContext.md#L76)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkPrintContext.md#L78)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### pony_NOT_IMPLEMENTED_YET_create_pango_context
<span class="source-link">[[Source]](src/gtk3/GtkPrintContext.md#L92)</span>


    Creates a new #PangoContext that can be used with the
#GtkPrintContext.

    {:argctype, "PangoContext*"}
{:argname, "rv"}
{:argtype, "Pango.Context"}
{:paramtype, :param}
{:txo, "full"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_create_pango_context()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_create_pango_layout
<span class="source-link">[[Source]](src/gtk3/GtkPrintContext.md#L105)</span>


    Creates a new #PangoLayout that is suitable for use
with the #GtkPrintContext.

    {:argctype, "PangoLayout*"}
{:argname, "rv"}
{:argtype, "Pango.Layout"}
{:paramtype, :param}
{:txo, "full"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_create_pango_layout()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_cairo_context
<span class="source-link">[[Source]](src/gtk3/GtkPrintContext.md#L118)</span>


    Obtains the cairo context that is associated with the
#GtkPrintContext.

    {:argctype, "cairo_t*"}
{:argname, "rv"}
{:argtype, "cairo.Context"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_cairo_context()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_dpi_x
<span class="source-link">[[Source]](src/gtk3/GtkPrintContext.md#L131)</span>


    Obtains the horizontal resolution of the #GtkPrintContext,
in dots per inch.

    {:argctype, "gdouble"}
{:argname, "rv"}
{:argtype, "gdouble"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_dpi_x()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_dpi_y
<span class="source-link">[[Source]](src/gtk3/GtkPrintContext.md#L144)</span>


    Obtains the vertical resolution of the #GtkPrintContext,
in dots per inch.

    {:argctype, "gdouble"}
{:argname, "rv"}
{:argtype, "gdouble"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_dpi_y()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_hard_margins
<span class="source-link">[[Source]](src/gtk3/GtkPrintContext.md#L157)</span>


    Obtains the hardware printer margins of the #GtkPrintContext, in units.

    {:doh, %{argctype: "gdouble*", argname: "top", argtype: "gdouble", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gdouble*", argname: "bottom", argtype: "gdouble", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gdouble*", argname: "left", argtype: "gdouble", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gdouble*", argname: "right", argtype: "gdouble", paramtype: :param, txo: "full"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_hard_margins()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_height
<span class="source-link">[[Source]](src/gtk3/GtkPrintContext.md#L168)</span>


    Obtains the height of the #GtkPrintContext, in pixels.

    {:argctype, "gdouble"}
{:argname, "rv"}
{:argtype, "gdouble"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_height()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_page_setup
<span class="source-link">[[Source]](src/gtk3/GtkPrintContext.md#L180)</span>


    Obtains the #GtkPageSetup that determines the page
dimensions of the #GtkPrintContext.

    {:argctype, "GtkPageSetup*"}
{:argname, "rv"}
{:argtype, "PageSetup"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_page_setup()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_pango_fontmap
<span class="source-link">[[Source]](src/gtk3/GtkPrintContext.md#L193)</span>


    Returns a #PangoFontMap that is suitable for use
with the #GtkPrintContext.

    {:argctype, "PangoFontMap*"}
{:argname, "rv"}
{:argtype, "Pango.FontMap"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_pango_fontmap()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_width
<span class="source-link">[[Source]](src/gtk3/GtkPrintContext.md#L206)</span>


    Obtains the width of the #GtkPrintContext, in pixels.

    {:argctype, "gdouble"}
{:argname, "rv"}
{:argtype, "gdouble"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_width()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_cairo_context
<span class="source-link">[[Source]](src/gtk3/GtkPrintContext.md#L218)</span>


    Sets a new cairo context on a print context.

This function is intended to be used when implementing
an internal print preview, it is not needed for printing,
since GTK+ itself creates a suitable cairo context in that
case.

    {:doh, %{argctype: "cairo_t*", argname: "cr", argtype: "cairo.Context", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "double", argname: "dpi_x", argtype: "gdouble", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "double", argname: "dpi_y", argtype: "gdouble", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_cairo_context()
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

