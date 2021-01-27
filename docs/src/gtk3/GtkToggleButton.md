```````pony-full-source
/*
   needs: ["Bool", "None", "GObjectREF", "String"]
provides: ["GtkToggleButton"]
*/
use "../gobject"
class GtkToggleButton is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create() =>
    widget = @gtk_toggle_button_new[GObjectREF]() //

  new new_with_label(label_pony: String) =>
    widget = @gtk_toggle_button_new_with_label[GObjectREF](label_pony.cstring()) //

  new new_with_mnemonic(label_pony: String) =>
    widget = @gtk_toggle_button_new_with_mnemonic[GObjectREF](label_pony.cstring()) //


fun get_active(): Bool =>
"""
Queries a #GtkToggleButton and returns its current state. Returns %TRUE if
the toggle button is pressed in and %FALSE if it is raised.
"""
  @gtk_toggle_button_get_active[Bool](widget)

fun get_inconsistent(): Bool =>
"""
Gets the value set by gtk_toggle_button_set_inconsistent().
"""
  @gtk_toggle_button_get_inconsistent[Bool](widget)

fun get_mode(): Bool =>
"""
Retrieves whether the button is displayed as a separate indicator
and label. See gtk_toggle_button_set_mode().
"""
  @gtk_toggle_button_get_mode[Bool](widget)

fun set_active(is_active_pony: Bool): None =>
"""
Sets the status of the toggle button. Set to %TRUE if you want the
GtkToggleButton to be “pressed in”, and %FALSE to raise it.
This action causes the #GtkToggleButton::toggled signal and the
#GtkButton::clicked signal to be emitted.
"""
  @gtk_toggle_button_set_active[None](widget, is_active_pony)

fun set_inconsistent(setting_pony: Bool): None =>
"""
If the user has selected a range of elements (such as some text or
spreadsheet cells) that are affected by a toggle button, and the
current values in that range are inconsistent, you may want to
display the toggle in an “in between” state. This function turns on
“in between” display.  Normally you would turn off the inconsistent
state again if the user toggles the toggle button. This has to be
done manually, gtk_toggle_button_set_inconsistent() only affects
visual appearance, it doesn’t affect the semantics of the button.
"""
  @gtk_toggle_button_set_inconsistent[None](widget, setting_pony)

fun set_mode(draw_indicator_pony: Bool): None =>
"""
Sets whether the button is displayed as a separate indicator and label.
You can call this function on a checkbutton or a radiobutton with
@draw_indicator = %FALSE to make the button look like a normal button.

This can be used to create linked strip of buttons that work like
a #GtkStackSwitcher.

This function only affects instances of classes like #GtkCheckButton
and #GtkRadioButton that derive from #GtkToggleButton,
not instances of #GtkToggleButton itself.
"""
  @gtk_toggle_button_set_mode[None](widget, draw_indicator_pony)

fun toggled(): None =>
"""
Emits the #GtkToggleButton::toggled signal on the
#GtkToggleButton. There is no good reason for an
application ever to call this function.
"""
  @gtk_toggle_button_toggled[None](widget)


```````