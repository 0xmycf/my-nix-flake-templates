{
  description = "Nix Flake for OCaml";

  inputs = {
    flake-utils.url = "github:numtide/flake-utils";
    nixpkgs.url =  "github:nixos/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let pkgs = nixpkgs.legacyPackages.${system}; in
      {
        devShell = pkgs.mkShellNoCC {
          name = "ocaml shell";
          packages = with pkgs; [
            ocaml
            dune_3
            ocamlPackages.ocaml-lsp
            ocamlPackages.ocamlformat
          ];
        };
      }
    );
}
