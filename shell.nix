{ nixpkgs ? import <nixpkgs> {} }:

with nixpkgs;

mkShell {
  name = "jekyll-shell";
  buildInputs = [ bundler curl.out ];
  shellHook = "export LD_LIBRARY_PATH=${curl.out}/lib\${LD_LIBRARY_PATH+:}\${LD_LIBRARY_PATH}";
}
