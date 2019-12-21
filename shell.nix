{ nixpkgs ? import <nixpkgs> {} }:

with nixpkgs;

let
  jekyll = pkgs.jekyll.override { withOptionalDependencies = true; };
in
  stdenv.mkDerivation rec {
    name = "jekyll-shell";
    env = buildEnv { inherit name; paths = buildInputs; };
    buildInputs = [
      jekyll
    ];
  }
