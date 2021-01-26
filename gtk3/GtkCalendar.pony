/*
   needs: ["None", "Bool", "U32", "I32", "GObjectREF"]
provides: ["GtkCalendar"]
*/
use "../gobject"
class GtkCalendar is GtkWidget
  var widget: GObjectREF

  fun gtkwidget(): GObjectREF => widget
  new never_call_this_constructor_or_else_tm() =>
    widget = GObjectREF

  new create_from_GObjectREF(widget': GObjectREF) =>
    widget = widget'


  new create() =>
    widget = @gtk_calendar_new[GObjectREF]() //


fun clear_marks(): None =>
  @gtk_calendar_clear_marks[None](widget)

/* get_date unavailable due to typing issues
 {:doh, %{argctype: "guint*", argname: "year", argtype: "guint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "guint*", argname: "month", argtype: "guint", paramtype: :param, txo: "full"}}
{:doh, %{argctype: "guint*", argname: "day", argtype: "guint", paramtype: :param, txo: "full"}}
*/

fun get_day_is_marked(day_pony: U32): Bool =>
  @gtk_calendar_get_day_is_marked[Bool](widget, day_pony)

fun get_detail_height_rows(): I32 =>
  @gtk_calendar_get_detail_height_rows[I32](widget)

fun get_detail_width_chars(): I32 =>
  @gtk_calendar_get_detail_width_chars[I32](widget)

/* get_display_options unavailable due to return typing issues
{:argctype, "GtkCalendarDisplayOptions"}
{:argname, "rv"}
{:argtype, "CalendarDisplayOptions"}
{:paramtype, :param}
{:txo, "none"} */

fun mark_day(day_pony: U32): None =>
  @gtk_calendar_mark_day[None](widget, day_pony)

fun select_day(day_pony: U32): None =>
  @gtk_calendar_select_day[None](widget, day_pony)

fun select_month(month_pony: U32, year_pony: U32): None =>
  @gtk_calendar_select_month[None](widget, month_pony, year_pony)

/* set_detail_func unavailable due to typing issues
 {:doh, %{argctype: "GtkCalendarDetailFunc", argname: "func", argtype: "CalendarDetailFunc", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "gpointer", argname: "data", argtype: "gpointer", paramtype: :param, txo: "none"}}
{:doh, %{argctype: "GDestroyNotify", argname: "destroy", argtype: "GLib.DestroyNotify", paramtype: :param, txo: "none"}}
*/

fun set_detail_height_rows(rows_pony: I32): None =>
  @gtk_calendar_set_detail_height_rows[None](widget, rows_pony)

fun set_detail_width_chars(chars_pony: I32): None =>
  @gtk_calendar_set_detail_width_chars[None](widget, chars_pony)

/* set_display_options unavailable due to typing issues
 {:doh, %{argctype: "GtkCalendarDisplayOptions", argname: "flags", argtype: "CalendarDisplayOptions", paramtype: :param, txo: "none"}}
*/

fun unmark_day(day_pony: U32): None =>
  @gtk_calendar_unmark_day[None](widget, day_pony)

