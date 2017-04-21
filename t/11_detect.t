use strict;
use warnings;
use utf8;
use Test::More;
use Lingua::JA::PlaceName::WarnDisasters;
binmode STDERR, 'utf8';
binmode STDOUT, 'utf8';

my $c = 'Lingua::JA::PlaceName::WarnDisasters';

ok 1;

my @patterns = qw/
    セタガヤ 
    オオイ 
    リュウドチョウ 
    オオモリ 
    カマクラ 
    ジャラクジアシダニ 
    フクシマ
    オナガワ
    イシノマキ
    ロッポンギ
/;

for my $item (@patterns) {
    diag $item;
    diag explain([$c->detect($item)]);
}

done_testing;