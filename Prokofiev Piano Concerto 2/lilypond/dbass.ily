dbass = \relative c {
  \clef bass
  \key g \minor
  \time 4/4

  r4^\consordMarkup r8 f\p^"pizz." d4 r8 ees |
  c4 r8 d bes aes fis c |
  g'4 r r2 |
  R1*3 |
  ees'2^"arco"\pp a |
  cis,\pp ( d4 ) r |
  
  \barNumberCheck 9
  R1*2 |
  \crescWithText "un poco cresc."
  d2-\tweak X-offset -4 \pp \<
  gis |
  <<
    { c,2..\mp r8 }
    \scaleDurations 2/3 { \skip 4. \skip 4 <>\> \skip 2 <>\! }
  >> |
  
  \barNumberCheck 13
  R1*10 |
}
