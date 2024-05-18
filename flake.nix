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
    templates =
      temps.templates
      // utils.templates
      // {
        haskell-flake = {
          path = ./haskell;
          description = "(mycf) A haskell-flake template";
          welcomeText = ''
            You just created a haskell-flake template.

            `nix develop --run fish`

            `nix run`

            `nix build`

          '';
        };

        gleam = {
          path = ./gleam;
          description = "(mycf) A gleam template";
          welcomeText = ''
            You just created a gleam-flake template.

            `nix develop --run fish`

            Then: `gleam run` or `gleam build`

          '';
        };

        go = {
          path = ./go-tmp;
          description = "(mycf) A go template";
          welcomeText = ''
            You just created a go-flake template.
            You should grep for TODO and replace the fakeSha256 with the actual sha256.

            `rg TODO flake.nix`

            `nix develop --run fish`

            Then: `go run` or `go build`

          '';
        };
      };

    defaultTemplate = utils.templates.each-system;
  };
}
