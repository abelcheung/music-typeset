pianoU = \relative c''' {
  \clef treble
  \key g \minor
  \time 4/4

  R1*3 |
  r2 r4
  \midiDynamics
  G8.-\tweak self-alignment-X #1.3
     ^\markup{\italic "narrante"}\p
  D16 |
  
  \barNumberCheck 5
  A'4 G8. C,16 D4 Bes8. C16 |
  G2 r4 F'8. C16 |
  G'4
  \octaveUp C8. D16 Es4 D |
  \midiDynamics Cis8.\mp Gis16
  \ottava #0
  Cis,4 r Gis'8. Es16 |
  
  \barNumberCheck 9
  A4 G8. C,16 D4 Bes8. B16 |
  <fis b cis fis>2 r4 E'8. B16 |
  Fis'4
  \octaveUp B8. Cis16 D4 Cis |
  \midiDynamics C8.\f G16 \ottava #0 C,8. G16 C,4 fis, |
  
  \barNumberCheck 13
  <<
    \relative c' {
      r4 \midiDynamics <bes d g>\mf r <ees ges aes c> |
      r <d g> r <f aes bes d> |
      r <aes ces des f> r <bes des ees g> |
      r \midiDynamics <b' d>\f r <fis b> |
      r <f a> r <c f>
    }
    \\
    \relative c' {
      \midiDynamics g4\mf a bes c |
      a bes c d |
      g f aes g |
      \midiDynamics d'\f-> ( fis8 d cis b d b ) |
      a8. ( b16 c8 a g f a f )
    }
  >> |
  
  \barNumberCheck 18
  \midiDynamics <e'=' d b f>4\mp ( g8 e <f ees b aes>4 aes8 f |
  <e d b f>4 g8 e <f ees b aes>4 aes8 f ) |
  \midiDynamics <e d b f>4\p ^( f <g d b> aes ) |
  << { g4 ( aes bes c ) } \\ \relative c' { <f bes,>2 <g c,> } >> |
  <b a fis dis>4 <c aes f d> <des ces aes f> <d bes g e> |
  
  \barNumberCheck 23
}
