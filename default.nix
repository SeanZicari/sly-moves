{ pkgs ? import <nixpkgs> { } }:
with pkgs;
stdenv.mkDerivation {
  name = "sly-moves";

  src = ./site.tar.gz;

  phases = [ "installPhase" ];

  installPhase = ''
    mkdir -p $out/html
    tar xzvf $src -C $out/html
  '';
}
