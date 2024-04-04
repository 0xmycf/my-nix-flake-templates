#!/usr/bin/env bash

CONTENT=$(cat <<EndOfContent
# my-nix-flake-templates

\`\`\`
nix flake show github:0xmycf/my-nix-flake-templates
\`\`\`

\`\`\`
Currently there are these templates:
$(nix flake show github:0xmycf/my-nix-flake-templates)
\`\`\`
EndOfContent
)

echo "$CONTENT" > readme.md
