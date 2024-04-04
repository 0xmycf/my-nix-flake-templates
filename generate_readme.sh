#!/usr/bin/env bash

nix flake show github:0xmycf/my-nix-flake-templates | pbcopy

CONTENT=$(cat <<EndOfContent
# my-nix-flake-templates

\`\`\`
nix flake show github:0xmycf/my-nix-flake-templates
\`\`\`

Currently there are these templates:
\`\`\`
$(pbpaste)
\`\`\`
EndOfContent
)

echo "$CONTENT" > readme.md
