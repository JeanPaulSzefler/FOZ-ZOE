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
| Folder na konspekty | [12 spotkań/](12%20spotkań/) — wersja bazowa: 12 spotkań, jeden krok na spotkanie |
| Spotkania łączone | [10 spotkań/](10%20spotkań/) — konspekty łączące dwa kroki (2+3, 6+7, 8+9, 10+11); wybierając dwa z nich, zamiast odpowiednich konspektów bazowych, dostaje się cykl 10 spotkań (zasady: część 7) |
| Wersje do druku | [do-druku/](do-druku/) — PDF i DOCX generowane skryptem; zasady: [instrukcja publikacji na Google Drive](../instrukcja-publikacji-google-drive.md) |

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
8. **Nawiązanie do poprzedniego kroku** w „Dzieleniu się życiem” (od kroku 2) — jedno pytanie o owoc pracy z ubiegłego miesiąca.
9. **Sekcja „Gdzie szukać pomocy”** jako ostatni tekst pomocniczy, dopasowana do tematu kroku (np. przemoc przy krokach 3 i 7, skrupuły przy 4 i 10, porada prawna przy 9).

### 3.1. Zasady duszpasterskie wypracowane przy krokach 2–12
Konspekt MUSI je uwzględnić, gdy temat ich dotyczy:
- **Na kręgu nie dzielimy się treścią** rachunku sumienia, wyznania ani listy skrzywdzonych osób (kroki 4, 5, 8, 9) — tylko doświadczeniem drogi. Krąg nie jest miejscem spowiedzi.
- **Przebaczenie ≠ pojednanie.** Przebaczyć można zawsze; powrót do bliskiej relacji z kimś, kto nadal krzywdzi, nie jest obowiązkiem (krok 8).
- **Pokora ≠ zgoda na krzywdę**, a „powierzenie woli Bogu” nie uzasadnia podporządkowania się przemocy lub manipulacji (kroki 3, 7).
- **Wola Boża w małżeństwie** nie jest objawiana jednemu z małżonków wbrew drugiemu (krok 11).
- **Wyznanie w małżeństwie wymaga roztropności** — sprawy bardzo trudne (zdrada, nałóg, długi) najpierw rozeznaje się ze spowiednikiem, osobą towarzyszącą duchowo lub terapeutą (kroki 5, 9).
- **Rachunek ze swojego życia, nie współmałżonka** (kroki 4, 10); dialog małżeński zaczyna się od siebie i od wdzięczności.
- **Gotowość do uwolnienia się od nałogu obejmuje gotowość do przyjęcia leczenia** (krok 6); niesienie orędzia innym nie oznacza przejmowania roli terapeuty (krok 12).
- **Nie sugerować, że brak uzdrowienia świadczy o słabej wierze** (krok 2).

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
- Unikaj źródeł internetowych środowisk pozostających poza jednością z Kościołem (np. blogi sedewakantystyczne, a także ultramontes.pl i piusx.org.pl — tam są m.in. przekłady św. Cypriana i *Katechizmu św. Piusa X*), nawet jeśli mają przekład. Wtedy linkuj do vatican.va / newadvent.org i oznacz przekład do weryfikacji z wydaniem drukowanym.
- Analizy AI cytują wypowiedzi o. E. Dowlinga SJ — sprawdzaj je w tekście *Catholic Asceticism and the Twelve Steps* (silkworth.net); część jest trafna (np. krok 6 „oddziela mężczyzn od chłopców”, „żelazny związek między upokorzeniem, pokorą i pomocą Bożą”).

### 4.4. Weryfikacja cytatów — wskazówki praktyczne
- **Każdy werset biblijny** (także krótkie cytaty w omówieniu, w części modlitewnej i w zakończeniu) pobierz i porównaj z tekstem **przed** wpisaniem. Nie cytuj z pamięci — przy krokach 2–12 kilkanaście wersetów pisanych z pamięci różniło się od BT.
- Serwis biblia-online.pl ma pojedyncze literówki (np. Mt 5,24 „przez ołtarzem”, Łk 12,40 „której się domyślacie”, 2 Kor 1,7 „co dla was”). Takie miejsca oznacz znacznikiem **źródło** do porównania z wydaniem drukowanym.
- **KKK**: tekst polski na katechizm.opoka.org.pl, strony (kodowanie iso-8859-2): `kkkI-1-3` (142–184), `kkkI-2-1` (198–421), `kkkII-2-1` (1212–1419), `kkkII-2-2` (1420–1532), `kkkIII-1-1` (1700–1876), `kkkIII-1-3` (1949–2051), `kkkIII-2-2` (2196–2557), `kkkIV-1-1` (2566–2649), `kkkIV-1-2` (2650–2696), `kkkIV-1-3` (2697–2758), `kkkIV-2` (2759–2865).
- **Uwaga:** KKK 1435 zawiera słowa „kierownictwo duchowe” — nie cytować (patrz 2.8).
- KKK 1458 zawiera oficjalny polski przekład fragmentu św. Augustyna (*Komentarz do Ewangelii św. Jana* 12,13) — lepszy niż przekład roboczy.
- **Wikiźródła** (*Wyznania* św. Augustyna, przekł. Pękalski 1847): tytuł strony zakoduj procentowo i pobierz z `action=render`; w transkrypcji zdarzają się błędy (np. „wspomóżco”, „prawdziwka”) — oznacz je znacznikiem **przekład**.
- augustinus.it blokuje pobieranie automatyczne (tekst łaciński listów Augustyna trzeba sprawdzić ręcznie).
- Dokumenty papieży przedsoborowych na vatican.va mają zwykle tylko przekład angielski/włoski/łaciński → przekład roboczy ze znacznikiem **przekład**. Numery punktów podawaj według tekstu, z którego tłumaczysz; jeśli numer ustalasz pośrednio — dopisz to w znaczniku.
- Adhortacje *Haerent animo* (Pius X) i *Menti nostrae* (Pius XII) są skierowane do kapłanów — zaznacz to przy cytacie.
- **Przenosząc cytat z innego konspektu, porównuj go z tekstem źródłowym (teksty pomocnicze, BT, KKK), a nie z omówieniem.** Omówienie może zawierać skrót, który nie jest dosłowny — przy tworzeniu spotkań łączonych tak znaleziono dwa błędy w kroku 9 (Łk 14,28: „nie usiądzie wpierw i nie oblicza wydatków”; Pius XI: „z pewnego jeszcze mocniejszego tytułu sprawiedliwości i miłości”). Pomaga automatyczne porównanie: każdy fragment w „…” z pliku ↔ tekst cytatów blokowych, BT i KKK; trafienia bez dopasowania przejrzeć ręcznie (często to własne sformułowania albo różnica wielkości liter).

---

## 5. Lista kontrolna (dodatkowa do instrukcji ogólnej 5.4)

- [ ] Brak miesiąca i roku; w nagłówku „Krok N z 12” (spotkanie łączone: „kroki N i M z 12”)
- [ ] Nazwa pliku `krok-NN-slug.md`, frontmatter z polami `krok`, `tekst_kroku`, `status` (spotkanie łączone: `kroki-NN-MM-slug.md`, pola jak w 7.2)
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
- [ ] `tekst_kroku` i cytat pod tytułem identyczne z [plikiem kroków](12%20Kroków%20na%20drodze%20do%20wolności.md)
- [ ] Każdy werset biblijny porównany z pobranym tekstem BT (4.4)
- [ ] Zasady duszpasterskie z 3.1 uwzględnione, jeśli dotyczą tematu
- [ ] Perykopy, tajemnica różańca i zobowiązanie wiodące nie powtarzają się z innymi krokami bez uzasadnienia (tabela w części 6)
- [ ] Wersje PDF i DOCX wygenerowane ponownie po zmianach ([instrukcja publikacji](../instrukcja-publikacji-google-drive.md))

---

## 6. Tabela pomocnicza: kroki, zobowiązania, tropy

Stan zgodny z konspektami w [12 spotkań/](12%20spotkań/) (wersja bazowa, wrzesień 2026). Przy zmianach aktualizuj tabelę, żeby nie powtarzać perykop, tajemnic i cytatów.

| Krok | Temat | Zobowiązanie wiodące | Tajemnica różańca | Ewangelia wiodąca | Ojcowie Kościoła | Papieże przedsoborowi |
|---|---|---|---|---|---|---|
| 1 | Bezsilność | Namiot Spotkania | Modlitwa w Ogrójcu | J 5,1-9 | Augustyn *Wyznania* VIII,5; X,29; Kasjan *Rozmowy* X,10 | Leon XIII *Libertas* 6; Pius X *E supremi* 6, 8 |
| 2 | Wiara | spotkanie ze słowem Bożym | Wesele w Kanie | Mk 9,14-29 | Augustyn *Wyznania* I,1; Ignacy Antiocheński *Do Efezjan* 7 | Leon XIII *Tametsi futura* 5-6; Benedykt XV *Spiritus Paraclitus* 63 |
| 3 | Powierzenie | modlitwa małżeńska | Zwiastowanie | Łk 1,26-38 | Augustyn *Wyznania* IX,1 | Leon XIII *Annum sacrum* 7-8; Pius XII *Mediator Dei* 99, 104 |
| 4 | Rachunek sumienia | reguła życia | Ofiarowanie w świątyni | Mk 7,14-23 | Augustyn *Wyznania* X,2; X,5 | Pius X *Haerent animo* (rachunek sumienia) |
| 5 | Wyznanie | dialog małżeński | Głoszenie królestwa i wezwanie do nawrócenia | J 20,19-23 | Augustyn *Komentarz do J* 12,13 (za KKK 1458) | Pius XII *Mystici corporis* 88 |
| 6 | Gotowość | rekolekcje formacyjne | Dźwiganie krzyża | Mk 10,17-27 | Augustyn *Wyznania* VIII,7; Kasjan *Rozmowy* V,14 | Leon XIII *Exeunte iam anno* 10; Pius XI *Mens nostra* |
| 7 | Pokorna prośba | modlitwa rodzinna | Ustanowienie Eucharystii | Mk 10,46-52 | Augustyn *List* 118,22 | Leon XIII *Mirae caritatis* 8 |
| 8 | Lista skrzywdzonych | dialog małżeński | Chrzest w Jordanie | Mt 5,20-24 | Cyprian *O modlitwie Pańskiej* 22-23 | Benedykt XV *Pacem, Dei munus* 8 |
| 9 | Zadośćuczynienie | modlitwa małżeńska i rodzinna | Ukrzyżowanie | Łk 19,1-10 | Jan Chryzostom *Homilie na Mt* 16 | Pius XI *Miserentissimus Redemptor* 6-7 |
| 10 | Codzienny rachunek | reguła życia | Znalezienie w świątyni | Łk 12,35-40 | Atanazy *Życie św. Antoniego* 55 | Pius XII *Menti nostrae* 51 |
| 11 | Modlitwa i wola Boża | Namiot Spotkania | Zesłanie Ducha Świętego | Łk 11,1-13 | Cyprian *O modlitwie Pańskiej* 14; Augustyn *List* 130,18 | Benedykt XV *Spiritus Paraclitus* 43; Pius XII *Mediator Dei* 32 |
| 12 | Przebudzenie i posłanie | wszystkie — podsumowanie cyklu | Nawiedzenie | Mk 5,1-20 (w. 18-20) | Augustyn *Wyznania* X,3-4 | Pius X *Il fermo proposito* 3, 11 |

Ignacjańskie teksty w konspektach: ĆD 23 (1), 234 (3), 43 (4), 153-155 (6), 24-27 (10), 318 (11).

Spotkania łączone (folder [10 spotkań/](10%20spotkań/)):

| Kroki | Temat | Zobowiązanie wiodące (+ pytanie dodatkowe) | Tajemnica różańca | Ewangelia wiodąca |
|---|---|---|---|---|
| 2+3 | Wiara i powierzenie | spotkanie ze słowem Bożym (+ modlitwa małżeńska) | Zwiastowanie | Łk 1,26-38 |
| 6+7 | Gotowość i pokorna prośba | rekolekcje formacyjne (+ modlitwa rodzinna) | Dźwiganie krzyża (albo Ustanowienie Eucharystii) | Mk 10,17-27 i 10,46-52 |
| 8+9 | Naprawianie krzywd | modlitwa małżeńska i rodzinna (+ dialog małżeński) | Ukrzyżowanie | Łk 19,1-10 |
| 10+11 | Czuwanie i modlitwa | Namiot Spotkania (+ reguła życia) | Zesłanie Ducha Świętego (albo Znalezienie w świątyni) | Mt 26,36-46 |

Wzorcowy konspekt cyklu: [krok-01-bezsilnosc.md](12%20spotkań/krok-01-bezsilnosc.md). **Uwaga:** konspekt kroku 1 powstał przed zmianą osi cyklu na „niewolę grzechu” — ma nowe brzmienie kroku, ale treść omówienia nadal wychodzi od uzależnienia; do ewentualnego przepracowania.

---

## 7. Spotkania łączone i wersja 10-spotkaniowa

### 7.1. Założenie
- Wersją bazową jest 12 spotkań ([12 spotkań/](12%20spotkań/)). Folder [10 spotkań/](10%20spotkań/) zawiera **konspekty łączone** dla par kroków: **2+3, 6+7, 8+9, 10+11**.
- Pary można wybierać **elastycznie**. Każde łączone spotkanie zastępuje dwa konspekty bazowe: jedno połączenie daje 11 spotkań, dwa — 10 (rok formacyjny wrzesień–czerwiec), trzy — 9, cztery — 8.
- Kroki 1, 4, 5 i 12 **zawsze** mają osobne spotkanie (krok 1 buduje zaufanie i zasady kręgu; 4 i 5 wymagają pracy między spotkaniami; 12 podsumowuje cykl).
- Rekomendacja duszpasterska przy 10 spotkaniach: **2+3 i 6+7** (łączą kroki postawy, nie skracają kroków wymagających działania). Połączenie 8+9 wymaga szczególnej uwagi — patrz 7.3.

### 7.2. Budowa konspektu łączonego
- **Nazwa pliku:** `kroki-NN-MM-slug.md`, np. `kroki-02-03-wiara-i-powierzenie.md`.
- **Frontmatter:** zamiast `krok` i `tekst_kroku` — `kroki: [N, M]` i lista `teksty_krokow` (brzmienie dokładnie jak w pliku kroków), dodatkowo `wersja: "spotkanie łączone"` i `zastepuje: [pliki bazowe]`.
- **Nagłówek:** „spotkanie łączone: kroki N i M z 12”; pod tytułem oba teksty kroków w jednym cytacie blokowym; pod mottem odnośnik do obu konspektów bazowych („pełniejsze omówienie”).
- **Nawiązanie do poprzedniego spotkania** MUSI działać przy każdym wyborze par — np. „Nawiązując do poprzedniego spotkania (krok 7 albo kroki 6 i 7)”. Podobnie „przygotować się do kolejnego spotkania (krok 8 albo spotkanie łączone kroków 8 i 9)”.
- **Jedno zobowiązanie wiodące** + jedno **pytanie dodatkowe** o zobowiązanie drugiego kroku. Dobór jest taki, że przy połączeniu wszystkich czterech par każde z zobowiązań DK nadal pojawia się w cyklu jako wiodące (tabela w części 6).
- **Jedna tajemnica różańca** (MOŻNA podać alternatywę) i **jedna Ewangelia wiodąca** obejmująca oba kroki; wymagania z 2.4 (co najmniej 3 propozycje z Ewangelii, Namiot Spotkania z 2 tekstami z Ewangelii) obowiązują bez zmian.
- **Omówienie** łączy treść obu kroków w jeden tok (np. z podtytułami „On może / Pozwolę Mu”), a nie dwa sklejone omówienia; jeden akapit „Gdzie analogia pęka” i jeden komentarz małżeński, z zachowaniem wszystkich zasad z 3.1, które dotyczą któregokolwiek z kroków.
- **Teksty pomocnicze:** co najmniej jeden ojciec Kościoła i jeden papież przedsoborowy (2.5); teksty z konspektów bazowych, których nie przeniesiono, wskazać jednym zdaniem („w konspekcie kroku N wersji bazowej”).
- **Treść** bierze się z konspektów bazowych — nie dodaje się nowych cytatów bez weryfikacji (4.4). Znaczniki 🔍 przenosi się razem z akapitem, którego dotyczą; wykaz miejsc do sprawdzenia tworzy się od nowa.
- Po każdej zmianie konspektu bazowego sprawdź, czy tej samej zmiany nie wymaga konspekt łączony (i odwrotnie).

### 7.3. Zasady szczególne
- **8+9:** konspekt MUSI zawierać uwagę dla pary animatorskiej, że połączenie kroków nie oznacza wykonania listy i zadośćuczynienia w jednym miesiącu — najpierw lista i rozeznanie, potem działanie, nawet przez wiele miesięcy.
- **10+11:** Ogrójec (Mt 26,36-46) jako perykopa wiodąca świadomie wraca do tajemnicy z kroku 1 — oznaczone znacznikiem **adaptacja** do decyzji pary animatorskiej.
- Wersje do druku spotkań łączonych generuje ten sam skrypt ([instrukcja publikacji](../instrukcja-publikacji-google-drive.md)); stopka: „Kroki N–M z 12 (spotkanie łączone)”.
