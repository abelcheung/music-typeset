violinI-One = \relative c' {
  
  \tempo "Andantino"
  
  \partcombineUnisono
  r4^\consordMarkup r8 f\p^"pizz." d4 r8 ees |
  c4 r r2 |
  g4 r r2 |
  R1*2 |
  
  \timeSigTwelveEight

  \scaleDurations 2/3 {
    
    \barNumberCheck 6
    r4.
    \partcombineChords
    g'\downbow
      -\tweak self-alignment-X 1.5 ^"arco"
      -\tweak X-offset -4 \pp
    d'~ ^( d4 ees8 ) |
    e4 ^( f8 g4 aes8 ) bes4. ^( b4 c8 ) |
    cis2.\pp ^( c4. ) r
  } |
    
  \mark \default  % FIXME: mark won't show if bar is empty
  
  \barNumberCheck 9
  R1|
  
  \scaleDurations 2/3 {
    r4.
    \partcombineApart
    \midiDynamics fis,,\downbow\pp
    cis'~ ( cis4 d8 ) |
    dis4 ( e8 fis4 g8 ) a4. ( ais4 b8 ) |
    c4 ( b,8 ) c4 ( b,8 )
    \tempo "pochis. rit."
    c4.~ c8
    \partcombineAutomatic
    r r |    
  }
  
  \barNumberCheck 13
  \timeSigRestore
  \mark \default
  \tempo "caloroso con gran espressione"
  R1*2 \mark \default |
  R1*3 \mark \default |
}

violinI-Two = \relative c' {
  r4 r8 f d4 r8 ees |
  c4 r r2 |
  g4 r r2 |
  R1*2 |
  
  \timeSigTwelveEight
  
  \scaleDurations #'(2 . 3) {
    
    \barNumberCheck 6
    % FIXME how to set midi volume here?
    r4. g d'~ d4 ees8 |
    e4 f8 g4 aes8 bes4. b4 c8 |
    cis2. c4. r |
    
    \barNumberCheck 9
    R1*3/2 |
    r4. fis,\ddownbow -\tweak X-offset -4 \pp
    cis~ ( cis4 d8 ) |
    \crescWithText "un poco cresc."
    dis4\< ( e8 fis4 g8 ) a4. ( ais4 b8 ) |
    c4--\mp b,8-- c4 ( b8\> ) c4.~ c8\! r r |
  }
  
  \barNumberCheck 13
  \timeSigRestore
  R1*10 |
}

violinI = \relative c' {
  \clef treble
  \key g \minor
  \time 4/4

  \partcombine \violinI-One \violinI-Two
}
