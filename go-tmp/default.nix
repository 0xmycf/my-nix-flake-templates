{
  pkgs,
  system,
}:
# I think macos has problems with this
let
  buildModule =
    if system == "x86_64-apple-darwin" || system == "x86_64-darwin" || system == "darwin"
    then pkgs.buildGoModule
    else pkgs.buildGoModule.override {stdenv = pkgs.pkgsStatic.stdenv;};
in
  buildModule rec {
    pname = "go-app";
    version = import ./version.nix;
    src = ./.;
    ldflags = [
      "-X main.version=${version}"
    ];

    CGO_ENABLED = 0;
    # use null if there are no dependencies
    # use the fakeHash to figure out the hash of the dependencies
    # if there are some
    # 
    # You can also leave it as null and run `go mod vendor` to
    # download all the dependencies and cache them in the repo under ./vendor
    # 
    # see:
    # https://nixos.org/manual/nixpkgs/stable/#ex-buildGoModule
    vendorHash = null; #pkgs.lib.fakeHash;

    meta = with pkgs.lib; {
      description = "TODO: A go program";
      homepage = "TODO: homepage";
      license = licenses.mit;
      maintainers = ["github.com/0xmycf"];
    };
  }
