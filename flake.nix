{
  description = "A collection of flake templates (this is based on nixos/templates)";

  inputs = {
    temps.url = "github:NixOS/templates?ref=bfc872cab560e3c0852bd073a52eff8093cfeaa6";
  };

  outputs = {
    self,
    temps,
  }: {
    templates = {
      trivial = temps.templates.trivial;

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
        path = ./go;
        description = "A go template";
        welcomeText = ''
          You just created a go-flake template.

          `nix develop --run fish`

          Then: `go run` or `go build`

        '';
      };
    };

    defaultTemplate = temps.templates.trivial;
  };
}
