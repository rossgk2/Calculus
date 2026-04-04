use Config;

if ($Config{osname} eq 'MSWin32') {
    # Windows uses semicolon as path separator
    $ENV{'TEXINPUTS'} = './tex//;' . ($ENV{'TEXINPUTS'} || '') . ';;';
} else {
    # Unix/Linux/Mac use colon as path separator
    $ENV{'TEXINPUTS'} = './tex//:' . ($ENV{'TEXINPUTS'} || '') . '::';
}