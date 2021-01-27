# GtkWindow
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L6)</span>
```pony
class ref GtkWindow is
  GtkContainer ref
```

#### Implements

* [GtkContainer](gtk3-GtkContainer.md) ref

---

## Constructors

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L10)</span>


```pony
new ref never_call_this_constructor_or_else_tm()
: GtkWindow ref^
```

#### Returns

* [GtkWindow](gtk3-GtkWindow.md) ref^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L13)</span>


```pony
new ref create_from_GObjectREF(
  widget': GObjectREF val)
: GtkWindow ref^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkWindow](gtk3-GtkWindow.md) ref^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L17)</span>


```pony
new ref create(
  gtype_pony: (GtkWindowToplevel val | GtkWindowPopup val))
: GtkWindow ref^
```
#### Parameters

*   gtype_pony: ([GtkWindowToplevel](gtk3-GtkWindowToplevel.md) val | [GtkWindowPopup](gtk3-GtkWindowPopup.md) val)

#### Returns

* [GtkWindow](gtk3-GtkWindow.md) ref^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L7)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L9)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### activate_default
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L21)</span>


```pony
fun box activate_default()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### activate_focus
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L24)</span>


```pony
fun box activate_focus()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### close
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L48)</span>


```pony
fun box close()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### deiconify
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L51)</span>


```pony
fun box deiconify()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### fullscreen
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L54)</span>


```pony
fun box fullscreen()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### get_accept_focus
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L61)</span>


```pony
fun box get_accept_focus()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_decorated
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L78)</span>


```pony
fun box get_decorated()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_deletable
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L93)</span>


```pony
fun box get_deletable()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_destroy_with_parent
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L96)</span>


```pony
fun box get_destroy_with_parent()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_focus_on_map
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L106)</span>


```pony
fun box get_focus_on_map()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_focus_visible
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L109)</span>


```pony
fun box get_focus_visible()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_has_resize_grip
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L126)</span>


```pony
fun box get_has_resize_grip()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_hide_titlebar_when_maximized
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L129)</span>


```pony
fun box get_hide_titlebar_when_maximized()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_icon_name
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L146)</span>


```pony
fun box get_icon_name()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_mnemonics_visible
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L158)</span>


```pony
fun box get_mnemonics_visible()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_modal
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L161)</span>


```pony
fun box get_modal()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_resizable
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L176)</span>


```pony
fun box get_resizable()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_role
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L183)</span>


```pony
fun box get_role()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_skip_pager_hint
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L200)</span>


```pony
fun box get_skip_pager_hint()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_skip_taskbar_hint
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L203)</span>


```pony
fun box get_skip_taskbar_hint()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_title
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L206)</span>


```pony
fun box get_title()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_urgency_hint
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L232)</span>


```pony
fun box get_urgency_hint()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### has_group
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L242)</span>


```pony
fun box has_group()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### has_toplevel_focus
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L245)</span>


```pony
fun box has_toplevel_focus()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### iconify
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L248)</span>


```pony
fun box iconify()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### is_active
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L251)</span>


```pony
fun box is_active()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### is_maximized
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L254)</span>


```pony
fun box is_maximized()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### maximize
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L257)</span>


```pony
fun box maximize()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### move
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L264)</span>


```pony
fun box move(
  x_pony: I32 val,
  y_pony: I32 val)
: None val
```
#### Parameters

*   x_pony: [I32](builtin-I32.md) val
*   y_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### present
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L271)</span>


```pony
fun box present()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### reshow_with_initial_size
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L290)</span>


```pony
fun box reshow_with_initial_size()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### resize
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L293)</span>


```pony
fun box resize(
  width_pony: I32 val,
  height_pony: I32 val)
: None val
```
#### Parameters

*   width_pony: [I32](builtin-I32.md) val
*   height_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### resize_grip_is_visible
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L296)</span>


```pony
fun box resize_grip_is_visible()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### resize_to_geometry
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L299)</span>


```pony
fun box resize_to_geometry(
  width_pony: I32 val,
  height_pony: I32 val)
: None val
```
#### Parameters

*   width_pony: [I32](builtin-I32.md) val
*   height_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_accept_focus
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L302)</span>


```pony
fun box set_accept_focus(
  setting_pony: Bool val)
: None val
```
#### Parameters

*   setting_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_decorated
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L313)</span>


```pony
fun box set_decorated(
  setting_pony: Bool val)
: None val
```
#### Parameters

*   setting_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_default_geometry
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L320)</span>


```pony
fun box set_default_geometry(
  width_pony: I32 val,
  height_pony: I32 val)
: None val
```
#### Parameters

*   width_pony: [I32](builtin-I32.md) val
*   height_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_default_size
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L323)</span>


```pony
fun box set_default_size(
  width_pony: I32 val,
  height_pony: I32 val)
: None val
```
#### Parameters

*   width_pony: [I32](builtin-I32.md) val
*   height_pony: [I32](builtin-I32.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_deletable
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L326)</span>


```pony
fun box set_deletable(
  setting_pony: Bool val)
: None val
```
#### Parameters

*   setting_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_destroy_with_parent
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L329)</span>


```pony
fun box set_destroy_with_parent(
  setting_pony: Bool val)
: None val
```
#### Parameters

*   setting_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_focus_on_map
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L336)</span>


```pony
fun box set_focus_on_map(
  setting_pony: Bool val)
: None val
```
#### Parameters

*   setting_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_focus_visible
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L339)</span>


```pony
fun box set_focus_visible(
  setting_pony: Bool val)
: None val
```
#### Parameters

*   setting_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_has_resize_grip
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L352)</span>


```pony
fun box set_has_resize_grip(
  value_pony: Bool val)
: None val
```
#### Parameters

*   value_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_has_user_ref_count
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L355)</span>


```pony
fun box set_has_user_ref_count(
  setting_pony: Bool val)
: None val
```
#### Parameters

*   setting_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_hide_titlebar_when_maximized
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L358)</span>


```pony
fun box set_hide_titlebar_when_maximized(
  setting_pony: Bool val)
: None val
```
#### Parameters

*   setting_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_keep_above
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L377)</span>


```pony
fun box set_keep_above(
  setting_pony: Bool val)
: None val
```
#### Parameters

*   setting_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_keep_below
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L380)</span>


```pony
fun box set_keep_below(
  setting_pony: Bool val)
: None val
```
#### Parameters

*   setting_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_mnemonics_visible
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L387)</span>


```pony
fun box set_mnemonics_visible(
  setting_pony: Bool val)
: None val
```
#### Parameters

*   setting_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_modal
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L390)</span>


```pony
fun box set_modal(
  modal_pony: Bool val)
: None val
```
#### Parameters

*   modal_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_resizable
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L401)</span>


```pony
fun box set_resizable(
  resizable_pony: Bool val)
: None val
```
#### Parameters

*   resizable_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_skip_pager_hint
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L412)</span>


```pony
fun box set_skip_pager_hint(
  setting_pony: Bool val)
: None val
```
#### Parameters

*   setting_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_skip_taskbar_hint
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L415)</span>


```pony
fun box set_skip_taskbar_hint(
  setting_pony: Bool val)
: None val
```
#### Parameters

*   setting_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### set_urgency_hint
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L438)</span>


```pony
fun box set_urgency_hint(
  setting_pony: Bool val)
: None val
```
#### Parameters

*   setting_pony: [Bool](builtin-Bool.md) val

#### Returns

* [None](builtin-None.md) val

---

### stick
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L446)</span>


```pony
fun box stick()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### unfullscreen
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L449)</span>


```pony
fun box unfullscreen()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### unmaximize
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L452)</span>


```pony
fun box unmaximize()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### unstick
<span class="source-link">[[Source]](src/gtk3/GtkWindow.md#L455)</span>


```pony
fun box unstick()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### add



```pony
fun box add(
  childwidget: GtkWidget ref)
: None val
```
#### Parameters

*   childwidget: [GtkWidget](gtk3-GtkWidget.md) ref

#### Returns

* [None](builtin-None.md) val

---

### show_all



```pony
fun box show_all()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### destroy



```pony
fun box destroy()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### signal_connect\[V: [Any](builtin-Any.md) #share\]



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

