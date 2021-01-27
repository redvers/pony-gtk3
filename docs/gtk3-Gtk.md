# Gtk
<span class="source-link">[[Source]](src/gtk3/Gtk.md#L2)</span>
```pony
primitive val Gtk
```

## Constructors

### create
<span class="source-link">[[Source]](src/gtk3/Gtk.md#L2)</span>


```pony
new val create()
: Gtk val^
```

#### Returns

* [Gtk](gtk3-Gtk.md) val^

---

## Public Functions

### check_version
<span class="source-link">[[Source]](src/gtk3/Gtk.md#L148)</span>


```pony
fun box check_version(
  required_major_pony: U32 val,
  required_minor_pony: U32 val,
  required_micro_pony: U32 val)
: String val
```
#### Parameters

*   required_major_pony: [U32](builtin-U32.md) val
*   required_minor_pony: [U32](builtin-U32.md) val
*   required_micro_pony: [U32](builtin-U32.md) val

#### Returns

* [String](builtin-String.md) val

---

### disable_setlocale
<span class="source-link">[[Source]](src/gtk3/Gtk.md#L170)</span>


```pony
fun box disable_setlocale()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### events_pending
<span class="source-link">[[Source]](src/gtk3/Gtk.md#L234)</span>


```pony
fun box events_pending()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### gfalse
<span class="source-link">[[Source]](src/gtk3/Gtk.md#L237)</span>


```pony
fun box gfalse()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### get_binary_age
<span class="source-link">[[Source]](src/gtk3/Gtk.md#L247)</span>


```pony
fun box get_binary_age()
: U32 val
```

#### Returns

* [U32](builtin-U32.md) val

---

### get_debug_flags
<span class="source-link">[[Source]](src/gtk3/Gtk.md#L275)</span>


```pony
fun box get_debug_flags()
: U32 val
```

#### Returns

* [U32](builtin-U32.md) val

---

### get_interface_age
<span class="source-link">[[Source]](src/gtk3/Gtk.md#L292)</span>


```pony
fun box get_interface_age()
: U32 val
```

#### Returns

* [U32](builtin-U32.md) val

---

### get_major_version
<span class="source-link">[[Source]](src/gtk3/Gtk.md#L302)</span>


```pony
fun box get_major_version()
: U32 val
```

#### Returns

* [U32](builtin-U32.md) val

---

### get_micro_version
<span class="source-link">[[Source]](src/gtk3/Gtk.md#L305)</span>


```pony
fun box get_micro_version()
: U32 val
```

#### Returns

* [U32](builtin-U32.md) val

---

### get_minor_version
<span class="source-link">[[Source]](src/gtk3/Gtk.md#L308)</span>


```pony
fun box get_minor_version()
: U32 val
```

#### Returns

* [U32](builtin-U32.md) val

---

### init
<span class="source-link">[[Source]](src/gtk3/Gtk.md#L368)</span>


```pony
fun box init()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### key_snooper_remove
<span class="source-link">[[Source]](src/gtk3/Gtk.md#L389)</span>


```pony
fun box key_snooper_remove(
  snooper_handler_id_pony: U32 val)
: None val
```
#### Parameters

*   snooper_handler_id_pony: [U32](builtin-U32.md) val

#### Returns

* [None](builtin-None.md) val

---

### main
<span class="source-link">[[Source]](src/gtk3/Gtk.md#L392)</span>


```pony
fun box main()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### main_iteration
<span class="source-link">[[Source]](src/gtk3/Gtk.md#L399)</span>


```pony
fun box main_iteration()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### main_iteration_do
<span class="source-link">[[Source]](src/gtk3/Gtk.md#L402)</span>


```pony
fun box main_iteration_do(
  blocking_pony: Bool val)
: Bool val
```
#### Parameters

*   blocking_pony: [Bool](builtin-Bool.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

### main_level
<span class="source-link">[[Source]](src/gtk3/Gtk.md#L405)</span>


```pony
fun box main_level()
: U32 val
```

#### Returns

* [U32](builtin-U32.md) val

---

### main_quit
<span class="source-link">[[Source]](src/gtk3/Gtk.md#L408)</span>


```pony
fun box main_quit()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### paper_size_get_default
<span class="source-link">[[Source]](src/gtk3/Gtk.md#L593)</span>


```pony
fun box paper_size_get_default()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### rc_reparse_all
<span class="source-link">[[Source]](src/gtk3/Gtk.md#L763)</span>


```pony
fun box rc_reparse_all()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### set_debug_flags
<span class="source-link">[[Source]](src/gtk3/Gtk.md#L1021)</span>


```pony
fun box set_debug_flags(
  flags_pony: U32 val)
: None val
```
#### Parameters

*   flags_pony: [U32](builtin-U32.md) val

#### Returns

* [None](builtin-None.md) val

---

### test_register_all_types
<span class="source-link">[[Source]](src/gtk3/Gtk.md#L1152)</span>


```pony
fun box test_register_all_types()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### gtrue
<span class="source-link">[[Source]](src/gtk3/Gtk.md#L1226)</span>


```pony
fun box gtrue()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### eq
<span class="source-link">[[Source]](src/gtk3/Gtk.md#L148)</span>


```pony
fun box eq(
  that: Gtk val)
: Bool val
```
#### Parameters

*   that: [Gtk](gtk3-Gtk.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

### ne
<span class="source-link">[[Source]](src/gtk3/Gtk.md#L148)</span>


```pony
fun box ne(
  that: Gtk val)
: Bool val
```
#### Parameters

*   that: [Gtk](gtk3-Gtk.md) val

#### Returns

* [Bool](builtin-Bool.md) val

---

