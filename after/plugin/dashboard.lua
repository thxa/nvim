local db = require('dashboard')
-- db.defualt_executive = 'telescope'

db.default_banner = {
    '',
    '',
        '@X.              .8:                                                                                                                          ',
  '.  .tt@8 :   .  . .  . .X88: .  .  . .  . .  . .  . .  . .  . .  . .  . .  . .  . .  . .  . .  . .  . .  . .  . .  . .  . .  . .  . .  . .  . .  .  ',
   '.;;X8@@8 %.        .   X%888:    .         .         .         .         .         .         .         .         .         .         .         .  .',
   'X@8888888S:. .  .     :;X888%:.     . .  .    . .  .    . .  .    . .  .    . .  .    . .  .    . .  .    . .  .:%%%%: .      . .  .    . .  .     ',
 ':88888@88888 S   .   .  .@88t88X8:  .         .         .         .         .         .         .         .       t.:::S   .  .         .         .  ',
'8.%88888@8@888@S     .  ..X8%@88t@88.    . . .    . .  .    . .  .    . .  .    . .  .    . .  .    . .  .    . .  %    @    .    . .  .    . .  .   .',
'8@@ 88888X8888888..      .SXS888888 . .         .     .   .     .   .     .   .     .   .     . ;:;:.      .  .::;..:::.. ..:.. . .t%t.   . .:%%;. .  ',
'888 .@@88888@8888@  .  . .X@88@888%S.   .  . :S:   t8%%8%    .    ..X@t%8t   .   .  .S@%%@X..  %8   .. . .   %8   X888888. ; @8S.t8   88  .@8  . @::  ',
'8.:@8%888888888888@.  .  .S8S888888 .  .     8 ;t;@X%;%8 8@.   ..8S8S:. :X8t;    .8XX8St%X8SX8. ..:ttS      .ttS%St;tXXXS .8:S@@S;SX@XXt:88:%SXX@XX 8.',
'8@8 t8.@X88888@8888%t   ..@8%888888 .    .   8. t@:     .;: .  %8 8. .    tt@X .t8 :;     .%. 8S.XSX@ %  . .%;XS;@ :SSSS; .8SSX% ;88S8S@S%S %88;SSSSt@',
'88888888X:8888888888:: . . 888.t88;% .    .  8.8:  .    .t S; .%.8      .  :@X .t;.   .  .   .t8.X:S8X:.   ; tXX.. ;tXSSS .8tXS      S SSS ;    @.XS@S',
'8.888 :8.:8@888@88888;t  :S8@X88X88 .  .     8:@  .  .    8 S X 8%t%%%%t%t%t; :S  . .       .S .8 .SXS.@  .::XS :  :SSX;t  8SSS@:    :XtXX@.    % t@X@',
'88888:8. ..@%88888888 X@ :8S@88X:88 :   .  . 8;@      .  .8.@ St tSSSSSSSSSSS;;S;;    . .     @t. :SS@SS; 8 %S.X . ;%X%S% .8SSS    . :XSSS8:  . ; tXX8',
'88888t8:88  : 8888888@@88% 88tX88@8S.:.   .  8t8 .  .   . 8.X.Xt..       .     %St .      .  .@S:  %SSX%;t ;Xt%    :SSXSt  8%8S@;    :XtX@8.    ; tSX@',
'8 t8t8 8.t   ::8888888@888@888.8 8% .  .    .8;@   .     .8 X X;8. .  .    . . 8t8.  .  .    :S%@ . 8;XS ::St8 . . ;XXS%t .8S8@X: .  :SSSX8..  .; tSX8',
'8@888.8888   .:t8888888888888%S8.SX ;    .   8t@ .    .   8.X..S:%     .       :8.8       . .X;@;   :X%S:.%@.8     :XS@St  8XXS .   .:@S@XX.    ; tSX8',
'88888 ;8      : 88888888888S%88:8;8 :.     . 8t8    .   ..8.X  :; tX.    .:8.8. ;S ;t .    %  8t  .  %S%XSX;%  .  .;SX%SS..8S8SX:    :SXSX8.  . ; tXX8',
'8 ;8;8@8X@    ...88888%%8888X :X 88X  . .    8t@  .   .  .8:@ .  8  8.XXtt  XS    X   888@t  %. .     @%@X%@.    . ;S@X%t  8SXXS:. . :XSXtX.    ; tXX8',
'88888888;.     ...88888888X.8S.8@88 .  .   . %.@.        .S ;     .8:;%%;:8%.  .   .8::;t::8;  .   .  :@@XS% .     @:;;:% .8::t@.    .Xt;;8  . ..@:;t8',
'8.S8.8.8..     ...:8S888%%8Xt8% 888 ;    .         . .       . .   .             . . .           .   .     .   .  .               .                .  ',
't.8 8;8:8;      .   t tX8888S88S88 %  .     .  . .     .  .       .        .  .        . .  . .    .   .        .   .   .     . .   . .  . .  .  .    ',
 '.@88888:%         ..  88888.%%8@8:     .          .    .   .  .    . . .    .  .  .  .         .    .   .  . .       .   . .     .          .      . ',
 '..tX t@:8:          .. 88S88t8;;... .    .  .  .    .    .      .        .              .  .     .              . .    .      .     . .  .    .  .   ',
   '.: ;888t       .    :.8.S8:.     .  .    .     .   .     . .    .  .     .  . . . .    .   . .   .  .  .  .       .    .  .   .  .    .  .    .   .',
  '.      8:         .   .888S   .  .     .      .   .   .       .       . .   .        .    .     .     .      . .     .       .       .      .    .  '
}


db.custom_header = nil
db.custom_footer = nil
db.custom_center = {
  { icon = '🗎', desc = '  Find file      ', action = 'Telescope find_files' },
  { icon = '🔎', desc = '  Search Text    ', action = 'Telescope live_grep' },
  { icon = '🗃', desc = '  History        ', action = 'Telescope oldfiles' },
  { icon = '⚙', desc = '  Config         ', action = 'edit ~/.config/nvim/init.lua' },
}
db.preview_file_Path = nil
db.preview_file_height = 0
db.preview_file_width = 0
db.preview_command = ''
db.image_width_pixel = 0
db.image_height_pixel = 0
db.hide_statusline = true
db.hide_tabline = true
db.hide_winbar = true
db.session_directory = ''
db.session_auto_save_on_exit = false
db.session_verbose = true
db.header_pad = 1
db.center_pad = 1
db.footer_pad = 1
db.disable_at_vimenter = false
