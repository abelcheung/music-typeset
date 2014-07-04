rh = \relative c {
  <f aes des>8-. r r4 |
  <f aes des>8-. r r4 |
  <f aes des>8-. r <f aes des>-. r |
  <f aes des>8-. r f-. aes-. |
  <f aes des>8-.[ aes-. \clef treble des-. f-.] |
  aes2-- |
  <aes f' aes>4-> <aes ees' ges>8-. <aes des f>-. |
  <ges c ees>4-> <ges c f>8-. <ges c ees>-. |
  <f aes des>4-> <aes c ees>8-. <aes des f>-. |
  %
  % bar 10
  %
  <<
    {aes8.( bes16 aes8) b\rest} \\
    {ees,8 s4.} \\
    {ges4. s8}
  >> |
  <aes f' aes>4-> <aes ees' ges>8-. <aes des f>-. |
  <<
    {
      \hideNotes
      \once \override NoteColumn #'force-hshift = #1.8
      \once \override Arpeggio #'padding = #0
      \arpeggioBracket <aes bes>4 \arpeggio s4
      \unHideNotes
    } \\
    { <aes bes d f bes>4-> <aes bes d f aes>8-. <aes bes d f>-. }
  >> |
  <<
    { ges'8-. aes16( ges f8)-. ges16( f } \\
    { <bes, ees>8 r <aes d> r }
  >> |
  <<
    { ees'8)-. <f, f'>16[ <ges ges'>] <aes aes'> <bes bes'> <c c'> <des des'> } \\
    { <ges, bes>8 s4. }
  >> |
  <ees' c' ees>8-. <ees c' ees>16 <ees c' ees> <des bes' des>8-. <ees c' ees>-. |
  <f des' f>8-. <ges ees' ges>-. <aes f' aes>4-- |
  <ees c' ees>8-. <f des' f>-. <ges ees' ges>4-- |
  <f aes des f>8-. <ees aes c ees>-. <des f aes des>4-- |
  <ees c' ees>8-. <ees c' ees>16 <ees c' ees> <des bes' des>8-. <ees c' ees>-. |
  %
  % bar 20
  %
  \ottava #1
  \set Staff.ottavation = #"8"
  <f des' f>8-. <ges ees' ges>-. <aes f' aes>4-- |
  <g bes ees g>8-.[ <aes ees' aes>-. <bes ees bes'>8.( <c c'>16] |
  <aes c ees aes>8-.)\noBeam
  \ottava #0
  aes,16 aes aes8-. aes-. |
  <f aes des>8-. aes,16-. aes-. g8-. aes-. |
  <f' aes des>8-. aes,16-. aes-. g8-. aes-. |
  <f' aes des>8-. aes,-. <f' aes des>-. aes,-. |
  <f' aes des>8-.[ aes,-. f-. aes-.] |
  <f' aes des>8-.[ aes-. des-. f-.] |
  <aes, aes'>2 |
  <aes f' aes>4-> <aes ees' ges>8-. <aes des f>-. |
  %
  % bar 30
  %
  <ges c ees>4-> <ges c f>8-. <ges c ees>-. |
  <f aes des>4-> <aes c ees>8-. <aes des f>-. |
  <<
    {aes8.( bes16 aes8) b\rest} \\
    {ees,8 s4.} \\
    {ges4. s8}
  >> |
  <aes f' aes>4-> <aes ees' ges>8-. <aes des f>-. |
  <<
    {
      \hideNotes
      \once \override NoteColumn #'force-hshift = #1.8
      \once \override Arpeggio #'padding = #0
      \arpeggioBracket <aes bes>4 \arpeggio s4
      \unHideNotes
    } \\
    {<aes bes d f bes>4-> <aes bes d f aes>8-. <aes bes d f>-.}
  >> |
  <<
    {ges'8-. aes16( ges f8)-. ges16( f} \\
    {<bes, ees>8 r <aes d> r}
  >> |
  <<
    {ees'8)-. <f, f'>16[ <ges ges'>] <aes aes'> <bes bes'> <c c'> <des des'>} \\
    {<ges, bes>8 s4.}
  >> |
  <ees' c' ees>8-. <ees c' ees>16 <ees c' ees> <des bes' des>8-. <ees c' ees>-. |
  <f des' f>8-. <ges ees' ges>-. <aes f' aes>4-- |
  <ees c' ees>8-. <f des' f>-. <ges ees' ges>4-- |
  %
  % bar 40
  %
  <f aes des f>8-. <ees aes c ees>-. <des f aes des>4-- |
  <ees c' ees>8-. <ees c' ees>16 <ees c' ees> <des bes' des>8-. <ees c' ees>-. |
  \ottava #1
  \set Staff.ottavation = #"8"
  <f des' f>8-. <ges ees' ges>-. <aes f' aes>4-- |
  <g bes ees g>8-.[ <aes ees' aes>-. <bes ees bes'>8.( <c c'>16] |
  <aes c ees aes>8-.)\noBeam
  \ottava #0
  <ees, ees'>16 <ees ees'> <ees ees'>8 <ees ees'> |
  <ges ges'>8-. <ees ees'>16-. <ees ees'>-. <d d'>8( <ees ees'>) |
  <ges' ges'>8-. <ees ees'>16-. <ees ees'>-. <d d'>8( <ees ees'>) |
  <ges, ges'>8( <ees ees'>) <ges' ges'>8( <ees es'>) |
  <ges, ges'>8( <ees ees'>) <ges' ges'>8( <ees es'>) |
  <ces ges' ces>8-. <ces ges' ces>16-. <ces ges' ces>-. <bes ges' bes>8-. <ces ges' ces>-. |
  %
  % bar 50
  %
  \acciaccatura ees'8 <des, ges des'>8-. <ces ges' ces>16-. <ces ges' ces>-. <bes ges' bes>8-. <ces ges' ces>-. |
  \repeat unfold 4 { \acciaccatura ees'8 <des, ges des'>8-. <ces ges' ces>-. } |
  <ees g ees'>4-> <d d'>8-. <des des'>-. |
  <ces ees ces'>4-> <bes bes'>8-. <aes aes'>-. |
  <<
    {bes8_( fes' <ees aes>-.) <des bes'>-.} \\
    {bes4 aes8 g} \\
    {
      \once \override NoteColumn #'force-hshift = #-1
      <des' g>4-> s}
  >> |
  \acciaccatura bes'8 <ces, aes'>16( <ees g> <ces aes'> <ces ees bes'> <ees ces'>8-.) <c ees c'>-. |
  <des f des'>4-> <c c'>8-. <ces ces'>-. |
  <bes des bes'>4-> <aes aes'>8-. <ges ges'>-. |
  <<
    % the slur is very tricky
    {
      f'4->(
      \once \override NoteColumn #'force-hshift = #-0.8
      \hideNotes bes,4)
    } \\
    {aes4 <bes des>8 <aes ces>} \\
    {
      \once \override NoteColumn #'force-hshift = #1.3
      \once \override Stem #'direction = #DOWN
      ces8 ~
      \once \override Stem #'direction = #DOWN
      <ces ees>
      \once \override NoteColumn #'force-hshift = #-0.5
      ges'-. aes-.
    }
  >> |
  %
  % bar 60
  %
  \acciaccatura aes8 <bes, ges'>16( <des f> <bes ges'> <bes des aes'> <des bes'>8-.)\noBeam <bes bes'>16 <bes bes'> |
  <bes bes'>4-> <c bes' c>8-. <d bes' d>-. |
  \ottava #1
  \set Staff.ottavation = #"8"
  <ees bes' ees>8-.[ <f bes f'>-. <ges bes ges'>-. <g bes g'>-.] |
  <aes ees' aes>4 \acciaccatura <c c'>8 <bes ees bes'>16 <aes aes'> <bes bes'> <c c'> |
  <aes c ees aes>8\noBeam
  \ottava #0
  aes,16 aes aes8-. aes-. |
  <aes des f aes>4-> <ges aes ees' ges>8-. <f aes des f>-. |
  <ees ges c ees>4-> <f aes c f>8-. <ees ges c ees>-. |
  <des f aes des>4-> <ees aes c ees>8-. <f aes des f>-. |
  <<
    {aes8. bes16 aes8 b\rest} \\
    {c,4 s} \\
    {
      \once \override NoteColumn #'force-hshift = #1.6
      \stemDown \tieDown <ees ges>4 ~ <ees ges>8 \tieNeutral \stemNeutral s}
  >> |
  <aes des f aes>4-> <ges aes ees' ges>8-. <f aes des f>-. |
  %
  % bar 70
  %
  <<
    {<aes bes d f bes>4-> <aes bes d f aes>8-. <aes bes d f>-.} \\
    {
      \hideNotes
      \once \override NoteColumn #'force-hshift = #1.8
      \once \override Arpeggio #'padding = #0
      \arpeggioBracket <aes bes>4 \arpeggio s4
      \unHideNotes
    }
  >> |
  <ges bes ees ges>8-. <aes aes'>16( <ges ges'> <f aes d f>8-.) <ges ges'>16( <f f'> |
  <ees ges bes ees>8-.) \noBeam <f f'>16 <ges ges'> <aes aes'> <bes bes'> <c c'> <des des'> |
  <ees aes c ees>8-. <ees aes c ees>16 <ees aes c ees> <des aes' bes des>8-. <ees aes c ees>-. |
  <f aes des f>8-. <ges ees' ges>-. <aes f' aes>4-> |
  <ees aes c ees>8-. <f des' f>-. <ges ees' ges>4-> |
  <f aes des f>8-. <ees aes c ees>-. <des f aes des>4-> |
  <ees aes c ees>8-. <ees aes c ees>16 <ees aes c ees> <des aes' bes des>8-. <ees aes c ees>-. |
  \ottava #1
  \set Staff.ottavation = #"8"
  <f aes des f>8-. <ges ees' ges>-. <aes f' aes>4-> |
  \ottava #0
  <c, ees c'>8-. <des f des'>-. <ees ges ees'>8.( <f aes f'>16 |
  %
  % bar 80
  %
  <des f des'>8-.)\noBeam <d, f aes bes d>16 <d f aes bes d> <d f aes bes d>8-. <d f aes bes d>-. |
  <ees ges bes ees>8-.\noBeam <ees, ees'>16-. <ees ees'> <d d'>8( <ees ees'>) |
  <ges' ges'>8-. <ees ees'>16-. <ees ees'>-. <d d'>8( <ees ees'>) |
  <ges ges'>8( <ees ees'>) <ges' ges'>8( <ees es'>) |
  <ges, ges'>8( <ees ees'>) <ges' ges'>8( <ees es'>) |
  <ces ges' ces>8-. <ces ges' ces>16-. <ces ges' ces>-. <bes ges' bes>8-. <ces ges' ces>-. |
  \acciaccatura ees'8 <des, ges des'>8-. <ces ges' ces>16-. <ces ges' ces>-. <bes ges' bes>8-. <ces ges' ces>-. |
  \acciaccatura ees'8 <des, ges des'>8-. <ces ges' ces>-. \acciaccatura ees'8 <des, ges des'>-. <ces ges' ces>-. |
  \acciaccatura ees'8 <des, ges des'>8-. <ces ges' ces>-. \acciaccatura ees'8 <des, ges des'>-. <ces ges' ces>-. |
  <ees g ees'>4-> <d d'>8-. <des des'>-. |
  %
  % bar 90
  %
  <ces ees ces'>4-> <bes bes'>8-. <aes aes'>-. |
  <g bes fes' g>-. <g bes des g>-. <aes ces ees aes>-. <bes ees bes'>-. |
  <aes ees' aes>16( <g g'> <aes aes'> <bes bes'> <ces ees ces'>8-.) <c ees c'>-. |
  <des des'>4-> <c c'>8-. <ces ces'>-. |
  <bes des bes'>4-> <aes des aes'>8-. <ges bes ges'>-. |
  <f aes ees' f>8-. <f aes ces f>-. <ges bes des ges>-. <aes des aes'>-. |
  <ges des' ges>16( <f f'> <ges ges'> <aes aes'> <bes des bes'>8-.)\noBeam <bes bes'>16 <bes bes'> |
  <bes bes'>4-> <c bes' c>8-. <d bes' d>-. |
  \ottava #1
  \set Staff.ottavation = #"8"
  <ees bes' ees>8-.[ <f bes f'>-. <ges bes ges'>-. <g bes g'>-.] |
  <aes ees' aes>8. <c c'>16 <bes ees g bes> <aes aes'> <bes bes'> <c c'> |
  %
  % bar 100
  %
  <aes c ees aes>8-.
  \ottava #0
  <aes, aes'>16 <aes aes'> <aes aes'>8-. <aes aes'>-. |
  <aes des f aes>4-> <ges aes ees' ges>8-. <f aes des f>-. |
  <ees aes c ees>4-> <f aes des f>8-. <ees aes c ees>-. |
  <f aes des>4-> <ees aes c ees>8-. <f aes des f>8-. |
  <c ees ges aes>8.->( <c ees ges bes>16 <c ees ges aes>8) r |
  <aes' des f aes>4-> <ges aes ees' ges>8-. <f aes des f>-. |
  <aes d f bes>4-> <aes d f aes>8-. <f bes d f>-. |
  <ges bes ees ges>8-. <aes aes'>16( <ges ges'> <f bes d f>8-.) <ges ges'>16 <f f'> |
  <ees ges bes ees>8-. <f f'>16-. <ges ges'>-. <aes aes'>-. <bes bes'>-. <c c'>-. <des des'>-. |
  \ottava #1
  \set Staff.ottavation = #"8"
  <ees c' ees>8 <ees c' ees>16-. <ees c' ees>-. <des bes' des>8-. <ees c' ees>-. |
  %
  % bar 110
  %
  <f des' f>8-. <ges ees' ges>-. <aes f' aes>4-> |
  <ees c' ees>8-. <f des' f>-. <ges ees' ges>4-> |
  <f aes des f>8-. <ees aes c ees>-. <des f aes des>4-> |
  <ees c' ees>8-. <ees c' ees>16-. <ees c' ees>-. <des bes' des>8-. <ees c' ees>-. |
  <f des' f>8-. <ges ees' ges>-. <aes f' aes>4-> |
  <ges bes des ges>8-.[ <aes aes'>-. <bes ees ges bes>-. <c c'>-.] |
  <des f aes des>8-.\noBeam
  \ottava #0
  <<
	{ aes,16-. aes-. g8-. aes-. |
      <f aes des>8 aes16-. aes-. g8-. aes-. } \\
    {
	  r8
	  % forcefully shift 2nd voice and flat sign
	  \once \override Accidental #'X-extent = #'(-3 . -3)
      \once \override NoteColumn #'force-hshift = #2
      <ges! ees c> r |
      s8 r
	  % forcefully shift 2nd voice and flat sign
	  \once \override Accidental #'X-extent = #'(-3 . -3)
      \once \override NoteColumn #'force-hshift = #2
      <ges! ees c> r
	}
  >>
  <f aes des>8-.\noBeam <c ges' aes>16 <c ges' aes> <f aes des>8-.\noBeam <c ges' aes>16 <c ges' aes> |
  <f aes des>8-.\noBeam <c ges' aes>16 <c ges' aes> <f aes des>8-.\noBeam <aes aes'>16-. <aes aes'>-. |
  %
  % bar 120
  %
  <des des'>16-. aes'-. f-. aes-. <des, des'>-. aes'-. <des, des'>-. <f f'>-. |
  \ottava #1
  \set Staff.ottavation = #"8"
  <aes aes'>8-.\noBeam <des des'>16 <des des'> <des des'>8-.
  \ottava #0
  r |
  <des, des'>4-.( <des des'>-. |
  <des des'>-. <des des'>-.)
  \bar "||" \break

  %
  % bar 124
  %
  \key ges \major

  <<
    {
	  \once \override Score.RehearsalMark #'break-align-symbols = #'(key-signature)
	  \once \override Score.KeySignature #'break-align-anchor-alignment = #RIGHT
	  \once \override DynamicText #'self-alignment-X = #-1
	  \mark \markup { \small \bold "Un poco più tranquillo." }
      des'16*4/6-.
	  s16*10/3 des16*4/6-. s16*10/3 |
      des16*4/6-. s16*4/6 s4*4/6 des16*4/6-. s16*4/6 s4*4/6 |
      des8( ces16 bes aes8-> bes16 aes |
      ges8-.)[ b16\rest f]( ges aes bes ces |
      des16*4/5-.) s4*4/5 des16*4/6-. s16*4/6 s4*4/6 |
      des16*4/6-. s16*4/6 s4*4/6 des16*4/6-. s16*4/6 s4*4/6 |
      ees8( f16 ges aes8 ges16 ees |
      des8-.) b16\rest des,16( ges aes bes ces |
      des16*4/5-.) s4*4/5 des16*4/6-. s16*4/6 s4*4/6 |
      des16*4/6-. s16*4/6 s4*4/6 des16*4/5-. s4*4/5 |
      s16*2/3 c8( bes aes ges8*2/3 |
      s16*2/3 f8 aes des f8*2/3 |
      ees8-.[)( d-. ees-. f-.]) |
      des4( aes8)
    } \\
    {
      \times 4/6 { bes16( des, bes ges bes des } \times 4/6 { bes'16 des, bes ges bes des } |
      \times 4/6 { bes'16 des, bes ges bes des } \times 4/6 { bes'16 des, bes ges bes des) ~ } |
      des16 ges ces, bes aes des bes aes |
      ges16 des' des f, ges aes bes ces |
      \times 4/5 { <des bes'>16( bes ges bes des } \times 4/6 { bes'16 des, bes ges bes des } |
      \times 4/6 { bes'16 des, bes ges bes des } \times 4/6 { bes'16 des, bes ges bes des } |
      ees16) ces' f, ges aes ces ges ees |
      des8 s16 des16 ges, aes bes ces |
      \times 4/5 { <des bes'>16( bes ges bes des } \times 4/6 { bes'16 des, bes ges bes des } |
      \times 4/6 { bes'16 des, bes ges bes des } \times 4/5 { bes'16 des, bes ges bes } |
      \set subdivideBeams = ##t
      \set Voice.beatLength = #(ly:make-moment 1 8)
      c16*4/6[) c' e, bes bes' e,] aes,[ aes' c, ges ges' c,] |
      f,[ f' aes, aes aes' des,] des[ des' f, f f' bes,] |
      ees,[ bes' aes d, bes' aes] ees[ bes' aes f bes aes] |
	  \unset Voice.beatLength
      \unset subdivideBeams
      f[ bes aes bes aes bes] aes8
    }
  >>
  <f aes>32\arpeggio des' r16 |
  <e, des'>32 <g c> r16 <e c'>32 <g bes> r16
  <c, bes'>32 <ees aes> r16 <c aes'>32 <ees ges> r16 |
  <ees ges>32 <des f> r16 <des f>32 aes' r16
  <f aes>32 des' r16 <aes des>32 f' r16 |

  %
  % bar 140
  %
  \ottava #1
  \set Staff.ottavation = #"8"
  \tupletUp \times 4/6 { c16[\( ees e f ges g] }
  \tupletUp \times 4/6 { aes[ a bes b c]\) r } |
  <<
    { des4~ des8 s } \\
    { \times 4/6 { des,16[( ees des ees des ees] } des8) b\rest }
  >>
  \ottava #0 |
  <<
    {
      des16*2/3-. s16*10/3 des16*2/3-. s16*10/3 |
      des16*2/3-. s16*10/3 des16*2/3-. s16*10/3 |
      des8( ces16 bes aes8-> bes16 aes |
      ges8-.)[ b16\rest f]( ges aes bes ces |
      des16*4/5-.) s4*4/5 des16*2/3-. s16*10/3 |
      des16*2/3-. s16*10/3 des16*2/3-. s16*10/3 |
      ees8( f16 ges aes8 ges16 ees |
      des8-.) r16 des,16( ges aes bes ces |
      des16*4/5-.) s4*4/5 des16*2/3-. s16*10/3 |
      des16*2/3-. s16*10/3 des16*4/5-. s4*4/5 |
      s16*2/3 c8( bes aes ges8*2/3 |
      s16*2/3 f8 aes des f8*2/3 |
      ees8-.[)( d-. ees-. f-.]) |
      des4( aes8)
    } \\
    {
      \times 4/6 { bes16( des, bes ges bes des } \times 4/6 { bes'16 des, bes ges bes des } |
      \times 4/6 { bes'16 des, bes ges bes des } \times 4/6 { bes'16 des, bes ges bes des) ~ } |
      des16 ges ces, bes aes des bes aes |
      ges16 des' des f, ges aes bes ces |
      \times 4/5 { <des bes'>16( bes ges bes des } \times 4/6 { bes'16 des, bes ges bes des } |
      \times 4/6 { bes'16 des, bes ges bes des } \times 4/6 { bes'16 des, bes ges bes des } |
      ees16) ces' f, ges aes ces ges ees |
      des8 s16 des16 ges, aes bes ces |
      \times 4/5 { <des bes'>16( bes ges bes des } \times 4/6 { bes'16 des, bes ges bes des } |
      \times 4/6 { bes'16 des, bes ges bes des } \times 4/5 { bes'16 des, bes ges bes } |
      \set subdivideBeams = ##t
      \set Voice.beatLength = #(ly:make-moment 1 8)
      c16*4/6[) c' e, bes bes' e,] aes,[ aes' c, ges ges' c,] |
      f,[ f' aes, aes aes' des,] des[ des' f, f f' bes,] |
      ees,[ bes' aes d, bes' aes] ees[ bes' aes f bes aes] |
	  \unset Voice.beatLength
      \unset subdivideBeams
      f[ bes aes bes aes bes] aes8
    }
  >> r8 |
  %
  % bar 156
  %
  <<
	{
	  \ottava #1
	  \set Staff.ottavation = #"8"
	  \set subdivideBeams = ##t
	  \set Voice.beatLength = #(ly:make-moment 1 8)
	  aes16*2/3[\( aes' bes aes bes aes aes, aes' bes aes bes aes] |
	  aes,[        aes' bes aes bes aes aes, aes' bes aes bes aes] |
	  aes,[        aes' bes aes bes aes]
	  \unset Voice.beatLength
	  \unset subdivideBeams
	  g[ aes a bes b c] |
	  des8\)
	  \ottava #0
	} \\
	{ s2*3 | f,8 }
  >>
  r8 r4 |
  %
  % bar 160
  %
  R2 \bar "||" \break

  \key a \major

  <<
	{
	  \times 4/6 { cis,16\( d cis d cis d }
	  \repeat unfold 3 \times 4/6 { cis16 d cis d cis d }
	} \\
	{
	  \repeat unfold 2 { a4-- fis-- }
	}
  >> |
  <<
	{
	  \set subdivideBeams = ##t
	  \set Voice.beatLength = #(ly:make-moment 1 8)
	  \times 2/3 { cis'16[\)\( d cis } b cis] d8[ e16 d] |
	  \unset Voice.beatLength
	  \unset subdivideBeams
	  cis8.\)\( b16 a b cis d
	} \\
	{
	  a8 gis16 a gis8-> cis16 b |
	  a8. e16 cis e a b
	}
  >> |
  <<
	{
	  \times 4/6 { e\)\( fis \repeat unfold 2 { e fis } }
	  \repeat unfold 2 \times 4/6 { \repeat unfold 3 { e fis } }
	  \times 4/6 { \repeat unfold 3 { fis gis } }
	} \\
	{ cis,4-- a-- cis-- d-- }
  >>
  <<
	{
	  \set subdivideBeams = ##t
	  \set Voice.beatLength = #(ly:make-moment 1 8)
	  \times 2/3 { e16[\)\( fis e } d cis] b8[ cis16 d] |
	  \unset Voice.beatLength
	  \unset subdivideBeams
	  cis8.\) b16 a\( gis a b
	} \\
	{
	  cis8 b16 a gis8-> a16 b |
	  a8. e16 fis cis fis gis
	}
  >> |
  <<
	{ cis32[\)( d cis d cis16]) } \\
	{ a8[ fis16] }
  >> r16
  <<
	{ cis''32[( d cis d cis16]) } \\
	{ a8[ fis16] }
  >> r16 |
  %
  % bar 170
  %
  <<
	{ cis32[( d cis d cis16]) } \\
	{ a8[ fis16] }
  >> r16
  <<
	{ cis''32[( d cis d cis16]) } \\
	{ a8[ fis16] }
  >> r16 |
  <<
	{
	  \set subdivideBeams = ##t
	  \set Voice.beatLength = #(ly:make-moment 1 8)
	  \times 2/3 { cis16[\)\( d cis } b cis] d8[ e16 d] |
	  \unset Voice.beatLength
	  \unset subdivideBeams
	  cis8.\)\( b16 a b cis d
	} \\
	{
	  a8 gis16 a gis8-> cis16 b |
	  a8. e16 cis e a b
	}
  >> |
  <<
	{ e32[\)( fis e fis e16]) } \\
	{ cis8[ a16] }
  >> r16
  <<
	{ e''32[( fis e fis e16]) } \\
	{ cis8[ a16] }
  >> r16 |
  <<
	{ e32[( fis e fis e16]) } \\
	{ cis8[ a16] }
  >> r16
  <<
	{ fis'32[( gis fis gis fis16]) } \\
	{ d8[ d16] }
  >> r16 |
  <<
	{ cis8\( b16 a gis8 a16 gis | <a, fis'>8\) } \\
	{ a'8 gis16 fis cis8 fis16 cis | s8 }
  >> r r cis'-. |
  <<
	{
	  \times 4/6 { cis16\( d16 \repeat unfold 2 { cis16 d16 } }
	  \times 4/6 { \repeat unfold 3 { cis16 d16 } }
	  \repeat unfold 2 { \times 4/6 { \repeat unfold 3 { cis16 dis16 } } }
	} \\
	{
	  e,4 eis | eis fis
	} \\
  >> |
  <<
	{
	  \stemDown
	  <cis cis'>8-.[\)( <eis gis eis'>-. <gis cis gis'>-. <b dis b'>-.])
	  \stemNeutral
	} \\
	{ s2 }
  >> |
  %
  % bar 180
  %
  <ais cis ais'>8-. <dis b' dis>-. <cis ais' cis>4-- |
  <<
	{
	  \times 4/6 { cis16\( dis16 \repeat unfold 2 { cis16 dis16 } }
	  \times 4/6 { \repeat unfold 3 { cis16 dis16 } } |
	  \times 4/6 { cis, dis' cis fis, dis' cis }
	  \times 4/6 { ais dis cis cis dis cis }
	} \\
	{ e,4 eis | cis8[ fis ais cis] }
  >> |
  <<
	{
	  \stemDown
	  <cis eis>8[\)( <b dis>) <gis b>-. <eis gis>-.]
	  \stemNeutral
	} \\
	{ s2 }
  >> |
  <ais, cis fis>8 r r4 |
  <<
	{
	  cis'16*2/3\( d \repeat unfold 11 { cis d }
	} \\
	{
	  \repeat unfold 2 { a4-- fis-- }
	}
  >> |
  <<
	{
	  \set subdivideBeams = ##t
	  \set Voice.beatLength = #(ly:make-moment 1 8)
	  \times 2/3 { cis'16[\)\( d cis } b cis] d8[ e16 d] |
	  \unset Voice.beatLength
	  \unset subdivideBeams
	  cis8.\)\( b16 a b cis d
	} \\
	{
	  a8 gis16 a gis8-> cis16 b |
	  a8. e16 cis e a b
	}
  >> |
  %
  % bar 189
  %
  <<
	{
	  e16*2/3\)\( fis \repeat unfold 8 { e fis }
	  \repeat unfold 3 { fis gis }
	} \\
	{ cis,4-- a-- cis-- d-- }
  >>
  <<
	{
	  \set subdivideBeams = ##t
	  \set Voice.beatLength = #(ly:make-moment 1 8)
	  \times 2/3 { e16[\)\( fis e } d cis] b8[ cis16 d] |
	  \unset Voice.beatLength
	  \unset subdivideBeams
	  cis8.\) b16 a\( gis a b
	} \\
	{
	  cis8 b16 a gis8-> a16 b |
	  a8. e16 fis cis fis gis
	}
  >> |
  <<
	{ cis32[\)( d cis d cis16]) } \\
	{ a8[ fis16] }
  >> r16
  <<
	{ cis''32[( d cis d cis16]) } \\
	{ a8[ fis16] }
  >> r16 |
  <<
	{ cis32[( d cis d cis16]) } \\
	{ a8[ fis16] }
  >> r16
  <<
	{ cis''32[( d cis d cis16]) } \\
	{ a8[ fis16] }
  >> r16 |
  <<
	{
	  \set subdivideBeams = ##t
	  \set Voice.beatLength = #(ly:make-moment 1 8)
	  \times 2/3 { cis16[\)\( d cis } b cis] d8[ e16 d] |
	  \unset Voice.beatLength
	  \unset subdivideBeams
	  cis8.\)\( b16 a b cis d
	} \\
	{
	  a8 gis16 a gis8-> cis16 b |
	  a8. e16 cis e a b
	}
  >> |
  <<
	{ e32[\)( fis e fis e16]) } \\
	{ cis8[ a16] }
  >> r16
  <<
	{ e''32[( fis e fis e16]) } \\
	{ cis8[ a16] }
  >> r16 |
  <<
	{ e32[( fis e fis e16]) } \\
	{ cis8[ a16] }
  >> r16
  <<
	{ fis'32[( gis fis gis fis16]) } \\
	{ d8[ d16] }
  >> r16 |
  %
  % bar 199
  %
  <<
	{ cis8\( b16 a gis8 a16 gis | <a, fis'>8\) } \\
	{ a'8 gis16 fis cis8 fis16 cis | s8 }
  >> r r cis'-. |
  <<
	{
	  \times 4/6 { cis16\( d!16 \repeat unfold 2 { cis16 d16 } }
	  \times 4/6 { \repeat unfold 3 { cis16 d16 } }
	  \repeat unfold 2 { \times 4/6 { \repeat unfold 3 { cis16 dis16 } } }
	} \\
	{
	  e,4 eis | eis fis
	} \\
  >> |
  <<
	{
	  \stemDown
	  <cis cis'>8-.[\)( <eis gis eis'>-. <gis cis gis'>-. <b dis b'>-.])
	  \stemNeutral
	} \\
	{ s2 }
  >> |
  <ais cis ais'>8-. <dis b' dis>-. <cis ais' cis>4-- |
  <<
	{
	  \times 4/6 { cis16\( dis16 \repeat unfold 2 { cis16 dis16 } }
	  \times 4/6 { \repeat unfold 3 { cis16 dis16 } } |
	  \stemDown <cis, cis'>8[\)\( <fis fis'> <ais ais'> <cis cis'>] |
	  <eis cis' eis>8[ <dis b' dis>\) <b gis' b>-. <gis eis' gis>]-. |
	  \stemNeutral <fis ais fis'>8-.
	} \\
	{ e4 eis | s2*2 | s8 }
  >>
  <c ees ges aes>16 <c ees ges aes> <c ees ges aes>8 <c ees ges aes>8 |

  %
  % bar 209
  %
  \break
  \key des \major

  \mark \markup { \bold "Vivace" }
  <<
	{
	  <f aes des>8^\markup{ \small \bold "a tempo" } aes16-. aes-. g!8-. aes-. |
	  <f aes des>8 aes16-. aes-. g!8-. aes-.
	} \\
	{
	  s4
	  % forcefully shift 2nd voice and flat sign
	  \once \override Accidental #'X-extent = #'(-3 . -3)
      \once \override NoteColumn #'force-hshift = #2
	  <c, ees ges!>8-. r |
	  s4
	  % forcefully shift 2nd voice and flat sign
	  \once \override Accidental #'X-extent = #'(-3 . -3)
      \once \override NoteColumn #'force-hshift = #2
	  <c ees ges!>8-. r
	}
  >> |
  <f aes des>8-. <c ees ges aes>-. <f aes des>-. <c ees ges aes>-. |
  <f aes des>8-. aes16 aes f8-. aes-. |
  \once \set beatLength = #(ly:make-moment 1 2)
  <des, des'>8-. aes'8-. <des, des'>8-. <f f'>-. |
  <aes aes'>2-^ |
  <aes f' aes>4-> <aes ees' ges-4>8-. <aes des f>-. |
  <ges c ees>4-> <ges c f>8-. <ges c ees>-. |
  <f aes des>4-> <aes c ees>8-. <aes des f>-. |
  <<
    {aes8.( bes16 aes8) b\rest} \\
    {ees,8 s4.} \\
    {ges4. s8}
  >> |
  <aes f' aes>4-> <aes ees' ges>8-. <aes des f>-. |
  %
  % bar 220
  %
  <aes d f bes>4-> <aes d f aes>8-. <aes d f>-. |
  <ges bes ees ges>8-. <aes aes'>16( <ges ges'> <f aes d f>8-.) <ges ges'>16( <f f'>16 |
  <ees ges bes ees>8-.) <f f'>16[ <ges ges'>] <aes aes'> <bes bes'> <c c'> <des des'>
  \ottava #1
  \set Staff.ottavation = #"8"
  <ees c' ees>8-. <ees c' ees>16 <ees c' ees> <des bes' des>8-. <ees c' ees>-. |
  <f des' f>8-. <ges ees' ges>-. <aes f' aes>4 |
  <ees c' ees>8-. <f des' f>-. <ges ees' ges>4 |
  <f aes des f>8-. <ees aes c ees>-. <des f aes des>4 |
  <ees c' ees>8-. <ees c' ees>16 <ees c' ees> <des bes' des>8-. <ees c' ees>-. |
  <f des' f>8-. <ges ees' ges>-. <aes f' aes>4 |
  <g bes ees g>8-. <aes ees' aes>-.[ <bes ees bes'>8.--( <c c'>16] |
  <aes c ees aes>8-.)
  \ottava #0
  %
  % bar 230
  %
  <ees,, ees'>16[ <ees ees'>] <ees ees'>8-. <ees ees'>-. |
  <ges ges'>8-. <ees ees'>16 <ees ees'> <des des'>8( <ees ees'>) |
  <ges' ges'>8-. <ees ees'>16 <ees ees'> <des des'>8( <ees ees'>) |
  \repeat unfold 4 { <ges' ges'>-. <ees, ees'>-. } |
  <ces' ges' ces>8-. <ces ges' ces>16-. <ces ges' ces>-. <bes ges' bes>8-. <ces ges' ces>-. |
  \acciaccatura ees'8 <des, ges des'>8-. <ces ges' ces>16-. <ces ges' ces>-. <bes ges' bes>8-. <ces ges' ces>-. |
  \repeat unfold 4 { \acciaccatura ees'8 <des, ges des'>8-. <ces ges' ces>-. } |
  %
  % bar 239
  %
  <<
	{
	  \repeat unfold 3 { s8 <ees ees'>-. s4 } |
	  s2 |
	  \repeat unfold 3 { s8 <des des'>-. s4 } |
	  s4.
	} \\
	{
	  <ees, ees'>8-. s <ees d'>-. <ees des'>-. |
	  <ees ces'>-. s <ees bes'>-. <ees aes>-. |
	  <ees g>-. s <ees aes>-. <ees bes'>-. |
	  <ees aes>16 <ees g> <ees aes> <ees bes'> <ees ces'>8-. <ees c'>-. |
	  <des des'>8-. s <des c'>-. <des ces'>-. |
	  <des bes'>-. s <des aes'>-. <des ges>-. |
	  <des f>-. s <des ges>-. <des aes'>-. |
	  <des ges>16 <des f> <des ges> <des aes'> <des bes'>8-.
	}
  >>
  <<
	{
	  s8 |
	  s8 <bes'' bes'>16 <bes bes'> s4 |
	  s2*2 | s8
	} \\
	{
	  \ottava #1
	  \set Staff.ottavation = #"8"
	  <bes, bes'>16[ <bes bes'>] |
	  <bes bes'>8 s <c bes' c> <d bes' d> |
	  <ees bes' ees>8-.[ <f bes f'>-. <ges bes ges'>-. <g bes g'>-.] |
	  <aes ees' aes>8. <c c'>16 <bes ees bes'> <aes aes'> <bes bes'> <c c'> |
	  <aes ees' aes>8
	  \ottava #0
	}
  >>
  %
  % bar 250
  %
  <aes, aes'>16 <aes aes'> <aes aes'>8-. <aes aes'>-. |
  r16
  \dynamicUp
  \once \override Hairpin #'Y-extent = #'(-0.5 . 0.5)
  <aes aes'>\< <bes bes'> <c c'> <des des'> <ees ees'> <f f'> <ges ges'> |
  \ottava #1
  \set Staff.ottavation = #"8"
  <aes aes'>-> <bes bes'> <aes aes'> <g g'> <aes aes'>8\!
  \ottava #0
  r8 |
  r16
  \ottava #1
  \set Staff.ottavation = #"8"
  % how to move hairpin above 8va?
  \once \override Hairpin #'rotation = #'(-2 -1 0)
  \once \override Hairpin #'Y-extent = #'(-0.5 . 0.5)
  <aes' aes'>\< <ges ges'> <f f'> <ees ees'> <des des'> <c c'> <bes bes'> |
  <aes aes'>-> <bes bes'> <aes aes'> <g g'> <aes aes'>8-.\!
  \ottava #0
  r8 |
  r16 <aes, aes'>\< <bes bes'> <c c'> <des des'> <ees ees'> <f f'> <aes aes'> |
  \ottava #1
  \set Staff.ottavation = #"8"
  <bes bes'> <ces ces'> <bes bes'> <a a'>\! <bes bes'>8-. <aes aes'>-. |
  <ges bes ees ges>8-. <aes aes'>16( <ges ges'> <f bes d f>8-.) <ges ges'>16( <f f'> |
  <ees ges bes ees>8-.) <f f'>16-. <ges ges'>-. <aes aes'>-. <bes bes'>-. <c c'>-. <des des'>-. |
  %
  % bar 259
  %
  <ees c' ees>8-. <ees c' ees>16-. <ees c' ees>-. <des bes' des>8-. <ees c' ees>-. |
  <f des' f>8-. <ges ees' ges>-. <aes f' aes>4-> |
  <ees c' ees>8-. <f des' f>-. <ges ees' ges>4-> |
  <f aes des f>8-. <ees aes c ees>-. <des f aes des>4-> |
  <aes des aes'>8-. <aes des aes'>16-. <aes des aes'>-. <ges des' ges>8-. <aes des aes'>-. |
  <bes des bes'>8-. <ces ces'>-. <des ges des'>4-> |
  <aes des aes'>8-. <bes des bes'>-. <ces des ces'>4-> |
  <bes des bes'>8-. <aes des aes'>-. <ges bes des ges>4-> |
  <f bes d f>8 <f bes f'>16-. <f bes f'>-. <ees bes' ees>8-. <f bes f'>-. |
  <ges bes ges'>8-. <aes aes'>-. <bes bes'>4-> |
  <f bes f'>8-. <ges bes ges'>-. <aes bes aes'>4-> |
  <ges bes ges'>8-. <f bes f'>-. <ees ges bes ees>4-> |
  \ottava #0
  %
  % bar 271
  %
  <ees a ees'>8-. <ees ees'>16-. <ees ees'>-. <des a' des>8-. <ees ees'>-. |
  \ottava #1
  \set Staff.ottavation = #"8"
  <f f'>8-. <aes aes'>-. <bes bes'>32-^([ ces' <bes, bes'> ces' <bes, bes'>8-.)] |
  <ees, ees'>8-. <ges ges'>-. <aes aes'>32-^([ bes' <aes, aes'> bes' <aes, aes'>8-.)] |
  <f aes des f>8-. <bes des fes bes>-. <aes c ees aes>4-^ |
  \ottava #0
  <ees a ees'>8-. <ees ees'>16-. <ees ees'>-. <des des'>8-. <ees ees'>-. |
  \ottava #1
  \set Staff.ottavation = #"8"
  <f f'>8-. <aes aes'>-. <bes bes'>32-^([ ces' <bes, bes'> ces' <bes, bes'>8-.)] |
  <ges ges'>8-. <bes bes'>-. <c c'>32-^([ des' <c, c'> des' <c, c'>8-.)] |
  <aes aes'>8-. <c c'>-. <des des'>32-^([ ees' <des, des'> ees' <des, des'>8-.)] |
  <bes bes'>8-. <des des'>-. <ees des' ees>32-^[ f' <ees, des' ees>8.] |
  %
  % bar 280
  %
  <des' ees>16-^ ees, <des ees> ees <des' ees f>-^ ees, <des' ees f>-^ ees, |
  <des' ees f>-^ ees, <des' ees f>-^ f, <des' ees f>8-^ r |
  <ges aes bes>16-^ aes, <aes bes> g <aes bes> aes <ges' aes bes>-^ aes, |
  <ges' aes bes>16-^ aes, <aes bes> g <ges aes>8 r |

  %
  % FIXME: Invisible bar inserts time step, hence adds horizontal space
  % c.f. http://code.google.com/p/lilypond/issues/detail?id=462
  %
  \cadenzaOn

  \scaleDurations #'(8 . 11) { ges'32 aes bes aes ges f ees des c bes aes }
%  \tupletUp \times 8/11 { ges'32 aes bes aes ges f ees des c bes aes }
%% **** Doesn't work ****
%%  \once \override BarLine #'gap = #0.0
%%  \once \override BarLine #'space-alist = #'((first-note fixed-space . 0.0))
%%  \once \override BarLine #'kern = #0.0
%%  \once \override BarLine #'thin-kern = #0.0
  \bar ""
  \scaleDurations #'(8 . 11) { ges32 aes bes aes ges f ees des c bes aes }
  \bar ""
  \ottava #0
  \scaleDurations #'(8 . 12) { ges32 aes bes aes ges f ees des c bes aes ges }
  \bar ""
  \scaleDurations #'(16 . 22) { f32[ ges aes bes c des ees f ges aes bes c des ees \ottava #1 \set Staff.ottavation = #"8" f ges aes bes c des ees f] }
  \bar ""

  \scaleDurations #'(16 . 31) { ges[-> f ees des c bes aes ges f \ottava #0 ees des c bes aes ges f ees des c bes aes ges f ees des c \clef bass bes aes ges f ees] }
  \bar "|"
  \cadenzaOff
  |
  \set beatLength = #(ly:make-moment 1 8)
  \set beatGrouping = #'(1 1 2)
  des8-^ \clef treble <aes' aes'>16 <aes aes'>
  \change Staff = "LH" g!
  \change Staff = "RH" <aes aes'>
  \change Staff = "LH" bes
  \change Staff = "RH" <aes aes'> |

  <des f aes des>8 <aes' aes'>16 <aes aes'>
  \change Staff = "LH" g!
  \change Staff = "RH" <aes aes'>
  \change Staff = "LH" bes
  \change Staff = "RH" <aes aes'> |

  <des f aes des>8
  \ottava #1
  \set Staff.ottavation = #"8"
  <aes' aes'>16 <aes aes'>
  \change Staff = "LH" g!
  \change Staff = "RH" <aes aes'>
  \change Staff = "LH" bes
  \change Staff = "RH" <aes aes'> |

  \unset beatLength
  \unset beatGrouping

  <des des'>16 aes' f aes <des, des'> aes' des <f, f'> |

  <aes aes'>8-.
  \ottava #0
  r <c,, ees aes c>4 |

  <des f aes des>8-> <a a'>16[ <bes bes'>] <b b'> <c c'> <des des'> <d d'> |
  <ees ees'> <e e'> <f f'> <ges ges'>
  \ottava #1
  \set Staff.ottavation = #"8"
  <g g'> <aes aes'> <bes bes'> <c c'> |
  <des des'>8->
  \ottava #0
  r <des, f aes des>-> 
  <des,, des'>16[ <des des'>] |

  <des des'>4->\fermata r \bar "|."
}
