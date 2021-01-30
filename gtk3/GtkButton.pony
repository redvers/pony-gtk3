/*
   needs: ["None", "Bool", "GObjectREF", "GtkWidget val", "Pointer[U8 val] ref", "String", "GtkIconSize"]
provides: ["GtkButton val"]
*/
primitive GtkButtonREF
class val GtkButton is GtkBin
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
  var widget: GtkButtonREF val

  fun gtkwidget(): GtkButtonREF val => widget

  new val new_with_label(label_pony: String) =>
    widget = @gtk_button_new_with_label[GtkButtonREF](label_pony.cstring()) //

  new val new_from_GtkButtonREF(widget': GtkButtonREF) => widget = widget'

  fun val raw_signal_connect_clicked[V: Any #share](callback: @{(GtkButtonREF, V)}, data: V): U64 =>
    @g_signal_connect_data[U64](widget, "clicked".cstring(), callback, data)

  fun val signal_connect_clicked[V: Any #share](ponycb: @{(GtkButton, V)}, data: V): U64 =>
    var sw: SignalWrapper[V] = SignalWrapper[V](ponycb, data)
    var rawcb: @{(GtkButtonREF, SignalWrapper[V])} = @{(gbr: GtkButtonREF, sigwrap: SignalWrapper[V]) =>
                                                          var gtkbutton: GtkButton = GtkButton.new_from_GtkButtonREF(gbr)
                                                          @printf[I32]("In raw callback".cstring())
                                                          sigwrap.ponycall(gtkbutton, sigwrap.data)
                                                          }
    @g_signal_connect_data[U64](widget, "clicked".cstring(), rawcb, sw)

class val SignalWrapper[V: Any #share]
  var ponycall: @{(GtkButton, V)} val
  var data: V

  new val create(ponycall': @{(GtkButton, V)} val, data': V) =>
    ponycall = ponycall'
    data = data'

