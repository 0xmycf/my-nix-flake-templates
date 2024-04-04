{
  pkgs,
  system,
}:
# I think macos has problems with this
let
  func =
    if system == "x86_64-apple-darwin" || system == "x86_64-darwin" || system == "darwin"
    then pkgs.buildGoModule
    else pkgs.buildGoModule.override {stdenv = pkgs.pkgsStatic.stdenv;};
in
  func rec {
    pname = "go-app";
    version = import ./version.nix;
    src = ./.;
    ldflags = [
      "-X main.version=${version}"
    ];

    CGO_ENABLED = 0;
    vendorHash = pkgs.lib.fakeSha256;

    meta = with pkgs.lib; {
      description = "TODO: A discord program";
      homepage = "TODO: homepage";
      license = licenses.mit;
      maintainers = ["github.com/0xmycf"];
    };
  }
