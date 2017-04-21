package Lingua::JA::PlaceName::WarnDisasters;
use 5.008001;
use strict;
use warnings;
use utf8;
use List::Util 'uniq';

our $VERSION = "0.01";
our %RULE = (
    flood_fan          => qr/(アオギ|シバ|イノ|イノウ|ソネ|ワダ|ハヤシ)/,
    flood_lowland      => qr/(タニ|ダニ|サコ|ソウタ|ナベ|ガヤ|クボ|フクロ|ブクロ|サカシタ)/,
    flood_plain        => qr/(ヒロ|アサヒ|キライ|エダ|イマイ|ナガレダ|カマ|ヒジ|フカ|フケ|ミスキ|ガタ|カタ)/,
    flood_river_lake   => qr/(アマ|リュウ|マタ|ジャ|カワ|エ|ガワ|セ|ゼ|サワ|ザワ|ケイ|イケ|ヌマ)/,
    flood_structure    => qr/(ツツミ|ヅツミ|ハシ|バシ|フネ|フナ|ツ|ミナト|イ)/,
    tsunami            => qr/(ヒロ|カガ|カチ|スカ|フクラ|アマベ|サキ|ハマ|シマ|ス|ジマ|ズ|キシ|ギシ|フチ|ブチ|イリ|ウラ)/,
    landslide          => qr/(ホケ|フキ|アナ|クラ|カキ|ウメ|ナベ|フタ|クレ|タイ|アソ|ラク)/,
    ground             => qr/(クサ|アシ|スナ|サ|ドロ|デイ|ガン|イツク|イカ|ガタ|カタ)/,
    botanical_factor   => qr/(ハギ|ハス|タケ|カマ|ガマ|オギ|アシ|スゲ|スガ|ロ|ヨシ|イナ|イネ)/,
    animal_factor      => qr/(ツル|ヅル|コウ|ヒシクイ|カモ|ガモ|サギ|ウ|クゲ|カリ|トキ|ニオ|ハン|バン|カイ|ガイ|カメ|キ|ガメ|イ|サカナ|ウオ|ギョ)/,
    hatching           => qr/(ヤ|クボ|クテ|ウメ|ス|スカ|フチ|ブチ|イリ|ツユ)/,
    state              => qr/(シタ|シモ|ジモ|シオ|ジオ|ワタ|ト|アサ|フカ|ブカ)/,
);

sub detect {
    my ($class, $kana) = @_;
    my @matched;
    for my $name (keys %RULE) {
        push @matched, $name if $kana =~ $RULE{$name};
    }
    return uniq sort @matched;
}

1;
__END__

=encoding utf-8

=head1 NAME

Lingua::JA::PlaceName::WarnDisasters - It's new $module

=head1 SYNOPSIS

    use Lingua::JA::PlaceName::WarnDisasters;

=head1 DESCRIPTION

Lingua::JA::PlaceName::WarnDisasters is ...

=head1 LICENSE

Copyright (C) ytnobody.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 AUTHOR

ytnobody E<lt>ytnobody@gmail.comE<gt>

=cut

