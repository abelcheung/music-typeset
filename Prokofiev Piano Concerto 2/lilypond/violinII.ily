violinII = \relative c' {
  \clef treble
  \key g \minor
  \time 4/4

  r4^\consordMarkup r8 f\p^"pizz." d4 r8 ees |
  c4 r8 d bes4 r |
  g4 r r2 |
  \set Staff.shortInstrumentName = #""
  \set StaffGroup.shortInstrumentName =
    \markup{ \center-column{ "Vl. II" \smaller "div. a 3" } }
  R1*2 |
  
  \timeSigTwelveEight

  \scaleDurations 2/3 {
    
    \barNumberCheck 6
    r4.
    g'4\downbow
       -\tweak self-alignment-X #1.5 ^"arco"
       -\tweak X-offset #-4 \pp
    ( gis8 ) a4 ( bes8 b4 c8 ) |
    c4 ( d8 ees4 f8 g4. ) b8 ( a bes ) |
    b4.\pp~ ( b4 a8 ) bes4. r |
    
    \barNumberCheck 9
    R1*3/2 |
    r4. fis,4\downbow\pp ( g8 ) gis4 ( a8 ais4 b8 ) |
    \crescWithText "un poco cresc."
    b4\< ( cis8 dis4 e8 fis4. ) ais8 ( gis a ) |
    bes4.--\mp << { bes,-- aes,~ aes8 } { \skip 4 <>\> \skip 2 <>\! } >> r r |
  }
  
  \barNumberCheck 13
  \timeSigRestore
  \unset StaffGroup.shortInstrumentName
  \set Staff.shortInstrumentName = "Vl. II"
  R1*10 |
}
