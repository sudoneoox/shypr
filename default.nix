{ stdenv, lib, ... }:
let
  hypr = ./src;
in
stdenv.mkDerivation {
  pname = "shypr";

  version = "0.0.1";

  buildCommand = ''
    mkdir -p $out
    cp -r ${hypr}/* "$out/"
  '';

  meta = with lib; {
    description = "diego's hyprWM config";
    homepage = "sudoneoox.github.io";
    platforms = platforms.all;
    licenses = license.glp3;
  };
}
