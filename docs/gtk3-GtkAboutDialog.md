# GtkAboutDialog
<span class="source-link">[[Source]](src/gtk3/GtkAboutDialog.md#L6)</span>

The GtkAboutDialog offers a simple way to display information about
a program like its logo, name, copyright, website and license. It is
also possible to give credits to the authors, documenters, translators
and artists who have worked on the program. An about dialog is typically
opened when the user selects the `About` option from the `Help` menu.
All parts of the dialog are optional.

About dialogs often contain links and email addresses. GtkAboutDialog
displays these as clickable links. By default, it calls gtk_show_uri_on_window()
when a user clicks one. The behaviour can be overridden with the
#GtkAboutDialog::activate-link signal.

To specify a person with an email address, use a string like
"Edgar Allan Poe <edgar\@poe.com>". To specify a website with a title,
use a string like "GTK+ team http://www.gtk.org".

To make constructing a GtkAboutDialog as convenient as possible, you can
use the function gtk_show_about_dialog() which constructs and shows a dialog
and keeps it around so that it can be shown again.

Note that GTK+ sets a default title of `_("About %s")` on the dialog
window (where \%s is replaced by the name of the application, but in
order to ensure proper translation of the title, applications should
set the title property explicitly when constructing a GtkAboutDialog,
as shown in the following example:
|[<!-- language="C" -->
GdkPixbuf *example_logo = gdk_pixbuf_new_from_file ("./logo.png", NULL);
gtk_show_about_dialog (NULL,
                       "program-name", "ExampleCode",
                       "logo", example_logo,
                       "title", _("About ExampleCode"),
                       NULL);
]|

It is also possible to show a #GtkAboutDialog like any other #GtkDialog,
e.g. using gtk_dialog_run(). In this case, you might need to know that
the “Close” button returns the #GTK_RESPONSE_CANCEL response id.


```pony
class val GtkAboutDialog is
  GtkWidget ref
```

#### Implements

* [GtkWidget](gtk3-GtkWidget.md) ref

---

## Constructors

### create_from_GtkBuilder
<span class="source-link">[[Source]](src/gtk3/GtkAboutDialog.md#L50)</span>


```pony
new val create_from_GtkBuilder(
  gtkbuilder: GtkBuilder val,
  glade_id: String val)
: GtkAboutDialog val^
```
#### Parameters

*   gtkbuilder: [GtkBuilder](gtk3-GtkBuilder.md) val
*   glade_id: [String](builtin-String.md) val

#### Returns

* [GtkAboutDialog](gtk3-GtkAboutDialog.md) val^

---

### create_from_GObjectREF
<span class="source-link">[[Source]](src/gtk3/GtkAboutDialog.md#L53)</span>


```pony
new val create_from_GObjectREF(
  widget': GObjectREF val)
: GtkAboutDialog val^
```
#### Parameters

*   widget': [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

#### Returns

* [GtkAboutDialog](gtk3-GtkAboutDialog.md) val^

---

### never_call_this_constructor_or_else_tm
<span class="source-link">[[Source]](src/gtk3/GtkAboutDialog.md#L56)</span>


```pony
new val never_call_this_constructor_or_else_tm()
: GtkAboutDialog val^
```

#### Returns

* [GtkAboutDialog](gtk3-GtkAboutDialog.md) val^

---

### create
<span class="source-link">[[Source]](src/gtk3/GtkAboutDialog.md#L60)</span>


```pony
new val create()
: GtkAboutDialog val^
```

#### Returns

* [GtkAboutDialog](gtk3-GtkAboutDialog.md) val^

---

## Public fields

### var widget: [GObjectREF](gtk3-..-gobject-GObjectREF.md) val
<span class="source-link">[[Source]](src/gtk3/GtkAboutDialog.md#L46)</span>



---

## Public Functions

### gtkwidget
<span class="source-link">[[Source]](src/gtk3/GtkAboutDialog.md#L48)</span>


```pony
fun box gtkwidget()
: GObjectREF val
```

#### Returns

* [GObjectREF](gtk3-..-gobject-GObjectREF.md) val

---

### pony_NOT_IMPLEMENTED_YET_add_credit_section
<span class="source-link">[[Source]](src/gtk3/GtkAboutDialog.md#L64)</span>


    Creates a new section in the Credits page.

    {:doh, %{argctype: "const gchar*", argname: "section_name", argtype: "utf8", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "", argname: "people", argtype: "", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_add_credit_section()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_artists
<span class="source-link">[[Source]](src/gtk3/GtkAboutDialog.md#L73)</span>


    Returns the string which are displayed in the artists tab
of the secondary credits dialog.

    {:argctype, ""}
{:argname, "rv"}
{:argtype, ""}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_artists()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_authors
<span class="source-link">[[Source]](src/gtk3/GtkAboutDialog.md#L86)</span>


    Returns the string which are displayed in the authors tab
of the secondary credits dialog.

    {:argctype, ""}
{:argname, "rv"}
{:argtype, ""}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_authors()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### get_comments
<span class="source-link">[[Source]](src/gtk3/GtkAboutDialog.md#L99)</span>


Returns the comments string.


```pony
fun box get_comments()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_copyright
<span class="source-link">[[Source]](src/gtk3/GtkAboutDialog.md#L107)</span>


Returns the copyright string.


```pony
fun box get_copyright()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_documenters
<span class="source-link">[[Source]](src/gtk3/GtkAboutDialog.md#L115)</span>


    Returns the string which are displayed in the documenters
tab of the secondary credits dialog.

    {:argctype, ""}
{:argname, "rv"}
{:argtype, ""}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_documenters()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### get_license
<span class="source-link">[[Source]](src/gtk3/GtkAboutDialog.md#L128)</span>


Returns the license information.


```pony
fun box get_license()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_license_type
<span class="source-link">[[Source]](src/gtk3/GtkAboutDialog.md#L136)</span>


    Retrieves the license set using gtk_about_dialog_set_license_type()

    {:argctype, "GtkLicense"}
{:argname, "rv"}
{:argtype, "License"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_license_type()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_get_logo
<span class="source-link">[[Source]](src/gtk3/GtkAboutDialog.md#L148)</span>


    Returns the pixbuf displayed as logo in the about dialog.

    {:argctype, "GdkPixbuf*"}
{:argname, "rv"}
{:argtype, "GdkPixbuf.Pixbuf"}
{:paramtype, :param}
{:txo, "none"}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_get_logo()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### get_logo_icon_name
<span class="source-link">[[Source]](src/gtk3/GtkAboutDialog.md#L160)</span>


Returns the icon name displayed as logo in the about dialog.


```pony
fun box get_logo_icon_name()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_program_name
<span class="source-link">[[Source]](src/gtk3/GtkAboutDialog.md#L168)</span>


Returns the program name displayed in the about dialog.


```pony
fun box get_program_name()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_translator_credits
<span class="source-link">[[Source]](src/gtk3/GtkAboutDialog.md#L176)</span>


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
<span class="source-link">[[Source]](src/gtk3/GtkAboutDialog.md#L185)</span>


Returns the version string.


```pony
fun box get_version()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_website
<span class="source-link">[[Source]](src/gtk3/GtkAboutDialog.md#L193)</span>


Returns the website URL.


```pony
fun box get_website()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_website_label
<span class="source-link">[[Source]](src/gtk3/GtkAboutDialog.md#L201)</span>


Returns the label used for the website link.


```pony
fun box get_website_label()
: String val
```

#### Returns

* [String](builtin-String.md) val

---

### get_wrap_license
<span class="source-link">[[Source]](src/gtk3/GtkAboutDialog.md#L209)</span>


Returns whether the license text in @about is
automatically wrapped.


```pony
fun box get_wrap_license()
: Bool val
```

#### Returns

* [Bool](builtin-Bool.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_artists
<span class="source-link">[[Source]](src/gtk3/GtkAboutDialog.md#L216)</span>


    Sets the strings which are displayed in the artists tab
of the secondary credits dialog.

    {:doh, %{argctype: "", argname: "artists", argtype: "", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_artists()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_authors
<span class="source-link">[[Source]](src/gtk3/GtkAboutDialog.md#L225)</span>


    Sets the strings which are displayed in the authors tab
of the secondary credits dialog.

    {:doh, %{argctype: "", argname: "authors", argtype: "", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_authors()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_comments
<span class="source-link">[[Source]](src/gtk3/GtkAboutDialog.md#L234)</span>


    Sets the comments string to display in the about dialog.
This should be a short string of one or two lines.

    {:doh, %{argctype: "const gchar*", argname: "comments", argtype: "utf8", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_comments()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_copyright
<span class="source-link">[[Source]](src/gtk3/GtkAboutDialog.md#L243)</span>


    Sets the copyright string to display in the about dialog.
This should be a short string of one or two lines.

    {:doh, %{argctype: "const gchar*", argname: "copyright", argtype: "utf8", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_copyright()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_documenters
<span class="source-link">[[Source]](src/gtk3/GtkAboutDialog.md#L252)</span>


    Sets the strings which are displayed in the documenters tab
of the secondary credits dialog.

    {:doh, %{argctype: "", argname: "documenters", argtype: "", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_documenters()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_license
<span class="source-link">[[Source]](src/gtk3/GtkAboutDialog.md#L261)</span>


    Sets the license information to be displayed in the secondary
license dialog. If @license is %NULL, the license button is
hidden.

    {:doh, %{argctype: "const gchar*", argname: "license", argtype: "utf8", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_license()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_license_type
<span class="source-link">[[Source]](src/gtk3/GtkAboutDialog.md#L271)</span>


    Sets the license of the application showing the @about dialog from a
list of known licenses.

This function overrides the license set using
gtk_about_dialog_set_license().

    {:doh, %{argctype: "GtkLicense", argname: "license_type", argtype: "License", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_license_type()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_logo
<span class="source-link">[[Source]](src/gtk3/GtkAboutDialog.md#L283)</span>


    Sets the pixbuf to be displayed as logo in the about dialog.
If it is %NULL, the default window icon set with
gtk_window_set_default_icon() will be used.

    {:doh, %{argctype: "GdkPixbuf*", argname: "logo", argtype: "GdkPixbuf.Pixbuf", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_logo()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_logo_icon_name
<span class="source-link">[[Source]](src/gtk3/GtkAboutDialog.md#L293)</span>


    Sets the pixbuf to be displayed as logo in the about dialog.
If it is %NULL, the default window icon set with
gtk_window_set_default_icon() will be used.

    {:doh, %{argctype: "const gchar*", argname: "icon_name", argtype: "utf8", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_logo_icon_name()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_program_name
<span class="source-link">[[Source]](src/gtk3/GtkAboutDialog.md#L303)</span>


    Sets the name to display in the about dialog.
If this is not set, it defaults to g_get_application_name().

    {:doh, %{argctype: "const gchar*", argname: "name", argtype: "utf8", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_program_name()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_translator_credits
<span class="source-link">[[Source]](src/gtk3/GtkAboutDialog.md#L312)</span>


    Sets the translator credits string which is displayed in
the translators tab of the secondary credits dialog.

The intended use for this string is to display the translator
of the language which is currently used in the user interface.
Using gettext(), a simple way to achieve that is to mark the
string for translation:
|[<!-- language="C" -->
GtkWidget *about = gtk_about_dialog_new ();
gtk_about_dialog_set_translator_credits (GTK_ABOUT_DIALOG (about),
                                         _("translator-credits"));
]|
It is a good idea to use the customary msgid “translator-credits” for this
purpose, since translators will already know the purpose of that msgid, and
since #GtkAboutDialog will detect if “translator-credits” is untranslated
and hide the tab.

    {:doh, %{argctype: "const gchar*", argname: "translator_credits", argtype: "utf8", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_translator_credits()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_version
<span class="source-link">[[Source]](src/gtk3/GtkAboutDialog.md#L335)</span>


    Sets the version string to display in the about dialog.

    {:doh, %{argctype: "const gchar*", argname: "version", argtype: "utf8", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_version()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_website
<span class="source-link">[[Source]](src/gtk3/GtkAboutDialog.md#L343)</span>


    Sets the URL to use for the website link.

    {:doh, %{argctype: "const gchar*", argname: "website", argtype: "utf8", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_website()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### pony_NOT_IMPLEMENTED_YET_set_website_label
<span class="source-link">[[Source]](src/gtk3/GtkAboutDialog.md#L351)</span>


    Sets the label to be used for the website link.

    {:doh, %{argctype: "const gchar*", argname: "website_label", argtype: "utf8", paramtype: :param, txo: "none"}}
*/


```pony
fun box pony_NOT_IMPLEMENTED_YET_set_website_label()
: None val
```

#### Returns

* [None](builtin-None.md) val

---

### set_wrap_license
<span class="source-link">[[Source]](src/gtk3/GtkAboutDialog.md#L359)</span>


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

