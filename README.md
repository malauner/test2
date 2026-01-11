# Enterprise Architecture - Transferarbeit CAS EA3

LaTeX-Vorlage für die Transferarbeit im Rahmen des CAS EA3 an der HSLU.

**Autoren:** Marc C., Christian H.

## Kompilierung

Das Dokument wird mit folgenden Befehlen kompiliert:

```bash
pdflatex main
biber main
pdflatex main
```

Oder alternativ mit `latexmk`:
```bash
latexmk -pdf main.tex
```

## Änderungen an der LaTeX-Vorlage

### 1. Dokumentklasse
- Von `article` zu `scrartcl` (KOMA-Script) gewechselt
- Optionen hinzugefügt: `twoside`, `openright`, `bibliography=totoc`

### 2. Neue Packages
- `geometry` für optimierte Seitenränder (2.5cm + 0.5cm Bindungskorrektur)
- `booktabs` und `longtable` für professionelle Tabellen

### 3. Bessere Struktur
- Ausführliche Kommentare für jeden Abschnitt
- Sinnvolle Gliederung für eine EA-Arbeit:
  - Einleitung (mit Motivation, Zielsetzung, Aufbau)
  - Grundlagen EA (Definition, Frameworks, Konzepte)
  - Methodik und Vorgehen
  - Analyse und Ergebnisse
  - Diskussion
  - Fazit und Ausblick
  - Anhang
- Alle Sections haben `\label{}` für Querverweise

### 4. Verbesserte Verzeichnisse
- Inhaltsverzeichnis
- Abbildungsverzeichnis (`\listoffigures`)
- Tabellenverzeichnis (`\listoftables`)

### 5. Metadaten
- Titel, Subtitle, Datum hinzugefügt

## Projektstruktur

```
test2/
├── main.tex                    # Hauptdokument
├── main.pdf                    # Kompiliertes PDF
├── testbiblio.bib             # Bibliographie
├── bilder/                    # Verzeichnis für Abbildungen
├── bsp_citat/                 # Beispiele für Zitation
└── Vorlage_Deckblatt_Transferarbeit.pdf  # HSLU Deckblatt
```

## Anforderungen

- LaTeX-Distribution (z.B. MacTeX, TeXLive, MiKTeX)
- Biber für die Bibliographie-Verarbeitung
- Packages: KOMA-Script, geometry, biblatex (mit APA-Style)
