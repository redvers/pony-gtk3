use "lib:webkit2gtk-4.0"
use "../gobject"

class WebKit2 is GtkWidget
  var widget: GObjectREF

  new create() =>
    widget = @webkit_web_view_new[GObjectREF]()

  fun gtkwidget(): GObjectREF => widget

  fun load_uri(url: String): None =>
    @webkit_web_view_load_uri[None](widget, url.cstring())
