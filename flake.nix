{
  description = "A collection of flake templates (this is based on nixos/templates)";

  inputs = {
    temps.url = "github:NixOS/templates";
    utils.url = "github:numtide/flake-utils";
  };

  outputs = {
    self,
    temps,
    utils,
  }: {
    templates = {
      haskell-flake = {
        path = ./haskell;
        description = "A haskell-flake template";
        welcomeText = ''
          You just created a haskell-flake template.

          `nix develop --run fish`

          `nix run`

          `nix build`

        '';
      };

      gleam = {
        path = ./gleam;
        description = "A gleam template";
        welcomeText = ''
          You just created a gleam-flake template.

          `nix develop --run fish`

          Then: `gleam run` or `gleam build`

        '';
      };

      go = {
        path = ./go-tmp;
        description = "A go template";
        welcomeText = ''
          You just created a go-flake template.
          You should grep for TODO and replace the fakeSha256 with the actual sha256.

          `rg TODO flake.nix`

          `nix develop --run fish`

          Then: `go run` or `go build`

        '';
      };
    } // temps.templates 
      // utils.templates;

    defaultTemplate = utils.templates.each-system;
  };
}
