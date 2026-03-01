# Enterprise Architecture - Transferarbeit CAS EA3

Transferarbeit im Rahmen des CAS EA3 an der HSLU.

**Autoren:** Marc C., Christian H.

## Projektstruktur

```
test2/
├── main.tex                          # Hauptdokument
├── main.pdf                          # Kompiliertes PDF
├── render-diagrams.sh                # Mermaid → PDF Render-Script
├── chapters/                         # Kapitel als separate .tex-Dateien
│   ├── einleitung.tex
│   ├── ea-grundlagen.tex
│   ├── methodik.tex
│   ├── analyse.tex
│   ├── diskussion.tex
│   └── fazit.tex
├── diagrams/                         # Mermaid-Diagramme (.mmd) und gerenderte PDFs
├── figures/
│   └── canvas-designs/              # Canvas-Export PDFs
├── bibliography/
│   └── references.bib               # Bibliographie (Zotero/BibTeX)
├── bilder/                           # Sonstige Abbildungen
├── bsp_citat/                        # Beispiele für Zitation (temporär)
└── Vorlage_Deckblatt_Transferarbeit.pdf  # HSLU Deckblatt
```

## Kompilierung

```bash
pdflatex main
biber main
pdflatex main
```

Oder mit `latexmk`:
```bash
latexmk -pdf main.tex
```

## Diagramme rendern

Mermaid-Diagramme aus `diagrams/*.mmd` als PDF rendern:

```bash
./render-diagrams.sh
```

Voraussetzung: `npm install -g @mermaid-js/mermaid-cli`

Neues Diagramm hinzufügen:
1. `.mmd`-Datei in `diagrams/` erstellen (z.B. via Claude.ai)
2. `render-diagrams.sh` ausführen → PDF wird generiert
3. Beide Dateien committen
4. In LaTeX einbinden: `\includegraphics{diagrams/mein-diagramm.pdf}`

## Workflow

Dieses Repo ist Teil einer **Creation-First Architektur**:
- Diagramme und Inhalte werden in **Claude.ai** erstellt
- Mermaid-Quellcode (`.mmd`) wird hier versioniert
- Kompilierung und Kollaboration über **Overleaf** (Git-Sync)

## Anforderungen

- LaTeX-Distribution (MacTeX, TeXLive oder MiKTeX)
- Biber für Bibliographie-Verarbeitung
- Packages: KOMA-Script, geometry, biblatex (APA-Style)
- Node.js + `@mermaid-js/mermaid-cli` für Diagramm-Rendering
