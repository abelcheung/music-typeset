clarinetOne = \relative c'' {
  \partcombineApart
  r4 r8_\p g e4 r8 f |
  d4 r8 e c bes gis r |
  a4 r r2 |
  R1*2 |
}

clarinetTwo = \relative c' {
  r4 r8 g8 e4 r8 f |
  d'4 r8 e, c'[ f,\rest gis] r |  % default rest overlaps with beam
  a4 r r2 |
  R1*2 |
}

clarinet = {
  \clef treble
  \key a \minor
  \time 4/4

  \partcombine \clarinetOne \clarinetTwo

} % end
