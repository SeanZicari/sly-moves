{ pkgs ? import <nixpkgs> { } }:
with pkgs;
stdenv.mkDerivation {
  name = "sly-moves";

  src = ./src;

  builder = ./builder.sh;

  nativeBuildInputs = [ coreutils ];
}
