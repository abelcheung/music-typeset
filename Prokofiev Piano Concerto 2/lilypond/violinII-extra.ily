violinII-extra = \relative c' {
  \clef treble
  \key g \minor
  \time 4/4

  R1*5 |
  
  \timeSigTwelveEight

  \barNumberCheck 6
  \scaleDurations 2/3 {
    r4. 
    % think about partcombine later
    <<
      \relative c'' {
        g4\downbow
          -\tweak self-alignment-X #1.5 ^"arco"
          -\tweak X-offset #-4 \pp
        ( gis8 ) a4 ( aes8 g4 bes8 ) |
        aes4 ( bes8 c4 d8 ) ees4 ( f8 fis4 g8 ) |
        gis4\pp ( fis8 g4 f8 ) fis4.
      }
      \\
      \relative c'' {
        \midiDynamics g4\ddownbow\pp ( fis8 ) f4.~ ( f4 fis8 ) |
        g4. ( aes4 bes8 ) c4 ( des8 d4 ees8 ) |
        e4 ( d8 ) ees2.
      }
    >> r4. |
  }
  
  \barNumberCheck 9
  R1 |
  
  \scaleDurations 2/3 {
    r4.
    <<
      \relative c' {
        \midiDynamics fis4\downbow\pp ( g8 ) gis4 ( g8 fis4 a8 ) |
        \crescWithText "un poco cresc." % text have to align with G natural
        g4\< ( a8 b4 cis8 ) d4 ( e8 eis4 fis8 ) |
        \midiDynamics g4.--\mp g,-- aes,~ aes8
      }
      \\
      \relative c' {
        fis4\ddownbow -\tweak X-offset -4 \pp ( f8 )
        e4.~ ( e4 eis8 )  %  Tie missing in original score
        fis4. ( g4 a8 ) b4 ( c8 cis4 d8 ) |
        ees4.--\mp << { ees,-- aes,~ aes8 } { \skip 4 <>\> \skip 2 <>\! } >>
      }
    >> r8 r |
  }
  
  \barNumberCheck 13
  \timeSigRestore
}
