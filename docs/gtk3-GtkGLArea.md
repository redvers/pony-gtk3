# GtkGLArea
<span class="source-link">[[Source]](src/gtk3/GtkGLArea.md#L6)</span>
```pony
class ref GtkGLArea is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkGLArea.md#L10)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkGLArea ref^
```

#### Returns

* [GtkGLArea](gtk3-GtkGLArea.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkGLArea.md#L13)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkGLArea ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkGLArea](gtk3-GtkGLArea.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkGLArea.md#L17)</span>


```pony
new ref create()
: GtkGLArea ref^
```

#### Returns

* [GtkGLArea](gtk3-GtkGLArea.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkGLArea.md#L7)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkGLArea.md#L9)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### attach_buffers
<span class="source-link">[[Source]](src/gtk3/GtkGLArea.md#L21)</span>


Ensures that the @area framebuffer object is made the current draw
and read target, and that all the required buffers for the @area
are created and bound to the frambuffer.

This function is automatically called before emitting the
#GtkGLArea::render signal, and doesn't normally need to be called
by application code.


```pony
fun box attach_buffers()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### get_auto_render
<span class="source-link">[[Source]](src/gtk3/GtkGLArea.md#L33)</span>


Returns whether the area is in auto render mode or not.


```pony
fun box get_auto_render()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_has_alpha
<span class="source-link">[[Source]](src/gtk3/GtkGLArea.md#L53)</span>


Returns whether the area has an alpha component.


```pony
fun box get_has_alpha()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_has_depth_buffer
<span class="source-link">[[Source]](src/gtk3/GtkGLArea.md#L59)</span>


Returns whether the area has a depth buffer.


```pony
fun box get_has_depth_buffer()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_has_stencil_buffer
<span class="source-link">[[Source]](src/gtk3/GtkGLArea.md#L65)</span>


Returns whether the area has a stencil buffer.


```pony
fun box get_has_stencil_buffer()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_use_es
<span class="source-link">[[Source]](src/gtk3/GtkGLArea.md#L76)</span>


Retrieves the value set by gtk_gl_area_set_use_es().


```pony
fun box get_use_es()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### make_current
<span class="source-link">[[Source]](src/gtk3/GtkGLArea.md#L82)</span>


Ensures that the #GdkGLContext used by @area is associated with
the #GtkGLArea.

This function is automatically called before emitting the
#GtkGLArea::render signal, and doesn't normally need to be called
by application code.


```pony
fun box make_current()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### queue_render
<span class="source-link">[[Source]](src/gtk3/GtkGLArea.md#L93)</span>


Marks the currently rendered data (if any) as invalid, and queues
a redraw of the widget, ensuring that the #GtkGLArea::render signal
is emitted during the draw.

This is only needed when the gtk_gl_area_set_auto_render() has
been called with a %FALSE value. The default behaviour is to
emit #GtkGLArea::render on each draw.


```pony
fun box queue_render()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### set_auto_render
<span class="source-link">[[Source]](src/gtk3/GtkGLArea.md#L105)</span>


If @auto_render is %TRUE the #GtkGLArea::render signal will be
emitted every time the widget draws. This is the default and is
useful if drawing the widget is faster.

If @auto_render is %FALSE the data from previous rendering is kept
around and will be used for drawing the widget the next time,
unless the window is resized. In order to force a rendering
gtk_gl_area_queue_render() must be called. This mode is useful when
the scene changes seldomly, but takes a long time to redraw.


```pony
fun box set_auto_render(
  auto_render_pony: Bool val)
: None val
```
#### Parameters

*   auto_render_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_has_alpha
<span class="source-link">[[Source]](src/gtk3/GtkGLArea.md#L123)</span>


If @has_alpha is %TRUE the buffer allocated by the widget will have
an alpha channel component, and when rendering to the window the
result will be composited over whatever is below the widget.

If @has_alpha is %FALSE there will be no alpha channel, and the
buffer will fully replace anything below the widget.


```pony
fun box set_has_alpha(
  has_alpha_pony: Bool val)
: None val
```
#### Parameters

*   has_alpha_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_has_depth_buffer
<span class="source-link">[[Source]](src/gtk3/GtkGLArea.md#L134)</span>


If @has_depth_buffer is %TRUE the widget will allocate and
enable a depth buffer for the target framebuffer. Otherwise
there will be none.


```pony
fun box set_has_depth_buffer(
  has_depth_buffer_pony: Bool val)
: None val
```
#### Parameters

*   has_depth_buffer_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_has_stencil_buffer
<span class="source-link">[[Source]](src/gtk3/GtkGLArea.md#L142)</span>


If @has_stencil_buffer is %TRUE the widget will allocate and
enable a stencil buffer for the target framebuffer. Otherwise
there will be none.


```pony
fun box set_has_stencil_buffer(
  has_stencil_buffer_pony: Bool val)
: None val
```
#### Parameters

*   has_stencil_buffer_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_required_version
<span class="source-link">[[Source]](src/gtk3/GtkGLArea.md#L150)</span>


Sets the required version of OpenGL to be used when creating the context
for the widget.

This function must be called before the area has been realized.


```pony
fun box set_required_version(
  major_pony: I32 val,
  minor_pony: I32 val)
: None val
```
#### Parameters

*   major_pony: [I32](builtin-I32.md) val
*   minor_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_use_es
<span class="source-link">[[Source]](src/gtk3/GtkGLArea.md#L159)</span>


Sets whether the @area should create an OpenGL or an OpenGL ES context.

You should check the capabilities of the #GdkGLContext before drawing
with either API.


```pony
fun box set_use_es(
  use_es_pony: Bool val)
: None val
```
#### Parameters

*   use_es_pony: [Bool](builtin-Bool.md) val

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

