with import <nixpkgs> {} ;
pkgs.mkShell {
  buildInputs = with pkgs; [
    ponyc
    pony-corral
    stdenv
    pkg-config
    gobject-introspection
    glib
    gtk3
    elixir
    erlang
    lldb_7
#    gnome3.gtkhtml
#    enchant
    gnome3.webkitgtk
  ];
}
