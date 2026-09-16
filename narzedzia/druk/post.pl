#!/usr/bin/perl
# Post-processing HTML z pandoc na potrzeby wydruku.
use strict;
use warnings;
use utf8;
use open qw(:std :encoding(UTF-8));

local $/;
my $html = <STDIN>;

# Ramki "DO SPRAWDZENIA"
$html =~ s{<blockquote>(\s*<p>🔍)}{<blockquote class="check">$1}g;

# Tekst kroku pod tytułem (pierwszy blockquote zaczynający się od "Krok N.")
$html =~ s{<blockquote>(\s*<p><strong>Krok \d+\.</strong>)}{<blockquote class="krok">$1};

# Znaczniki [DO UZUPEŁNIENIA ...], [DO WERYFIKACJI ...], [LINK DO UZUPEŁNIENIA]
$html =~ s{(\[(?:DO UZUPEŁNIENIA|DO WERYFIKACJI|LINK DO UZUPEŁNIENIA)[^\]]*\])}{<span class="todo">$1</span>}g;

# Widoczne adresy zewnętrznych linków (na papierze link nie jest klikalny)
$html =~ s{<a href="(https?://[^"]+)"([^>]*)>(.*?)</a>}{
  my ($href, $attrs, $text) = ($1, $2, $3);
  my $plain = $text; $plain =~ s/<[^>]+>//g;
  my $shown = $href; $shown =~ s{^https?://(www\.)?}{}; $shown =~ s{/$}{};
  $shown =~ s/&amp;/&/g;
  { use Encode (); my $b = Encode::encode('UTF-8', $shown); $b =~ s/%([0-9A-Fa-f]{2})/chr(hex($1))/eg; $shown = Encode::decode('UTF-8', $b); }
  my $out = qq{<a href="$href"$attrs>$text</a>};
  (index(lc($href), lc($plain)) >= 0) ? $out : qq{$out <span class="url">($shown)</span>};
}ge;

print $html;
