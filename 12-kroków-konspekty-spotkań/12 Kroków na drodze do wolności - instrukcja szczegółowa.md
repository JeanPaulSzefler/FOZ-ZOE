# Instrukcja szczegółowa: konspekty cyklu „12 Kroków na drodze do wolności”

Dokument **uzupełnia i częściowo zmienia** ogólną [instrukcję tworzenia konspektów](../instrukcja-tworzenia-konspektow.md). Obowiązuje tylko konspekty tego cyklu. Wszystko, czego tu nie zmieniono, stosuje się według instrukcji ogólnej (struktura I–III, słowa MUSI / POWINIEN / MOŻE, zakazy dla agenta AI, lista kontrolna).

Jeśli oba dokumenty mówią co innego, **pierwszeństwo ma ta instrukcja**.

---

## 1. O cyklu

| Element | Ustalenie |
|---|---|
| Temat roczny | „12 Kroków na drodze do wolności” |
| Liczba spotkań | 12 — jedno spotkanie na jeden krok |
| Kolejność kroków | według [12 Kroków na drodze do wolności.md](12%20Kroków%20na%20drodze%20do%20wolności.md) |
| Materiał wyjściowy | analizy w [../źródła/analizy-ai/](../źródła/analizy-ai/) — porównanie kroków z Pismem, ojcami Kościoła, św. Ignacym i nauczaniem papieży |
| Folder na konspekty | ten folder — [12-kroków-konspekty-spotkań/](./) |

**Główna oś: niewola grzechu.** Kroki czytamy jako drogę nawrócenia — wyjścia z niewoli grzechu. Uzależnienie jest jedną z form tej niewoli, nie osią cyklu. Uzasadnienie, rozróżnienie pojęć (grzech, wada, pożądliwość, uzależnienie) i źródła: [założenia i komentarz do cyklu](12%20Kroków%20na%20drodze%20do%20wolności%20-%20założenia%20i%20komentarz.md). Konspekt MUSI te pojęcia rozróżniać i używać formuły „o własnych siłach” przy mówieniu o bezsilności.

**Adresat i ton.** Konspekty są dla małżeństw DK, nie dla grupy AA. Krok nie może zakładać, że uczestnik jest uzależniony. Każdy krok trzeba przełożyć na trzy kręgi:
1. **osobiste zniewolenia** — grzechy, do których wracam, wady główne, nieuporządkowane przywiązania, nałogi (telefon, praca, jedzenie, kontrola, gniew, pornografia, zakupy itd.);
2. **małżeństwo i rodzina** — życie obok osoby uzależnionej, współuzależnienie, wzorce z domu rodzinnego;
3. **droga chrześcijańska** — nawrócenie, łaska, sakramenty, formacja DK, KWC.

**Analizy AI nie są źródłem cytatów.** Służą jako mapa tropów: co warto sprawdzić. Każdy cytat wzięty z analizy MUSI zostać sprawdzony w tekście źródłowym (patrz 4.3).

---

## 2. Zmiany w stosunku do instrukcji ogólnej

### 2.1. Brak miesiąca
- Konspekt **NIE podaje miesiąca ani roku** — w nagłówku, frontmatterze ani nazwie pliku.
- Zamiast miesiąca podaje się **numer kroku**: „Krok 1 z 12”.
- Akcent miesiąca w „Dzieleniu się życiem” (instrukcja ogólna 2.1) zastępuje akcent związany z krokiem.
- Zobowiązania wiodącego nie wybiera się z tabeli miesięcy (instrukcja ogólna 1.4), tylko **według treści kroku** (patrz tabela w części 6).

### 2.2. Nazwa pliku
`krok-NN-slug-tematu.md`, np. `krok-01-bezsilnosc.md`. Numer zawsze dwucyfrowy, bez polskich znaków w nazwie.

### 2.3. Frontmatter
Pole `miesiac` usuwa się. Dochodzą pola `krok`, `tekst_kroku`, `status`:

```yaml
---
typ: konspekt
cykl: "12 Kroków na drodze do wolności"
krok: 1
tekst_kroku: "…pełne brzmienie kroku z pliku źródłowego…"
temat: "…"
metoda: "A: tekst+pytania"
zobowiazanie_wiodace: "…"
status: "szkic do weryfikacji"
autorzy: "[DO UZUPEŁNIENIA]"
---
```

### 2.4. Więcej propozycji z Ewangelii
- W części modlitewnej, przy dzieleniu się słowem Bożym, konspekt MUSI podać **co najmniej 3 propozycje z Ewangelii**.
- Pierwsza propozycja jest **wiodąca** (pogrubiona). Pozostałe to alternatywy, każda z jednozdaniowym uzasadnieniem, co wnosi do tematu.
- MOŻNA dodać propozycje spoza Ewangelii (listy, psalmy), ale jako osobną podlistę i nie zamiast Ewangelii.
- Sugestia „Namiot Spotkania” (4 perykopy na tydzień) POWINNA zawierać co najmniej 2 teksty z Ewangelii.

### 2.5. Ojcowie Kościoła i papieże przedsoborowi — obowiązkowo
Hierarchia źródeł z instrukcji ogólnej (2.6) zostaje rozszerzona. Każdy konspekt MUSI zawierać:

| Grupa | Minimum | Przykłady autorów |
|---|---|---|
| Pismo Święte | tekst do dzielenia się + cytaty w omówieniu | Biblia Tysiąclecia |
| **Ojcowie Kościoła** | **co najmniej 1 tekst** (zalecane 2 różnych autorów) | św. Augustyn, Jan Kasjan, św. Jan Chryzostom, św. Grzegorz Wielki, św. Bazyli, Ojcowie Pustyni |
| **Papieże przedsoborowi** (przed 1962) | **co najmniej 1 tekst** (zalecane 2 papieży) | Leon XIII, św. Pius X, Pius XI, Pius XII |
| Magisterium współczesne | co najmniej 1 tekst | KKK, Jan Paweł II, Benedykt XVI, Franciszek |
| ks. F. Blachnicki / KWC | co najmniej 1 tekst lub znacznik `[DO UZUPEŁNIENIA]` | *Podręcznik KWC*, *Wolni i wyzwalający*, *Charyzmat i wierność* |

MOŻNA korzystać także z **tradycji ignacjańskiej** (*Ćwiczenia duchowne*) i z o. Edwarda Dowlinga SJ — analizy pokazują, że są blisko Kroków. Nie zastępują jednak ojców Kościoła ani papieży.

Teksty ojców i papieży POWINNY być wplecione w omówienie tematu krótkim fragmentem. Pełniejszy fragment trafia do tekstów pomocniczych.

### 2.6. Teksty pomocnicze: polski przekład + linki
Każdy tekst pomocniczy MUSI mieć:
1. **tekst po polsku**;
2. **opis źródła**: autor, tytuł, miejsce w dziele (księga, rozdział, punkt), przekład i tłumacz, jeśli znany;
3. **link do polskiego tekstu**, jeśli istnieje w sieci;
4. **link do oryginału lub oficjalnego przekładu** (vatican.va, newadvent.org itp.), gdy polski tekst nie jest oficjalny albo nie ma go w sieci.

Rodzaje przekładu (oznaczać zawsze):

| Oznaczenie | Kiedy |
|---|---|
| *Przekład: [nazwisko / wydanie]* | Istniejący polski przekład, sprawdzony w źródle. |
| *Przekład roboczy z [język], do weryfikacji* | Autorzy konspektu lub agent AI tłumaczą sami. Taki akapit MUSI mieć też znacznik z 2.7. |

Stara polszczyzna (np. przekłady z XIX w.): MOŻNA uwspółcześnić pisownię (é → e, ztrząsnąć → strząsnąć), ale nie słownictwo. Trzeba dopisać: *pisownia uwspółcześniona*.

### 2.8. Towarzyszenie duchowe zamiast kierownictwa duchowego — zasada obowiązkowa
Dokumenty cyklu (konspekty, instrukcje, założenia, teksty kroków) **NIE używają pojęć „kierownictwo duchowe”, „kierownik duchowy”** ani ich odpowiedników (np. „duchowy sponsor”, *spiritual director*).

Gdy mowa o wsparciu osoby z większym doświadczeniem na drodze wiary, używa się sformułowań:
- **towarzyszenie duchowe** / **osoba towarzysząca duchowo**;
- **doradzanie w sprawach rozwoju duchowego** / **osoba doradzająca w sprawach rozwoju duchowego**.

Zasady:
- Dotyczy to także **komentarzy, streszczeń i przekładów roboczych** przygotowanych przez autorów konspektu lub agenta AI.
- Analizy AI w `źródła/analizy-ai/` używają pojęcia „kierownictwo duchowe” (np. przy *Ćwiczeniach duchownych* i *Menti nostrae*). Przenosząc treść do konspektu, trzeba ją przeredagować według tej zasady.
- Jeśli pojęcie występuje w **dosłownym cytacie** z dokumentu źródłowego (np. przekład encykliki), cytatu nie wolno zmieniać. Należy wtedy wybrać inny fragment albo skrócić cytat znakiem `(…)`. Jeśli nie da się tego zrobić, akapit dostaje znacznik `🔍 DO SPRAWDZENIA — adaptacja`.
- Nie dotyczy wyrażeń o Bogu (np. „prowadzenie Boże”), które nie mówią o relacji między ludźmi.

### 2.7. Znaczniki akapitów do szczególnego sprawdzenia
Nad akapitem wymagającym uwagi umieszcza się blok:

```markdown
> 🔍 **DO SPRAWDZENIA — {rodzaj}:** {co dokładnie sprawdzić i dlaczego}
```

Rodzaje:

| Rodzaj | Kiedy używać |
|---|---|
| **źródło** | Cytat nie został sprawdzony w pełnym tekście, niepewny jest numer, strona lub wydanie. |
| **przekład** | Przekład roboczy albo przekład z nieoficjalnej strony. |
| **teologia** | Sformułowanie, które łatwo źle zrozumieć (np. bezsilność a wolna wola, krok 5 a spowiedź, „Bóg, jakkolwiek Go rozumiemy”). |
| **duszpasterstwo** | Treść, która może zranić lub zawstydzić uczestników (uzależnienie w rodzinie, przemoc, wstyd), albo wymaga delikatności w prowadzeniu. |
| **adaptacja** | Miejsce, gdzie treść z AA lub analizy AI przenosimy na grunt DK. |

Zasady:
- Znacznik stoi **nad akapitem**, nie w środku zdania. Drobne braki w zdaniu dalej oznacza się `[DO WERYFIKACJI: …]` / `[DO UZUPEŁNIENIA: …]` jak w instrukcji ogólnej.
- Znaczniki usuwa **człowiek** po sprawdzeniu, nie agent AI.
- Konspekt z choć jednym znacznikiem ma w frontmatterze `status: "szkic do weryfikacji"`.
- Na końcu konspektu MUSI być sekcja **„Wykaz miejsc do sprawdzenia”** — lista wszystkich znaczników z odnośnikiem do sekcji.

---

## 3. Stałe elementy każdego konspektu cyklu

1. **Tekst kroku** w cytacie blokowym pod tytułem — dokładnie tak, jak w pliku źródłowym.
2. **Cel spotkania** (obowiązkowy, jak w metodzie B).
3. **Świeca**: zapalenie świecy z odczytaniem **J 8,31-32** („prawda was wyzwoli”) — stały werset całego cyklu.
4. **Pytanie o tajemnicę kręgu** w „Dzieleniu się życiem” przypominające, że to, co zostało powiedziane w kręgu, zostaje w kręgu. Zwłaszcza przy krokach 1, 4, 5, 8, 9.
5. **Zdanie o pomocy specjalistycznej** w tekście lub teksty pomocnicze: krąg nie zastępuje terapii ani sakramentu pokuty; podać, gdzie szukać pomocy (poradnia, AA / Al-Anon, KWC, duszpasterz, osoba towarzysząca duchowo).
6. **Sekcja „Gdzie analogia pęka”** — krótki akapit w omówieniu tematu, co w danym kroku różni ujęcie AA od nauczania Kościoła (materiał jest w analizach). Chroni przed utożsamieniem 12 Kroków z drogą sakramentalną.
7. **Wykaz miejsc do sprawdzenia** na końcu.

---

## 4. Zasady dla agenta AI (dodatkowe)

### 4.1. Dane wejściowe
Przed pisaniem przeczytaj: instrukcję ogólną, tę instrukcję, plik z tekstem kroków, fragment danego kroku we **wszystkich** analizach w [../źródła/analizy-ai/](../źródła/analizy-ai/) oraz konspekty poprzednich kroków (żeby nie powtarzać perykop, tajemnic i cytatów).

### 4.2. Kolejność pracy
1. Zbierz z analiz tropy: perykopy, ojcowie, papieże, Ignacy, „gdzie analogia pęka”.
2. **Sprawdź każdy cytat w źródle** (pobierz tekst i odszukaj dokładne brzmienie). Cytat, którego nie udało się znaleźć, nie wchodzi do tekstu albo dostaje znacznik **źródło**.
3. Wersety biblijne bierz z Biblii Tysiąclecia (np. biblia-online.pl, biblia.deon.pl).
4. Szukaj polskiego przekładu w sieci (Wikiźródła, opoka.org.pl, vatican.va/pl). Jeśli go nie ma — przekład roboczy ze znacznikiem **przekład**.
5. Napisz konspekt według szablonu z instrukcji ogólnej ze zmianami z części 2.
6. Dodaj znaczniki i wykaz miejsc do sprawdzenia.

### 4.3. Ostrzeżenia dotyczące analiz AI
- Analizy zawierają **parafrazy podane jak cytaty** i błędne numery (np. różne numery punktów tego samego dokumentu, różne daty *Mens nostra*). Nie przepisuj ich bez sprawdzenia.
- Opisy dokumentów papieskich w analizach bywają ogólnikowe („papież podkreśla…”) i nie odpowiadają konkretnemu fragmentowi. Do konspektu wchodzi tylko fragment odnaleziony w tekście.
- Nie cytuj oficjalnego tekstu Kroków AA (chroniony prawem autorskim, AAWS). Używaj brzmienia z pliku źródłowego cyklu.
- Unikaj źródeł internetowych środowisk pozostających poza jednością z Kościołem (np. blogi sedewakantystyczne), nawet jeśli mają przekład. Wtedy linkuj do vatican.va i oznacz przekład do weryfikacji z wydaniem drukowanym.

---

## 5. Lista kontrolna (dodatkowa do instrukcji ogólnej 5.4)

- [ ] Brak miesiąca i roku; w nagłówku „Krok N z 12”
- [ ] Nazwa pliku `krok-NN-slug.md`, frontmatter z polami `krok`, `tekst_kroku`, `status`
- [ ] Tekst kroku w cytacie blokowym
- [ ] Co najmniej 3 propozycje z Ewangelii do dzielenia się słowem, z uzasadnieniem
- [ ] Namiot Spotkania: co najmniej 2 teksty z Ewangelii
- [ ] Co najmniej 1 tekst ojca Kościoła
- [ ] Co najmniej 1 tekst papieża przedsoborowego
- [ ] Każdy tekst pomocniczy: polski przekład, opis źródła, link(i), oznaczenie przekładu
- [ ] Akapit „Gdzie analogia pęka”
- [ ] Zdanie o tajemnicy kręgu i o pomocy specjalistycznej
- [ ] Brak pojęć „kierownictwo duchowe” / „kierownik duchowy” — zamiast nich towarzyszenie duchowe lub doradzanie w sprawach rozwoju duchowego (2.8)
- [ ] Znaczniki 🔍 DO SPRAWDZENIA nad wątpliwymi akapitami + wykaz na końcu

---

## 6. Tabela pomocnicza: kroki, zobowiązania, tropy

Propozycja robocza — do potwierdzenia przy pisaniu kolejnych konspektów.

| Krok | Temat | Zobowiązanie wiodące | Tajemnica różańca (propozycja) | Główne tropy z analiz |
|---|---|---|---|---|
| 1 | Bezsilność | Namiot Spotkania | Modlitwa w Ogrójcu | Rz 7; Łk 15,17; J 5,6-7; J 15,5; Augustyn *Wyznania* VIII; Leon XIII *Libertas*; Pius X *E supremi* |
| 2 | Wiara w Siłę większą | spotkanie ze słowem Bożym | — | Mk 5,15; Mk 9,24; Augustyn *Wyznania* I,1; Pius XII *Mystici corporis* |
| 3 | Powierzenie woli i życia | modlitwa małżeńska | Zwiastowanie | Łk 22,42; Łk 1,38; *Suscipe*; Leon XIII *Libertas* 11; Pius XII *Mediator Dei* |
| 4 | Inwentura moralna | reguła życia | — | Ps 139; Lm 3,40; ĆD 24-43; Katechizm św. Piusa X |
| 5 | Wyznanie | dialog małżeński | — | Jk 5,16; Łk 15,21; ĆD 44; Pius XII *Mystici corporis* |
| 6 | Gotowość | reguła życia | — | Mt 19,16-22; J 5,6; ĆD 149-157; Pius XI *Mens nostra* |
| 7 | Pokorna prośba | Namiot Spotkania | — | Łk 18,13; Mk 1,40; ĆD 165-168; Pius XII *Haurietis aquas* |
| 8 | Lista skrzywdzonych | dialog małżeński | — | Mt 5,23-24; Łk 19,8; Tomasz *restitutio*; Pius XII *Summi pontificatus* |
| 9 | Zadośćuczynienie | modlitwa rodzinna | — | Łk 19,1-10; Rz 12,18; ĆD 230 |
| 10 | Stały rachunek sumienia | reguła życia | — | 1 Kor 10,12; Mt 26,41; ĆD 24-31; Pius X *Haerent animo* |
| 11 | Modlitwa i rozeznawanie | Namiot Spotkania | — | Mt 6,10; J 6,38; ĆD 313-336; Pius XI *Mens nostra* |
| 12 | Przebudzenie i posłanie | rekolekcje formacyjne | — | Mk 5,19; Łk 22,32; 2 Kor 1,3-4; Pius X *Il fermo proposito* |

Wzorcowy konspekt cyklu: [krok-01-bezsilnosc.md](krok-01-bezsilnosc.md).
