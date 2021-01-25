primitive UIData
  fun apply(): String => """
<?xml version="1.0" encoding="UTF-8"?>
<!-- Generated with glade 3.38.2 -->
<interface>
  <requires lib="gtk+" version="3.24"/>
  <object class="GtkWindow" id="GtkWindow">
    <property name="can-focus">False</property>
    <property name="title" translatable="yes">Test GtkBuilder Application</property>
    <child>
      <object class="GtkBox">
        <property name="visible">True</property>
        <property name="can-focus">False</property>
        <property name="orientation">vertical</property>
        <child>
          <object class="GtkScrolledWindow">
            <property name="visible">True</property>
            <property name="can-focus">True</property>
            <property name="shadow-type">in</property>
            <property name="propagate-natural-width">True</property>
            <property name="propagate-natural-height">True</property>
            <child>
              <object class="GtkTextView" id="textview">
                <property name="visible">True</property>
                <property name="sensitive">False</property>
                <property name="can-focus">False</property>
                <property name="wrap-mode">word</property>
                <property name="monospace">True</property>
              </object>
            </child>
          </object>
          <packing>
            <property name="expand">True</property>
            <property name="fill">True</property>
            <property name="position">0</property>
          </packing>
        </child>
        <child>
          <object class="GtkEntry" id="sayit">
            <property name="visible">True</property>
            <property name="can-focus">True</property>
            <property name="show-emoji-icon">True</property>
            <signal name="activate" handler="sayit_activate_cb" swapped="no"/>
          </object>
          <packing>
            <property name="expand">False</property>
            <property name="fill">True</property>
            <property name="position">1</property>
          </packing>
        </child>
      </object>
    </child>
  </object>
</interface>
	"""
