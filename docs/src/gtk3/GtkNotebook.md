```````pony-full-source
/*
   needs: ["I32", "Pointer[U8 val] ref", "String", "Bool", "None", "GObjectREF"]
provides: ["GtkNotebook"]
*/
use "../gobject"
class GtkNotebook is GtkWidget
"""
The #GtkNotebook widget is a #GtkContainer whose children are pages that
can be switched between using tab labels along one edge.

There are many configuration options for GtkNotebook. Among other
things, you can choose on which edge the tabs appear
(see gtk_notebook_set_tab_pos()), whether, if there are too many
tabs to fit the notebook should be made bigger or scrolling
arrows added (see gtk_notebook_set_scrollable()), and whether there
will be a popup menu allowing the users to switch pages.
(see gtk_notebook_popup_enable(), gtk_notebook_popup_disable())

# GtkNotebook as GtkBuildable

The GtkNotebook implementation of the #GtkBuildable interface
supports placing children into tabs by specifying “tab” as the
“type” attribute of a <child> element. Note that the content
of the tab must be created before the tab can be filled.
A tab child can be specified without specifying a <child>
type attribute.

To add a child widget in the notebooks action area, specify
"action-start" or “action-end” as the “type” attribute of the
<child> element.

An example of a UI definition fragment with GtkNotebook:
|[
<object class="GtkNotebook">
  <child>
    <object class="GtkLabel" id="notebook-content">
      <property name="label">Content</property>
    </object>
  </child>
  <child type="tab">
    <object class="GtkLabel" id="notebook-tab">
      <property name="label">Tab</property>
    </object>
  </child>
</object>
]|

# CSS nodes

|[<!-- language="plain" -->
notebook
├── header.top
│   ├── [<action widget>]
│   ├── tabs
│   │   ├── [arrow]
│   │   ├── tab
│   │   │   ╰── <tab label>
┊   ┊   ┊
│   │   ├── tab[.reorderable-page]
│   │   │   ╰── <tab label>
│   │   ╰── [arrow]
│   ╰── [<action widget>]
│
╰── stack
    ├── <child>
    ┊
    ╰── <child>
]|

GtkNotebook has a main CSS node with name notebook, a subnode
with name header and below that a subnode with name tabs which
contains one subnode per tab with name tab.

If action widgets are present, their CSS nodes are placed next
to the tabs node. If the notebook is scrollable, CSS nodes with
name arrow are placed as first and last child of the tabs node.

The main node gets the .frame style class when the notebook
has a border (see gtk_notebook_set_show_border()).

The header node gets one of the style class .top, .bottom,
.left or .right, depending on where the tabs are placed. For
reorderable pages, the tab node gets the .reorderable-page class.

A tab node gets the .dnd style class while it is moved with drag-and-drop.

The nodes are always arranged from left-to-right, regarldess of text direction.
"""
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create() =>
    widget = @gtk_notebook_new[GObjectREF]() //


/* append_page unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "child", argtype: "Widget", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkWidget*", argname: "tab_label", argtype: "Widget", paramtype: :param, txo: "none"}}
*/

/* append_page_menu unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "child", argtype: "Widget", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkWidget*", argname: "tab_label", argtype: "Widget", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkWidget*", argname: "menu_label", argtype: "Widget", paramtype: :param, txo: "none"}}
*/

/* detach_tab unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "child", argtype: "Widget", paramtype: :param, txo: "none"}}
*/

/* get_action_widget unavailable due to return typing issues
{:argctype, "GtkWidget*"}
{:argname, "rv"}
{:argtype, "Widget"}
{:paramtype, :param}
{:txo, "none"} */

fun get_current_page(): I32 =>
"""
Returns the page number of the current page.
"""
  @gtk_notebook_get_current_page[I32](widget)

fun get_group_name(): String =>
"""
Gets the current group name for @notebook.
"""
  var cstring_pony: Pointer[U8 val] ref = @gtk_notebook_get_group_name[Pointer[U8 val] ref](widget)
  var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

/* get_menu_label unavailable due to return typing issues
{:argctype, "GtkWidget*"}
{:argname, "rv"}
{:argtype, "Widget"}
{:paramtype, :param}
{:txo, "none"} */

/* get_menu_label_text unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "child", argtype: "Widget", paramtype: :param, txo: "none"}}
*/

fun get_n_pages(): I32 =>
"""
Gets the number of pages in a notebook.
"""
  @gtk_notebook_get_n_pages[I32](widget)

/* get_nth_page unavailable due to return typing issues
{:argctype, "GtkWidget*"}
{:argname, "rv"}
{:argtype, "Widget"}
{:paramtype, :param}
{:txo, "none"} */

fun get_scrollable(): Bool =>
"""
Returns whether the tab label area has arrows for scrolling.
See gtk_notebook_set_scrollable().
"""
  @gtk_notebook_get_scrollable[Bool](widget)

fun get_show_border(): Bool =>
"""
Returns whether a bevel will be drawn around the notebook pages.
See gtk_notebook_set_show_border().
"""
  @gtk_notebook_get_show_border[Bool](widget)

fun get_show_tabs(): Bool =>
"""
Returns whether the tabs of the notebook are shown.
See gtk_notebook_set_show_tabs().
"""
  @gtk_notebook_get_show_tabs[Bool](widget)

/* get_tab_detachable unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "child", argtype: "Widget", paramtype: :param, txo: "none"}}
*/

/* get_tab_hborder unavailable due to return typing issues
{:argctype, "guint16"}
{:argname, "rv"}
{:argtype, "guint16"}
{:paramtype, :param}
{:txo, "none"} */

/* get_tab_label unavailable due to return typing issues
{:argctype, "GtkWidget*"}
{:argname, "rv"}
{:argtype, "Widget"}
{:paramtype, :param}
{:txo, "none"} */

/* get_tab_label_text unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "child", argtype: "Widget", paramtype: :param, txo: "none"}}
*/

/* get_tab_pos unavailable due to return typing issues
{:argctype, "GtkPositionType"}
{:argname, "rv"}
{:argtype, "PositionType"}
{:paramtype, :param}
{:txo, "none"} */

/* get_tab_reorderable unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "child", argtype: "Widget", paramtype: :param, txo: "none"}}
*/

/* get_tab_vborder unavailable due to return typing issues
{:argctype, "guint16"}
{:argname, "rv"}
{:argtype, "guint16"}
{:paramtype, :param}
{:txo, "none"} */

/* insert_page unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "child", argtype: "Widget", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkWidget*", argname: "tab_label", argtype: "Widget", paramtype: :param, txo: "none"}}
*/

/* insert_page_menu unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "child", argtype: "Widget", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkWidget*", argname: "tab_label", argtype: "Widget", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkWidget*", argname: "menu_label", argtype: "Widget", paramtype: :param, txo: "none"}}
*/

fun next_page(): None =>
"""
Switches to the next page. Nothing happens if the current page is
the last page.
"""
  @gtk_notebook_next_page[None](widget)

/* page_num unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "child", argtype: "Widget", paramtype: :param, txo: "none"}}
*/

fun popup_disable(): None =>
"""
Disables the popup menu.
"""
  @gtk_notebook_popup_disable[None](widget)

fun popup_enable(): None =>
"""
Enables the popup menu: if the user clicks with the right
mouse button on the tab labels, a menu with all the pages
will be popped up.
"""
  @gtk_notebook_popup_enable[None](widget)

/* prepend_page unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "child", argtype: "Widget", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkWidget*", argname: "tab_label", argtype: "Widget", paramtype: :param, txo: "none"}}
*/

/* prepend_page_menu unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "child", argtype: "Widget", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkWidget*", argname: "tab_label", argtype: "Widget", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkWidget*", argname: "menu_label", argtype: "Widget", paramtype: :param, txo: "none"}}
*/

fun prev_page(): None =>
"""
Switches to the previous page. Nothing happens if the current page
is the first page.
"""
  @gtk_notebook_prev_page[None](widget)

fun remove_page(page_num_pony: I32): None =>
"""
Removes a page from the notebook given its index
in the notebook.
"""
  @gtk_notebook_remove_page[None](widget, page_num_pony)

/* reorder_child unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "child", argtype: "Widget", paramtype: :param, txo: "none"}}
*/

/* set_action_widget unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "widget", argtype: "Widget", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkPackType", argname: "pack_type", argtype: "PackType", paramtype: :param, txo: "none"}}
*/

fun set_current_page(page_num_pony: I32): None =>
"""
Switches to the page number @page_num.

Note that due to historical reasons, GtkNotebook refuses
to switch to a page unless the child widget is visible.
Therefore, it is recommended to show child widgets before
adding them to a notebook.
"""
  @gtk_notebook_set_current_page[None](widget, page_num_pony)

/* set_group_name unavailable due to typing issues
 {:doh, %{argctype: "const gchar*", argname: "group_name", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* set_menu_label unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "child", argtype: "Widget", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkWidget*", argname: "menu_label", argtype: "Widget", paramtype: :param, txo: "none"}}
*/

/* set_menu_label_text unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "child", argtype: "Widget", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "menu_text", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

fun set_scrollable(scrollable_pony: Bool): None =>
"""
Sets whether the tab label area will have arrows for
scrolling if there are too many tabs to fit in the area.
"""
  @gtk_notebook_set_scrollable[None](widget, scrollable_pony)

fun set_show_border(show_border_pony: Bool): None =>
"""
Sets whether a bevel will be drawn around the notebook pages.
This only has a visual effect when the tabs are not shown.
See gtk_notebook_set_show_tabs().
"""
  @gtk_notebook_set_show_border[None](widget, show_border_pony)

fun set_show_tabs(show_tabs_pony: Bool): None =>
"""
Sets whether to show the tabs for the notebook or not.
"""
  @gtk_notebook_set_show_tabs[None](widget, show_tabs_pony)

/* set_tab_detachable unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "child", argtype: "Widget", paramtype: :param, txo: "none"}}
*/

/* set_tab_label unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "child", argtype: "Widget", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GtkWidget*", argname: "tab_label", argtype: "Widget", paramtype: :param, txo: "none"}}
*/

/* set_tab_label_text unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "child", argtype: "Widget", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "const gchar*", argname: "tab_text", argtype: "utf8", paramtype: :param, txo: "none"}}
*/

/* set_tab_pos unavailable due to typing issues
 {:doh, %{argctype: "GtkPositionType", argname: "pos", argtype: "PositionType", paramtype: :param, txo: "none"}}
*/

/* set_tab_reorderable unavailable due to typing issues
 {:doh, %{argctype: "GtkWidget*", argname: "child", argtype: "Widget", paramtype: :param, txo: "none"}}
*/


```````