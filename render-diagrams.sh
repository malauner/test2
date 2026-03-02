#!/bin/bash
# render-diagrams.sh
# Voraussetzung: npm install -g @mermaid-js/mermaid-cli

for f in diagrams/*.mmd; do
  mmdc -i "$f" -o "${f%.mmd}.pdf" -t neutral
done
