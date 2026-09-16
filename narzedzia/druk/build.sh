#!/usr/bin/env bash
# Buduje wersje do druku (PDF) i edytowalne (DOCX) konspektów cyklu
# „12 Kroków na drodze do wolności” (12 spotkań + spotkania łączone z folderu
# „10 spotkań”) oraz pliku „założenia i komentarz”.
#
# Wymaga: pandoc (w PATH albo w zmiennej PANDOC), Google Chrome, perl (jest w Git Bash).
# Użycie (Git Bash, z katalogu FOZ-ZOE):
#   bash narzedzia/druk/build.sh
#   PANDOC=/sciezka/do/pandoc.exe bash narzedzia/druk/build.sh
# Wynik: 12-kroków-konspekty-spotkań/do-druku/{pdf,docx}
set -euo pipefail

TOOLS="$(cd "$(dirname "$0")" && pwd)"
ROOT="$(cd "$TOOLS/../.." && pwd)"
CYKL="$ROOT/12-kroków-konspekty-spotkań"
OUT="$CYKL/do-druku"
PANDOC="${PANDOC:-pandoc}"
CHROME="${CHROME:-/c/Program Files/Google/Chrome/Application/chrome.exe}"
WORK="$(mktemp -d)"
trap 'rm -rf "$WORK"' EXIT
mkdir -p "$OUT/pdf" "$OUT/docx"

build_one() {
  local src="$1" name="$2" stopka="$3"
  local html="$WORK/$name.html" head="$WORK/$name.head.html"

  {
    echo '<style>'
    cat "$TOOLS/print.css"
    printf '@page { @bottom-left { content: "%s"; } }\n' "$stopka"
    echo '</style>'
  } > "$head"

  "$PANDOC" "$src" -f markdown -t html5 --standalone --wrap=none \
    --metadata pagetitle="$name" --metadata lang=pl -H "$head" \
    | perl "$TOOLS/post.pl" > "$html"

  # Osobny profil — nie podłącza się do otwartej przeglądarki użytkownika.
  "$CHROME" --headless=new --disable-gpu --no-first-run \
    --user-data-dir="$(cygpath -w "$WORK/chrome-profile")" \
    --no-pdf-header-footer \
    --print-to-pdf="$(cygpath -w "$OUT/pdf/$name.pdf")" \
    "file:///$(cygpath -m "$html")" 2>/dev/null

  "$PANDOC" "$src" -f markdown -t docx --metadata lang=pl -o "$OUT/docx/$name.docx"
  echo "OK  $name"
}

for f in "$CYKL/12 spotkań"/krok-*.md; do
  name="$(basename "$f" .md)"
  n="$(grep -m1 '^krok:' "$f" | awk '{print $2}')"
  build_one "$f" "$name" "12 Kroków na drodze do wolności · Krok $n z 12"
done

# Spotkania łączone (wersja 10-spotkaniowa), np. kroki-02-03-….md
for f in "$CYKL/10 spotkań"/kroki-*.md; do
  [ -e "$f" ] || continue
  name="$(basename "$f" .md)"
  a="$(echo "$name" | cut -d- -f2)"; b="$(echo "$name" | cut -d- -f3)"
  build_one "$f" "$name" "12 Kroków na drodze do wolności · Kroki $((10#$a))–$((10#$b)) z 12 (spotkanie łączone)"
done

build_one "$CYKL/12 Kroków na drodze do wolności - założenia i komentarz.md" \
  "00-zalozenia-i-komentarz" "12 Kroków na drodze do wolności · Założenia i komentarz"
