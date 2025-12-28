#!/usr/bin/env ruby
# frozen_string_literal: true

require "json"
require "yaml"

output = `nix flake show --json`

# hacky but sexy
class String
  def make_content
    "# my-nix-flake-templates\n"\
    "\n"\
    "```shell\n"\
    "nix flake show github:0xmycf/my-nix-flake-templates\n"\
    "```\n"\
    "\n"\
    "Currently there are these templates:\n"\
    "\n"\
    "```yml\n"\
    "#{self}\n"\
    "```\n"
  end
end

output = JSON.parse(output)

File.write('readme.md', YAML.dump(output["templates"]).make_content)
