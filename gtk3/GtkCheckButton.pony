/*
   needs: ["GObjectREF", "String"]
provides: ["GtkCheckButton"]
*/
class GtkCheckButton is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF


  new create() =>
    widget = @gtk_check_button_new[GObjectREF]() //

  new new_with_label(label_pony: String) =>
    widget = @gtk_check_button_new_with_label[GObjectREF](label_pony.cstring()) //

  new new_with_mnemonic(label_pony: String) =>
    widget = @gtk_check_button_new_with_mnemonic[GObjectREF](label_pony.cstring()) //



