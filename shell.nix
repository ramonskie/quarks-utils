{ pkgs ? import <nixpkgs> {} }:

let
    pkgs = import (builtins.fetchTarball {
        url = "https://github.com/NixOS/nixpkgs/archive/bf972dc380f36a3bf83db052380e55f0eaa7dcb6.tar.gz";
    }) {};

    myPkg = pkgs.go_1_17;
in

pkgs.mkShell {
  buildInputs = [
    pkgs.go_1_17
  ];
}
