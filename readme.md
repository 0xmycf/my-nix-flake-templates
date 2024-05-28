# my-nix-flake-templates

```shell
nix flake show github:0xmycf/my-nix-flake-templates
```

Currently there are these templates:

```yml
---
bash-hello:
  description: An over-engineered Hello World in bash
  type: template
c-hello:
  description: An over-engineered Hello World in C
  type: template
check-utils:
  description: A flake with tests
  type: template
compat:
  description: A default.nix and shell.nix for backward compatibility with Nix installations
    that don't support flakes
  type: template
default:
  description: A flake using flake-utils.lib.eachDefaultSystem
  type: template
dotnet:
  description: A .NET application and test project
  type: template
each-system:
  description: A flake using flake-utils.lib.eachDefaultSystem
  type: template
empty:
  description: A flake with no outputs
  type: template
full:
  description: A template that shows all standard flake outputs
  type: template
gleam:
  description: "(mycf) A gleam template"
  type: template
go:
  description: "(mycf) A go template"
  type: template
go-hello:
  description: A simple Go package
  type: template
haskell-flake:
  description: "(mycf) A haskell-flake template"
  type: template
haskell-hello:
  description: A Hello World in Haskell with one dependency
  type: template
haskell-nix:
  description: An haskell.nix template using hix
  type: template
hercules-ci:
  description: An example for Hercules-CI, containing only the necessary attributes
    for adding to your project.
  type: template
ocaml:
  description: "(mycf) An ocaml-flake template"
  type: template
pandoc-xelatex:
  description: A report built with Pandoc, XeLaTex and a custom font
  type: template
python:
  description: Python template, using poetry2nix
  type: template
rust:
  description: Rust template, using Naersk
  type: template
rust-web-server:
  description: A Rust web server including a NixOS module
  type: template
simple-flake:
  description: A flake using flake-utils.lib.simpleFlake
  type: template
simpleContainer:
  description: A NixOS container running apache-httpd
  type: template
trivial:
  description: A very basic flake
  type: template
utils-generic:
  description: Simple, all-rounder template with utils enabled and devShell populated
  type: template

```
