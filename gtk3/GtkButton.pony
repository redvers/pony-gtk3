/*
   needs: ["None", "Bool", "GObjectREF", "GtkWidget val", "Pointer[U8 val] ref", "String", "GtkIconSize"]
provides: ["GtkButton val"]
*/
use "../gobject"
class val GtkButton is GtkWidget
"""
The #GtkButton widget is generally used to trigger a callback function that is
called when the button is pressed.  The various signals and how to use them
are outlined below.

The #GtkButton widget can hold any valid child widget.  That is, it can hold
almost any other standard #GtkWidget.  The most commonly used child is the
#GtkLabel.

# CSS nodes

GtkButton has a single CSS node with name button. The node will get the
style classes .image-button or .text-button, if the content is just an
image or label, respectively. It may also receive the .flat style class.

Other style classes that are commonly used with GtkButton include
.suggested-action and .destructive-action. In special cases, buttons
can be made round by adding the .circular style class.

Button-like widgets like #GtkToggleButton, #GtkMenuButton, #GtkVolumeButton,
#GtkLockButton, #GtkColorButton, #GtkFontButton or #GtkFileChooserButton use
style classes such as .toggle, .popup, .scale, .lock, .color, .font, .file
to differentiate themselves from a plain GtkButton.
"""
  var widget: GObjectREF val

  fun gtkwidget(): GObjectREF val => widget

  new val create_from_GtkBuilder(gtkbuilder: GtkBuilder, glade_id: String) =>
    widget = @gtk_builder_get_object[GObjectREF](gtkbuilder.gtkwidget(), glade_id.cstring())

  new val create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'

  new val never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF


  new val create() =>
    widget = @gtk_button_new[GObjectREF]() //

  new val new_from_icon_name(icon_name_pony: String, size_pony: GtkIconSize) =>
    widget = @gtk_button_new_from_icon_name[GObjectREF](icon_name_pony.cstring(), size_pony) //

  new val new_from_stock(stock_id_pony: String) =>
    widget = @gtk_button_new_from_stock[GObjectREF](stock_id_pony.cstring()) //

  new val new_with_label(label_pony: String) =>
    widget = @gtk_button_new_with_label[GObjectREF](label_pony.cstring()) //

  new val new_with_mnemonic(label_pony: String) =>
    widget = @gtk_button_new_with_mnemonic[GObjectREF](label_pony.cstring()) //


fun clicked(): None =>
"""
Emits a #GtkButton::clicked signal to the given #GtkButton.
"""
  @gtk_button_clicked[None](widget)

fun enter(): None =>
"""
Emits a #GtkButton::enter signal to the given #GtkButton.
"""
  @gtk_button_enter[None](widget)

  fun pony_NOT_IMPLEMENTED_YET_get_alignment(): None =>
    """
    Gets the alignment of the child in the button.

    {:doh, %{argctype: "gfloat*", argname: "xalign", argtype: "gfloat", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "gfloat*", argname: "yalign", argtype: "gfloat", paramtype: :param, txo: "full"}}
*/
    """

fun get_always_show_image(): Bool =>
"""
Returns whether the button will ignore the #GtkSettings:gtk-button-images
setting and always show the image, if available.
"""
  @gtk_button_get_always_show_image[Bool](widget)

  fun pony_NOT_IMPLEMENTED_YET_get_event_window(): None =>
    """
    Returns the button’s event window if it is realized, %NULL otherwise.
This function should be rarely needed.

    {:argctype, "GdkWindow*"}
{:argname, "rv"}
{:argtype, "Gdk.Window"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

fun get_focus_on_click(): Bool =>
"""
Returns whether the button grabs focus when it is clicked with the mouse.
See gtk_button_set_focus_on_click().
"""
  @gtk_button_get_focus_on_click[Bool](widget)

/* Needs conversion code 
Gets the widget that is currenty set as the image of @button.
This may have been explicitly set by gtk_button_set_image()
or constructed by gtk_button_new_from_stock().
  fun get_image(): GtkWidget val =>
    @gtk_button_get_image[GObjectREF](widget)
*/

  fun pony_NOT_IMPLEMENTED_YET_get_image_position(): None =>
    """
    Gets the position of the image relative to the text
inside the button.

    {:argctype, "GtkPositionType"}
{:argname, "rv"}
{:argtype, "PositionType"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

fun get_label(): String =>
"""
Fetches the text from the label of the button, as set by
gtk_button_set_label(). If the label text has not
been set the return value will be %NULL. This will be the
case if you create an empty button with gtk_button_new() to
use as a container.
"""
  var cstring_pony: Pointer[U8 val] ref = @gtk_button_get_label[Pointer[U8 val] ref](widget)
  var string_pony: String val = String.from_cstring(cstring_pony).clone()
  consume string_pony

  fun pony_NOT_IMPLEMENTED_YET_get_relief(): None =>
    """
    Returns the current relief style of the given #GtkButton.

    {:argctype, "GtkReliefStyle"}
{:argname, "rv"}
{:argtype, "ReliefStyle"}
{:paramtype, :param}
{:txo, "none"}
*/
    """

fun get_use_stock(): Bool =>
"""
Returns whether the button label is a stock item.
"""
  @gtk_button_get_use_stock[Bool](widget)

fun get_use_underline(): Bool =>
"""
Returns whether an embedded underline in the button label indicates a
mnemonic. See gtk_button_set_use_underline ().
"""
  @gtk_button_get_use_underline[Bool](widget)

fun leave(): None =>
"""
Emits a #GtkButton::leave signal to the given #GtkButton.
"""
  @gtk_button_leave[None](widget)

fun pressed(): None =>
"""
Emits a #GtkButton::pressed signal to the given #GtkButton.
"""
  @gtk_button_pressed[None](widget)

fun released(): None =>
"""
Emits a #GtkButton::released signal to the given #GtkButton.
"""
  @gtk_button_released[None](widget)

  fun pony_NOT_IMPLEMENTED_YET_set_alignment(): None =>
    """
    Sets the alignment of the child. This property has no effect unless
the child is a #GtkMisc or a #GtkAlignment.

    {:doh, %{argctype: "gfloat", argname: "xalign", argtype: "gfloat", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gfloat", argname: "yalign", argtype: "gfloat", paramtype: :param, txo: "none"}}
*/
    """

fun set_always_show_image(always_show_pony: Bool): None =>
"""
If %TRUE, the button will ignore the #GtkSettings:gtk-button-images
setting and always show the image, if available.

Use this property if the button  would be useless or hard to use
without the image.
"""
  @gtk_button_set_always_show_image[None](widget, always_show_pony)

fun set_focus_on_click(focus_on_click_pony: Bool): None =>
"""
Sets whether the button will grab focus when it is clicked with the mouse.
Making mouse clicks not grab focus is useful in places like toolbars where
you don’t want the keyboard focus removed from the main area of the
application.
"""
  @gtk_button_set_focus_on_click[None](widget, focus_on_click_pony)

fun set_image(image_pony: GtkWidget val): None =>
"""
Set the image of @button to the given widget. The image will be
displayed if the label text is %NULL or if
#GtkButton:always-show-image is %TRUE. You don’t have to call
gtk_widget_show() on @image yourself.
"""
  @gtk_button_set_image[None](widget, image_pony.gtkwidget())

  fun pony_NOT_IMPLEMENTED_YET_set_image_position(): None =>
    """
    Sets the position of the image relative to the text
inside the button.

    {:doh, %{argctype: "GtkPositionType", argname: "position", argtype: "PositionType", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_set_label(): None =>
    """
    Sets the text of the label of the button to @str. This text is
also used to select the stock item if gtk_button_set_use_stock()
is used.

This will also clear any previously set labels.

    {:doh, %{argctype: "const gchar*", argname: "label", argtype: "utf8", paramtype: :param, txo: "none"}}
*/
    """

  fun pony_NOT_IMPLEMENTED_YET_set_relief(): None =>
    """
    Sets the relief style of the edges of the given #GtkButton widget.
Two styles exist, %GTK_RELIEF_NORMAL and %GTK_RELIEF_NONE.
The default style is, as one can guess, %GTK_RELIEF_NORMAL.
The deprecated value %GTK_RELIEF_HALF behaves the same as
%GTK_RELIEF_NORMAL.

    {:doh, %{argctype: "GtkReliefStyle", argname: "relief", argtype: "ReliefStyle", paramtype: :param, txo: "none"}}
*/
    """

fun set_use_stock(use_stock_pony: Bool): None =>
"""
If %TRUE, the label set on the button is used as a
stock id to select the stock item for the button.
"""
  @gtk_button_set_use_stock[None](widget, use_stock_pony)

fun set_use_underline(use_underline_pony: Bool): None =>
"""
If true, an underline in the text of the button label indicates
the next character should be used for the mnemonic accelerator key.
"""
  @gtk_button_set_use_underline[None](widget, use_underline_pony)

