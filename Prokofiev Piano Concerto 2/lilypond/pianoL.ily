pianoLpatA = \relative c {
  <g d'>8 a' <g d'> <c g'> <a d> g
}

pianoL = \relative c {
  \clef bass
  \key g \minor
  \time 4/4

  R1*2 |
  
  \timeSigTwelveEight
  
  \scaleDurations 2/3 {
    
    \barNumberCheck 3
    \midiDynamics <g d'>8\p a' <g d'> <c g'> <a d> g
    \repeat unfold 6 { \pianoLpatA }
    <f bes,>8 ces' <f bes,> \clef treble <ees ces'> <f aes,> <ges bes,> |
    
    \barNumberCheck 7
    \clef bass <g, c, ees,>\arpeggio c <d g,> <c g'> <g d'> f
    aes, <ees'' g,> <f bes,> \clef treble <fis b,> <d b'> <ees c'> |
    \midiDynamics <e cis>\mp \clef bass <gis,, cis,> e'
    <<
      \relative c {
        s4
        f8-\tweak self-alignment-X 0.6
          ^\markup{\small \italic "m.d."} \noBeam (
        <fis bes c ees> ) s4
      } \\
      \relative c' { b8[ e, cis,] d[ bes'' <fis ees'>] }
    >>
    <c' fis>8 <aes ees'> fis |
    
    \barNumberCheck 9
    \repeat unfold 2 { \pianoLpatA } |
    <cis= fis,> gis' <cis fis,> <b fis'> <gis cis> fis
    <e a,> bes' <e a,> <d bes'> <e gis,> <f a,> |
    <fis, b, d,>\arpeggio b <cis fis,> <b fis'> <cis fis,> e,
    gis, <fis' d'> <a e'>
    \temporary \override Beam.auto-knee-gap = 1
    <bes f'> <f des'> gis,, |
    \revert Beam.auto-knee-gap
    \midiDynamics <c g'>\f d' <g c,> <f c'> <d g> c 
    <aes c,> d <c aes'> <d c'> c c, |
    
    \barNumberCheck 13
    \midiDynamics g\mf g' d' g d g, c, c' ges' bes ges c, |
    g, g' d' g d g, c, c' aes' c aes c, |
    F,, des'' aes' des aes des, Es,, bes'' g' des' g, bes, |
    \midiDynamics D,,\f fis' b d fis b d fis g fis d d, |
    
    \barNumberCheck 17
    G,, a' c f a bes b c a d c f, |
    \midiDynamics cis,\mp b' f' b f b,
    g,   \midiDynamics b''\mf->\> ( ais c b f\! ) |
    cis, \midiDynamics d' \mf->\> ( cis e d b\! )
    g,   \midiDynamics b''\mf->\> ( ais c b f\! ) |
    \midiDynamics cis,\p ( b' f' b f b,~ b f' b f' b, f ) |
    
    \barNumberCheck 21
    des, ( bes' f' ges f fes ees bes ) des, ( C B Bes |
    A ) dis' ( fis c' aes f des' ces aes d bes g ) |
    
  }
  
}
