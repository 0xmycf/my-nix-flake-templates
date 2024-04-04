{pkgs ? import <nixpkgs> {}}: let
  nilaway = pkgs.buildGoModule {
    pname = "nilaway";
    version = "";
    src = pkgs.fetchFromGitHub {
      owner = "uber-go";
      repo = "nilaway";
      rev = "2f6a74d7c0e26d87215dfbda2c9ab5acbb64b11c";
      sha256 = "NewXpV5o727UILFf7whm7P1eaujWC5msi+jOmrOnl38=";
    };
    vendorHash = "sha256-stn2ysrPSUeRHHCHvypqv9u/ohtoU/nluamvzjXv+UQ=";
  };
in
  pkgs.mkShell {
    name = "Go Nix Shell";
    packages = with pkgs.buildPackages; [
      go
      gopls

      gotools
      go-tools
      golint
      golangci-lint

      nilaway

      # debugger
      # delve
    ];
  }
