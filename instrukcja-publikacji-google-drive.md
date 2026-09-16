# Instrukcja: wersje do druku i publikacja konspektów na Google Drive

Dokument opisuje, jak z plików `.md` w repozytorium przygotować materiały gotowe do druku i jak umieścić je na Google Drive. Jest przeznaczony dla autorów konspektów i dla agenta AI.

---

## 1. Co publikujemy i gdzie

| Element | Ustalenie |
|---|---|
| Folder docelowy na Google Drive | `DK/konspekty-spotkań/12kroków` (cykl „12 Kroków na drodze do wolności”) |
| Zawartość | 12 konspektów (`krok-01` … `krok-12`), 4 spotkania łączone do wersji 10-spotkaniowej (`kroki-02-03`, `kroki-06-07`, `kroki-08-09`, `kroki-10-11`) + `00-zalozenia-i-komentarz` |
| Wersja do druku | **PDF** (A4) — plik, który się drukuje i rozsyła parom |
| Wersja edytowalna | **DOCX** — po wgraniu na Drive można ją otworzyć jako Dokument Google i nanosić uwagi |
| Źródło prawdy | pliki `.md` w repozytorium; PDF i DOCX są zawsze generowane z nich, nie edytowane ręcznie |

**Oznaczenia „DO SPRAWDZENIA” zostają w wersjach do druku** (ramki 🔍 na pomarańczowym tle, znaczniki `[DO UZUPEŁNIENIA]`, `[DO WERYFIKACJI]`), dopóki człowiek nie sprawdzi i nie usunie ich w pliku `.md`. Każda strona PDF ma w nagłówku napis **SZKIC DO WERYFIKACJI**.

> Materiały zawierają przekłady robocze i nawiązania do tekstów AA. Przed udostępnieniem poza zespołem autorów zob. [założenia i komentarz, cz. 4 (prawa autorskie)](12-kroków-konspekty-spotkań/12%20Kroków%20na%20drodze%20do%20wolności%20-%20założenia%20i%20komentarz.md). Folder na Drive udostępniamy tylko osobom, które weryfikują lub prowadzą spotkania.

---

## 2. Generowanie wersji do druku

Skrypt: [narzedzia/druk/build.sh](narzedzia/druk/build.sh) (+ `print.css`, `post.pl`).

**Wymagania:** pandoc (w `PATH` lub wskazany zmienną `PANDOC`; wystarczy wersja przenośna — plik zip z [github.com/jgm/pandoc/releases](https://github.com/jgm/pandoc/releases)), Google Chrome, Git Bash (zawiera perl).

**Uruchomienie** (Git Bash, w katalogu `FOZ-ZOE`):

```bash
bash narzedzia/druk/build.sh
# albo z pandoc przenośnym:
PANDOC=/c/sciezka/pandoc-3.11/pandoc.exe bash narzedzia/druk/build.sh
```

**Wynik:** `12-kroków-konspekty-spotkań/do-druku/pdf/*.pdf` oraz `…/do-druku/docx/*.docx`.

**Co robi skrypt:**
1. pandoc zamienia `.md` na HTML — konspekty z `12 spotkań/`, spotkania łączone z `10 spotkań/` (stopka „Kroki N–M z 12 (spotkanie łączone)”) i plik „założenia i komentarz”;
2. `post.pl` oznacza ramki 🔍 jako „do sprawdzenia”, wyróżnia tekst kroku i znaczniki `[DO …]`, a przy linkach dopisuje adres (na papierze link nie jest klikalny);
3. Chrome w trybie bez okna drukuje HTML do PDF (A4, stopka z nazwą cyklu i numerem kroku, numeracja „str. X / Y”);
4. pandoc tworzy równolegle DOCX.

**Zasady:**
- Po każdej zmianie w `.md` wygeneruj PDF i DOCX ponownie — nie poprawiaj PDF ani DOCX ręcznie.
- Chrome uruchamiaj zawsze z osobnym profilem (`--user-data-dir`), inaczej polecenie może otworzyć kartę w przeglądarce użytkownika zamiast drukować. Z tego samego powodu **nie uruchamiaj** `chrome.exe --version` na Windows — sprawdzaj wersję przez właściwości pliku.
- Numeracja stron w stopce wymaga Chrome/Edge w wersji obsługującej pola marginesów `@page` (sprawdzone na Chrome 153).
- Przed publikacją obejrzyj przynajmniej jeden PDF (strona tytułowa, ramka 🔍, tabela „Wykaz miejsc do sprawdzenia”).

---

## 3. Publikacja na Google Drive

### 3.1. Z sesji agenta AI (gdy ma dostęp do Drive)

Łącze Google Drive (konektor claude.ai) **nie jest dostępne w sesjach Claude Code uruchamianych w rozszerzeniu VS Code** — nawet jeśli `claude mcp list` pokazuje „Google Drive ✔ Connected”, narzędzia Drive nie są wtedy przekazywane do sesji (sprawdzone we wrześniu 2026 w dwóch niezależnych sesjach). W innych sesjach tego samego konta konektor działał (np. przy pracy nad repozytorium `klasa6`) — prawdopodobnie były to sesje Claude Desktop / claude.ai, co warto potwierdzić przy pierwszej publikacji.

Dlatego:
1. Agent w VS Code **generuje pliki** (część 2) i kończy pracę, podając ścieżkę do `do-druku/`.
2. Publikację robi człowiek ręcznie (3.2) albo sesja, w której narzędzia Google Drive są faktycznie widoczne — wtedy agent wgrywa pliki z `do-druku/` do folderu `DK/konspekty-spotkań/12kroków`, zachowując nazwy plików.
3. Agent nie tworzy obejść (własne klucze API, rclone z logowaniem, skrypty wysyłające pliki) bez wyraźnej zgody użytkownika.

### 3.2. Ręcznie (przeglądarka)

1. Otwórz [drive.google.com](https://drive.google.com) i przejdź do folderu **DK → konspekty-spotkań → 12kroków** (utwórz brakujące foldery).
2. Utwórz w nim dwa podfoldery: **PDF do druku** i **Edytowalne (DOCX)**.
3. Przeciągnij pliki z `12-kroków-konspekty-spotkań/do-druku/pdf` do **PDF do druku**, a z `…/do-druku/docx` do **Edytowalne (DOCX)**.
4. Jeśli pliki o tych nazwach już są — przy aktualizacji wybierz **„Zastąp istniejący plik”** (Drive zachowa link i historię wersji), zamiast tworzyć kopie z dopiskiem „(1)”.
5. (Opcjonalnie) Aby nanosić komentarze, kliknij DOCX prawym przyciskiem → **Otwórz za pomocą → Dokumenty Google**. Uwagi merytoryczne przenosi się potem do pliku `.md` w repozytorium.
6. Udostępnij folder tylko osobom z zespołu (patrz uwaga w części 1).

---

## 4. Lista kontrolna publikacji

- [ ] Wszystkie pliki `.md` cyklu są aktualne (w tym `tekst_kroku` zgodny z plikiem kroków)
- [ ] PDF i DOCX wygenerowane skryptem po ostatniej zmianie
- [ ] Obejrzany co najmniej jeden PDF
- [ ] Oznaczenia 🔍 DO SPRAWDZENIA i `[DO …]` widoczne w PDF
- [ ] Pliki wgrane do `DK/konspekty-spotkań/12kroków` (PDF i DOCX w osobnych podfolderach), stare wersje zastąpione, nie zdublowane
- [ ] Folder udostępniony tylko właściwym osobom
