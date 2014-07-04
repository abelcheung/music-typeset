lh = \relative c, {
  <des des'>8-. <aes aes'>16-. <aes aes'>-. <g g'>8-. <aes aes'>-. |
  <des des'>8-. <aes aes'>16-. <aes aes'>-. <g g'>8-. <aes aes'>-. |
  <des des'>8-.[ <aes aes'>-. <des des'>-. <aes aes'>-.] |
  <des des'>8-.[ <aes aes'>-. <f f'>-. <aes aes'>-.] |
  <des des'>8-.[ <aes aes'>-. <des des'>-. <f f'>-.] |
  <aes aes'>2 |
  <<
    \set fingeringOrientations = #'(left)
    { s8 <aes' des f>16 <aes des f> <aes ees' ges>8-. <aes des f>-. } \\
    { <des,, des'>8-. s4. }
  >> |
  <<
    { s8 <aes'' c ees>16 <aes c ees> <aes c f>8-. <aes c ees>8-. } \\
    { <aes,, aes'>8-. s4. }
  >> |
  <<
    { s8 <f'' aes des>16 <f aes des> <aes c ees>8-. <aes des f>-. } \\
    { <des,, aes' des>8-. s4. }
  >> |
  %
  % bar 10
  %
  <<
    { s8 <aes'' c ees>16 <aes c ees> <aes c ees>8-. <aes c ees>8-. } \\
    { <aes,, aes'>8-. s4. }
  >> |
  <<
    { s8 <aes'' des f>16 <aes des f> <aes ees' ges>8-. <aes des f>-. } \\
    { <des,, des'>8-. s4. }
  >> |
  <<
    {s8 <f' bes d>16 <f bes d> <f bes d>8-. <f bes d>-.} \\
    {<bes,, bes'>8-. s4.} \\
  >> |
  <<
    {s8 <ges'' bes ees>-. s <f bes d>-.} \\
    {<ees, ees'>8-. s <bes bes'>-. s}
  >> |
  <<
    {s8 <ges'' bes ees>-. d4\rest} \\
    {<ees, ees'>8-. s4.}
  >> |
  <<
    {s8 \clef treble <aes' c ees aes>16 <aes c ees aes> <aes bes des aes'>8-. <aes c ees aes>-.} \\
    {<aes,, aes'>8-. s4.}
  >> |
  <<
    {s8 \clef treble <aes'' ees' ges>8-.[ <aes f' aes>-.] s} \\
    {\clef bass <des,, des'>8-. s4 \clef bass <f, f'>8-.}
  >> |
  <<
    {s8 \clef treble <aes'' des f>-.[ <aes ees' ges>-.] s} \\
    {\clef bass <aes,, aes'>8-. s4 \clef bass <aes aes'>8-.}
  >> |
  <des des'>8-. <aes aes'>-. <des des'>4-- |
  <<
    {s8 \clef treble <aes'' c ees aes>16 <aes c ees aes> <aes bes des aes'>8-. <aes c ees aes>-.} \\
    {<aes,, c ees aes>8\arpeggio s4.}
  >> |
  %
  % bar 20
  %
  <<
    {s8 \clef treble <aes'' ees' ges>8-.[ <aes f' aes>-.] s} \\
    {\clef bass <des,, des'>8-. s4 \clef bass <des des'>8-.}
  >> |
  <<
    {s8 \clef treble <c'' ees aes>-.[ <des ees bes'>8.( <ees c'>16]} \\
    {<ees,, ees'>8-. s4.}
  >> |
  <<
    {<aes' ees' aes>8-.) s4.} \\
    {s8 \clef bass <aes, aes'>16 <aes aes'> <aes aes'>8-. <aes aes'>-.}
  >> |
  <des des'>8-. <aes, aes'>16-. <aes aes'>-. <g g'>8-. <aes aes'>-. |
  <des' des'>8-. <aes, aes'>16-. <aes aes'>-. <g g'>8-. <aes aes'>-. |
  <des' des'>8-. <aes, aes'>-. <des' des'>8-. <aes, aes'>-. |
  <des' des'>8-.[ <aes, aes'>-. <f f'>-. <aes aes'>-.] |
  <des' des'>8-.[ <aes aes'>-. <des des'>-. <f f'>-.] |
  aes2 |
  <<
	{ s8 <aes, aes'>16 <aes aes'> <aes aes'>8 <aes aes'> } \\
	{
	  \ottava #-1
	  \set Staff.ottavation = #"8"
	  \acciaccatura c,,8
      \once \override Stem #'direction = #DOWN
	  <des des'>8-.\noBeam
	  \ottava #0
	  s4.
	}
  >> |
  %
  % bar 30
  %
  <<
    {s8 <aes'' aes'>16[ <aes aes'>] <aes aes'>8[ <aes aes'>]} \\
    {<aes, aes'>8-. s4.}
  >> |
  <<
    {s8 <aes' aes'>16[ <aes aes'>] <aes aes'>8[ <aes aes'>]} \\
    {<des, des'>8-. s4.}
  >> |
  <<
    {s8 <aes' aes'>16[ <aes aes'>] <aes aes'>8[ <aes aes'>]} \\
    {<aes, aes'>8-. s4.}
  >> |
  <<
    {s8 <aes' aes'>16[ <aes aes'>] <aes aes'>8[ <aes aes'>]} \\
    {<des, des'>8-. s4.}
  >> |
  <<
    {s8 <aes' aes'>16[ <aes aes'>] <aes aes'>8[ <aes aes'>]} \\
    {<bes, bes'>8-. s4.}
  >> |
  <<
    {s8 <ges'' bes ees>-. s <f bes d>-.} \\
    {<ees, ees'>8-. s <bes bes'>-. s}
  >> |
  <<
    {s8 <ges'' bes ees>-. d4\rest} \\
    {<ees, ees'>8-. s4.}
  >> |
  <<
    {s8 \clef treble <aes' c ees aes>16 <aes c ees aes> <aes bes des aes'>8-. <aes c ees aes>-.} \\
    {<aes,, aes'>8-. s4.}
  >> |
  <<
    {s8 \clef treble <aes'' ees' ges>8-.[ <aes f' aes>-.] s} \\
    {\clef bass <des,, des'>8-. s4 \clef bass <f, f'>8-.}
  >> |
  <<
    {s8 \clef treble <aes'' des f>-.[ <aes ees' ges>-.] s} \\
    {\clef bass <aes,, aes'>8-. s4 \clef bass <aes aes'>8-.}
  >> |
  %
  % bar 40
  %
  <des des'>8-. <aes aes'>-. <des des'>4-- |
  <<
    {s8 \clef treble <aes'' c ees aes>16 <aes c ees aes> <aes bes des aes'>8-. <aes c ees aes>-.} \\
    {<aes,, c ees aes>8\arpeggio s4.}
  >> |
  <<
    {s8 \clef treble <aes'' ees' ges>8-.[ <aes f' aes>-.] s} \\
    {\clef bass <des,, des'>8-. s4 \clef bass <des des'>8-.}
  >> |
  <<
    {s8 \clef treble <c'' ees aes>-.[ <des ees bes'>8.( <ees c'>16]} \\
    {<ees,, ees'>8-. s4.}
  >> |
  <<
    {<aes' c ees aes>8-.) s4.} \\
    {s8 \clef bass <ees, ees'>16 <ees ees'> <ees ees'>8 <ees ees'>}
  >> |
  <ges ges'>8-. <ees ees'>16-. <ees ees'>-. <d d'>8( <ees ees'>) |
  <ges' ges'>8-. <ees ees'>16-. <ees ees'>-. <d d'>8( <ees ees'>) |
  <ges, ges'>8( <ees ees'>) <ges' ges'>8( <ees es'>) |
  <ges, ges'>8( <ees ees'>) <ges' ges'>8( <ees es'>) |
  <ces ees ges ces>8-. <ees ges ces>16-. <ees ges ces>-. <fes ges des'>8-. <ees ges ces>-. |
  %
  % bar 50
  %
  <ges, fes' bes>8-. <ees' ges ces>16-. <ees ges ces>-. <fes ges des'>8-. <ees ges ces>-. |
  <ges, fes' bes>8-. <ces ges' ces>-.
  \repeat unfold 3 { <ges fes' bes>-. <ces ges' ces>-. } |
  <<
    {s8 ees16[_( g]) g[_( bes]) bes[_( ees])} \\
    {<ees,, ees'>8 s4.}
  >> |
  <<
    {s8 ees'16[_( aes]) aes[_( ces]) ces[_( ees])} \\
    {<ees,, ees'>8 s4.}
  >> |
  <<
    {
      \set subdivideBeams = ##t
      s8 des''16[_( fes ces ees bes des])
    } \\
    {<ees,, ees'>8 s4.}
  >> |
  <<
    { s8 \clef treble <aes' ees'>16-. <aes ees'>-. <ces aes'>8-. <ees ges aes>-. } \\
    { <aes,, ees'>8 s4. }
  >> |
  <<
    {s8 des16[_( f]) f[_( aes]) aes[_( des])} \\
    {\clef bass <des,, des'>8 s4.}
  >> |
  <<
    {s8 des'16[_( ges]) ges[_( bes]) bes[_( des])} \\
    {<des,, des'>8 s4.}
  >> |
  <<
    {s8 ces''16_( ees bes des aes ces)} \\
    {<des,, des'>8 s4.}
  >> |
  %
  % bar 60
  %
  <<
    {s8 \clef treble <ges' des'>16-.[ <ges des'>-. <bes ges'>8-.] s8} \\
    {<ges, des'>8-. s4 \clef bass <bes bes'>16 <bes bes'>}
  >> |
  <bes bes'>8-. <bes bes'>16 <bes bes'> <a bes a'>8-. <aes bes aes'>-. |
  <ges bes ges'>8-.[ <f bes f'>-. <ees bes' ees>-. <des fes'>-.] |
  %% FIXME: Known issue, parenthesize adds parenthesis around each note instead of whole chord
  <c aes' ees'>8-. \parenthesize <c' ees aes>-. <ees, ees'>-. <ees' g des'>-. |
  <aes, ees' c'>8\noBeam aes'16 aes aes8-. aes-. |
  <<
    {s8 <f aes des>16[ <f aes des> <f aes des>8] s8} \\
    {<des, aes' des>8 s4 <des aes'>8[}
  >> |
  <<
    {s8 <ges' aes c>16[ <ges aes c> <ges aes c>8] s8} \\
    {<des, aes'>8] s4 <des aes'>8[}
  >> |
  <<
    {s8 <f' aes des>16[ <f aes des> <f aes des>8] s8} \\
    {<des, aes'>8] s4 <des aes'>8[}
  >> |
  <<
    {s8 <ges' aes c>16[ <ges aes c> <ges aes c>8] s8} \\
    {<des, aes'>8] s4 <des aes'>8[}
  >> |
  <<
    {s8 <aes'' des f>16[ <aes des f> <aes ees'>8] s8} \\
    {<des,, aes'>8] s4 <des aes'>8[}
  >> |
  %
  % bar 70
  %
  <<
    {s8 <f' aes bes d>16[ <f aes bes d> <f aes bes d>8] s8} \\
    {<bes,, bes'>8] s4 <bes bes'>8} \\
  >> |
  <<
    {s8 <ges'' bes ees> s <f bes d>} \\
    {<ees, bes'>8 s <bes bes'> s}
  >> |
  <<
    {s8 <ges'' bes ees> d4\rest} \\
    {<ees, ees'>8 s4.}
  >> |
  <<
    {s8 \clef treble <aes' c ees aes>16 <aes c ees aes> <aes bes des aes'>8-. <aes c ees aes>-.} \\
    {<aes,, aes'>8 s4.}
  >> |
  <<
    {s8 \clef treble <aes'' ees' ges>8[ <aes f' aes>8-.] s8} \\
    {\clef bass <des,, des'>8-. s4 \clef bass <f, f'>8-.}
  >> |
  <<
    {s8 \clef treble <aes'' des f>8[ <aes ees' ges>8-.] s8} \\
    {\clef bass <aes,, aes'>8-. s4 \clef bass <aes aes'>8-.}
  >> |
  \stemDown <des des'>8-. <aes aes'>16-. <aes aes'>-. <des des'>4-> \stemNeutral |
  <<
    {s8 \clef treble <aes'' c ees aes>16 <aes c ees aes> <aes bes des aes'>8-. <aes c ees aes>-.} \\
    {<aes,, aes'>8 s4.}
  >> |
  <<
    {s8 \clef treble <aes'' ees' ges>8[ <aes f' aes>8-.] s8} \\
    {\clef bass <des,, des'>8-. s4 \clef bass <des des'>8-.}
  >> |
  <<
    {s8 <f' aes des>8-.[ <ges aes ees'>8.->( <aes f'>16]} \\
    {<aes,, aes'>8-. s4.}
  >> |
  %
  % bar 80
  %
  <<
    {<des' f aes des>8) s4.} \\
    {s8 <bes d f bes>16 <bes d f bes> <bes d f bes>8-. <bes d f bes>-.}
  >> |
  <ees ges bes>8-.\noBeam <ees,, ees'>16-. <ees ees'>-. <d d'>8( <ees ees'>) |
  <ges' ges'>8-. <ees ees'>16-. <ees ees'>-. <d d'>8( <ees ees'>) |
  <ges ges'>8( <ees ees'>) <ges' ges'>8( <ees es'>) |
  <ges, ges'>8( <ees ees'>) <ges' ges'>8( <ees es'>) |
  <ces, ges' ees'>8\arpeggio\noBeam <ees' ges ces>16-. <ees ges ces>-. <fes ges des'>8-. <ees ges ces>-. |
  <ces, ges' fes'>8\arpeggio\noBeam <ees' ges ces>16-. <ees ges ces>-. <fes ges des'>8-. <ees ges ces>-. |
  <ces, ges' fes'>8-. <ees' ges ces>-. <ces, ges' fes'>8-. <ees' ges ces>-. |
  <ces, ges' fes'>8-. <ees' ges ces>-. <ces, ges' fes'>8-. <ees' ges ces>-. |
  <<
    {s8 <ees ees'>16-. <ees ees'>-. <f ees'>8-. <g ees'>-.} \\
    {<ees,, ees'>8 s4.}
  >> |
  %
  % bar 90
  %
  <<
    {s8 <ees'' ees'>16-. <ees ees'>-. <g ees'>8-. <aes ees'>-.} \\
    {<ees,, ees'>8 s4.}
  >> |
  <<
    {s8 <fes'' fes'>8-.[ <ees ees'>-. <des des'>-.]} \\
    {<ees,, ees'>8 s4.}
  >> |
  <ces'' ces'>8-.[ <bes bes'>-. <aes aes'>-. <ees ges'>-.] |
  <<
    {s8 <des' des'>16-.[ <des des'>-. <ees des'>8-. <f des'>-.]} \\
    {<des,, des'>8 s4.}
  >> |
  <<
    {s8 <des'' des'>16-.[ <des des'>-. <f des'>8-. <ges des'>-.]} \\
    {<des,, des'>8 s4.}
  >> |
  <<
    {s8 <ees'' ees'>8-.[ <des des'>-. <ces ces'>-.]} \\
    {<des,, des'>8 s4.}
  >> |
  <bes'' bes'>8-.[ <aes aes'>-. <ges ges'>-.] <bes bes'>16 <bes bes'> |
  <bes bes'>8-. <bes bes'>16 <bes bes'> <a bes a'>8-. <aes bes aes'>-. |
  <ges bes ges'>8-.[ <f bes f'>-. <ees bes' ees>-. <des fes'>-.] |
  <c c'>16-. <ees ees'>-. <aes aes'>-. r <ees ees'>-. <bes' bes'>-. <ees ees'>-. r |
  %
  % bar 100
  %
  <aes, c ees aes>8-.\noBeam <aes aes'>16 <aes aes'> <aes aes'>8-. <aes aes'>-. |
  <<
    {
      <aes' des f >8  s4 <f aes des>8[
      <ges aes c  >8] s4 <ges aes c>8[
      <f aes des  >8] s4 <f aes des>8[
      <ges aes    >8] s4 <ges aes c>8[
      <f aes des f>8] s4 <f aes des>8[
      <f bes d    >8] s4 <f bes d  >8
    } \\
    {
      s8 <aes,, des aes'>16([ g <aes des  aes'>8-.)] s8
      s8 <aes ees'  aes >16([ g <aes ees' aes >8-.)] s8
      s8 <aes des   aes'>16([ g <aes des  aes'>8-.)] s8
      s8 <aes ees'  aes >16([ g <aes ees' aes >8-.)] s8
      s8 <aes des   aes'>16([ g <aes des  aes'>8-.)] s8
      s8 <bes f'    bes >16([ g <bes f'   bes >8-.)] s8
    }
  >> |
  <ees' ees'>8 <aes,, aes'> <bes' bes'> <aes, aes'> |
  <ees' ees'>8 <aes, aes'> <ees'' ees'> <aes,, aes'> |
  \stemUp <aes'' aes'>8 <aes,, aes'> <ees'' ees'> <aes,, aes'> |
  \stemNeutral
  %
  % bar 110
  %
  <des' des'>8 <aes, aes'> <ces' ces'> <aes, aes'> |
  <bes' bes'>8 <aes, aes'> <beses' beses'> <aes, aes'> |
  <aes' aes'>8 <aes, aes'>16 <aes aes'> <des des'>8 <aes aes'> |
  \stemUp <aes'' aes'>8 <aes,, aes'> <ees'' ees'> <aes,, aes'> |
  \stemNeutral
  <des' des'>8 <aes, aes'> <ces' ces'> <aes, aes'> |
  <bes' bes'>8 <aes, aes'> <aes' aes'> r |
  <<
    {
      s8 aes'16-. aes-. g8-. aes-. |
      s8 aes16-. aes-. g8-. aes-. |
      s8 <aes, ees' aes> s <aes ees' aes> |
      s8 <aes ees' aes> s
    } \\
    {
      <des,, des'>8 r

	  % forcefully shift 2nd voice and flat sign
	  \once \override Accidental #'X-extent = #'(-3 . -3)
      \once \override NoteColumn #'force-hshift = #2
      <aes'' ees' ges!> r |
      <des, aes' f'>8 r
	  % forcefully shift 2nd voice and flat sign
	  \once \override Accidental #'X-extent = #'(-3 . -3)
      \once \override NoteColumn #'force-hshift = #2
      <aes' ees' ges!> r |
      <des, aes' des>8-. s <des aes' des>-. s |
      <des aes' des>8-. s <des aes' des>-.
    }
  >>
  aes''16-. aes-. |
  %
  % bar 120
  %
  des16-. aes-. f-. aes-. des-. aes-. des-. f-. |
  \clef treble
  aes8-.\noBeam <des, des'>16 <des des'> <des des'>8-. r |
  des4-.( des-. |
  des4-. des-.)
  \bar "||"
  %
  % bar 124
  %
  \set Staff.printKeyCancellation = ##f
  \key ges \major
  \clef bass

  <<
    {
      s8 <bes des>-. s <bes des>-. |
      s8 <bes des>-. s <bes des>-. |
      s8 <ges des'>-. s <f ces' des>-. |
      s8 <ges bes>-. <bes des>-. d,\rest |
      s8 <bes' des>-. s <bes des>-. |
      s8 <bes des>-. s <bes des>-. |
      s8 <ges ces ees>-. s <ges ces ees>-. |
      s8 <ges bes>-. \acciaccatura bes des d,\rest |
      s8 <bes' des>-. s <bes des>-. |
      s8 <bes des>-. s <bes des>-. |
      s8 <g c e>-. s <aes ees'>-. |
      s8 <f aes des>-.[( <aes des f>-. <g bes des f>-.]) |
      s8 \clef treble <aes c f>-.[( <aes c ges'>-. <aes c aes'>-.]) |
      \clef bass s8 <aes des f>16( <aes des f>
      \once \override Stem #'transparent = ##t
      \hideNotes f8) \unHideNotes
      \clef treble <f' aes des>8\arpeggio |
      s8 <e g> s <ees ges aes> |
      s8 <f aes>-.[ <aes des>-. <des f>-.] |
    } \\
    {
      <ges,,, des'>8-. s bes-. s |
      des8-. s ges-. s |
      ges,8-. s <des aes'>-. s |
      <ges, ges'>8-. s8 s4 |
      <ges' des'>8-. s bes-. s |
      des8-. s ges-. s |
      ges,8-. s <ees' ges>-. s |
      <ges, des'>-. s4. |
      <ges des'>8-. s bes-. s |
      des8-. s ges-. s |
      aes,8-. s aes,-. s |
      aes'8 s4. |
      aes8 s4. |
      des8 s f-. s |
      aes8 s aes s |
      aes8 s4. |
    }
  >>
  %
  % bar 140
  %
  \times 4/6 { <aes' ees'>16[\( ges' g aes a bes] } \times 4/6 { b16[ c des d ees]\) r } |
  \times 4/6 { des,16[\( ees des ees des ees] } des8\) r |
  \clef bass
  <<
    {
      s8 <bes, des>-. s <bes des>-. |
      s8 <bes des>-. s <bes des>-. |
      s8 <ges des'>-. s <f ces' des>-. |
      s8 <ges bes>-. <bes des> d,\rest |
      s8 <bes' des>-. s <bes des>-. |
      s8 <bes des>-. s <bes des>-. |
      s8 <ges ces ees>-. s a\rest |
      s8 <ges bes>-. \acciaccatura bes des d,\rest |
	  % bar 150
      s8 <bes' des>-. s <bes des>-. |
      s8 <bes des>-. s <bes des>-. |
      s8 <g c e>-. s <aes ees'>-. |
      s8 <f aes des>-.[\( <aes des f>-. <g bes des f>-.]\) |
      s8 \clef treble <aes c f>-.[\( <aes c ges'>-. <aes c aes'>-.]\) |
      \clef bass s8 <aes des f>16( <aes des f>
	  % HACK: create a dummy note
	  \once \override Stem #'flag = ##f
	  \once \override Stem #'length = #0
	  f8) \noBeam
      \clef treble <f' des'>8-. |
    } \\
    {
      <ges,, des'>8-. s bes-. s |
      des8-. s ges-. s |
	  <ges, des'>8-. s des-. s |
      <ges, ges'>8-. s8 s4 |
      <ges' des'>8-. s bes-. s |
      des8-. s ges-. s |
      ges,8-. s ees'-. s |
      ges,-. s4. |
	  % bar 150
      <ges des'>8-. s bes-. s |
      des8-. s ges-. s |
      aes,8-. s aes,-. s |
      aes'8 s4. |
      aes8 s4. |
      des8 s f-. s |
    }
  >>
  <<
	{ c''-.[\( bes-. aes-. ges-.] } \\
	{ <aes, ees'>8 r <aes c>8 r }
  >> |
  <<
	{ f'-.[ aes-. <f aes des>-. <aes des f>-.] } \\
	{ <aes, des>8 s4. }
  >> |
  <<
	{ <ges' c ees>8-.[\)\( <f c' d>-. <ges c ees>-. <aes c f>-.] } \\
	{ s2 }
  >> |
  <<
	{ <des, f des'>8\) } \\ { s8 }
  >>
  % HACK: dummy grace note so trills are ended in proper position!
  \stemDown \afterGrace des'4.\startTrillSpan { \hideNotes des8\stopTrillSpan \unHideNotes } \stemNeutral |
  %
  % bar 160
  %

  % FIXME: missing double flat in trill
  \afterGrace \pitchedTrill des2\startTrillSpan deses { \hideNotes des8\stopTrillSpan \unHideNotes } |
  \set Staff.printKeyCancellation = ##t
  \key a \major
  \unset Staff.printKeyCancellation
  \clef bass

  <<
	{
	  s8 <a, cis>
	  \repeat unfold 3 { s8 <a cis> }
	} \\
	{
	  fis,8-\markup { \translate #'(2 . 3) \small \bold \italic "legg. e sempre staccato" } s a s |
	  cis s fis s
	}
  >> |
  <<
	{
	  s8 <fis a cis> s <e b' d> |
	  s <e cis'>
	} \\
	{
	  fis, s e s |
	  a s
	}
  >>
  r4 |
  <<
	{
	  s8 <cis' e> \repeat unfold 2 { s8 <cis e> } s8 <a fis'>
	} \\
	{
	  a,8 s cis s | e s d s
	}
  >> |
  <<
	{
	  s8 <a' e'> s <gis b d> |
	  s <e a cis> s <gis b>
	} \\
	{
	  a,8 s e' s | a, s cis s
	}
  >> |
  <<
	{
	  s8 <a' cis> \repeat unfold 3 { s8 <a cis> }
	} \\
	{
	  <fis, fis'>8 s a s |
	  cis s fis s
	}
  >> |
  %
  % bar 171
  %
  <<
	{
	  s8 <fis a cis> s <e b' d> |
	  s <e cis'>
	} \\
	{
	  fis, s e s |
	  a s
	}
  >>
  r4 |
  <<
	{ s8 <cis' e> \repeat unfold 2 { s <cis e> } s <a fis'> } \\
	{ <a, e'>8 s cis s e s d s }
  >> |
  <<
	{
	  s8 <a' cis> s <cis, b'> | s
	  \once \set subdivideBeams = ##t
	  \once \set beatLength = #(ly:make-moment 1 8)
	  cis'32([ d \repeat unfold 2 { cis d } cis d] cis8)
	} \\
	{ cis,8 s cis, s | fis s4. }
  >> |
  <<
	{ s8 <cis' ais'> s <cis b'> s <cis bis'> s <cis cis'> } \\
	{ <fisis, cis'>8 s gis s gisis s ais s }
  >> |
  <<
	{ b16 cis cis' cis, gis cis cis' cis, } \\
	{ b8 s gis s }
  >> |
  <<
	{ s <fis' b dis>-. <fis ais cis>4-- } \\
	{ fis,8 s4. }
  >> |
  <<
	{ s8 <cis' ais'> s <cis b'> s <cis bis'> s <cis cis'> } \\
	{ <fisis, cis'>8 s gis s gisis s ais s }
  >> |
  <<
	{
	  b16 cis cis' cis, cis, cis' cis' cis,
	} \\
	{
	  b8 s cis, s
	}
  >> |
  <<
	{
%%	  s8 \afterGrace \pitchedTrill cis''4.\startTrillSpan^\markup { \box { \teeny \sharp } } dis { \hideNotes cis4\stopTrillSpan \unHideNotes }

	  s8 \afterGrace \pitchedTrill cis''4.\startTrillSpan dis { \hideNotes cis4\stopTrillSpan \unHideNotes }
	} \\
	{ <fis,, fis'>8 s4. }
  >> |
  <<
	{ s8 <a' cis>8 \repeat unfold 3 { s <a cis> } } \\
	{ fis,8 s a s | cis s fis s }
  >> |
  <<
	{
	  s8 <fis a cis> s <e b' d> |
	  s <e cis'>
	} \\
	{
	  fis, s e s |
	  a s
	}
  >>
  r4 |
  <<
	{
	  s8 <cis' e> \repeat unfold 2 { s8 <cis e> } s8 <a fis'>
	} \\
	{
	  a,8 s cis s | e s d s
	}
  >> |
  %
  % bar 191
  %
  <<
	{
	  s8 <a' e'> s <gis b d> |
	  s <e a cis> s <gis b>
	} \\
	{
	  a,8 s e' s | a, s cis s
	}
  >> |
  <<
	{
	  s8 <a' cis> \repeat unfold 3 { s8 <a cis> }
	} \\
	{
	  <fis, fis'>8 s a s |
	  cis s fis s
	}
  >> |
  <<
	{
	  s8 <fis a cis> s <e b' d> |
	  s <e cis'>
	} \\
	{
	  fis, s e s |
	  a s
	}
  >>
  r4 |
  <<
	{ s8 <cis' e> \repeat unfold 2 { s <cis e> } s <a fis'> } \\
	{ <a, e'>8 s cis s e s d s }
  >> |
  %
  % bar 200
  %
  <<
	{ s8 <a' cis> s <cis, b'> | s
	  \once \set subdivideBeams = ##t
	  \once \set beatLength = #(ly:make-moment 1 8)
	  cis'32([ d \repeat unfold 2 { cis d } cis d] cis8)
	} \\
	{ cis,8 s cis, s | fis s4. }
  >> |
  <<
	{ s8 <cis' ais'> s <cis b'> | s <cis bis'> s <cis cis'> } \\
	{ fisis,8 s gis s | gisis s ais s }
  >> |
  <<
	{ b16 cis cis' cis, gis cis cis' cis, } \\
	{ b8 s gis s }
  >> |
  <<
	{ s <fis' b dis>-. <fis ais cis>4-- } \\
	{ fis,8 s4. }
  >> |
  <<
	{
	  s8 <cis' ais'> s <cis b'> |
	  gisis16 cis cis' cis, ais cis cis' cis, |
	  b cis cis' cis, cis, cis' cis' cis, |
	  ais'8-.
	} \\
	{
	  fisis,8 s gis s |
	  gisis s ais s |
	  b s cis, s |
	  <fis cis'>
	}
  >>
  <aes ees' aes>16 <aes ees' aes> <aes ees' aes>8 <aes ees' aes> |

  %
  % bar 209
  %
  \break
  \key des \major

  <<
	{
	  s8 aes'16-. aes-. g!8-. aes-. |
	  s8 aes16-. aes-. g!8-. aes-.
	} \\
	{
	  <des,, aes' f'>8 r
	  % forcefully shift 2nd voice and flat sign
	  \once \override Accidental #'X-extent = #'(-3 . -3)
      \once \override NoteColumn #'force-hshift = #2
	  <aes' ees' ges!> r |
	  <des, aes' f'>8 r
	  % forcefully shift 2nd voice and flat sign
	  \once \override Accidental #'X-extent = #'(-3 . -3)
      \once \override NoteColumn #'force-hshift = #2
	  <aes' ees' ges!> r
	}
  >> |
  \repeat unfold 2 { <des, aes' des>8-. <aes' ees' aes>-. } |
  <des, aes' des>-. <aes' aes'>16 <aes aes'> <f f'>8-. <aes aes'>-. |
  \once \set beatLength = #(ly:make-moment 1 2)
  des-. <aes aes'>-. des-. f-. |
  aes2-^ |

  %
  % bar 215
  %
  <<
    {s8 <aes des f>16 <aes des f> <aes ees' ges>8-. <aes des f>-.} \\
    {<des,, des'>8 s4.}
  >> |
  <<
    {s8 <aes'' c ees>16 <aes c ees> <aes c f>8-. <aes c ees>8-.} \\
    {<aes,, aes'>8 s4.}
  >> |
  <<
    {s8 <f'' aes des>16 <f aes des> <aes c ees>8-. <aes des f>-.} \\
    {<des,, aes' des>8 s4.}
  >> |
  <<
    {s8 <aes'' c ees>16 <aes c ees> <aes c ees>8-. <aes c ees>8-.} \\
    {<aes,, aes'>8 s4.}
  >> |
  <<
    {s8 <aes'' des f>16 <aes des f> <aes ees' ges>8-. <aes des f>-.} \\
    {<des,, des'>8 s4.}
  >> |
  <<
    {s8 <f' bes d>16 <f bes d> <f bes d>8-. <f bes d>-.} \\
    {<bes,, bes'>8 s4.} \\
  >> |
  <<
    {s8 <ges'' bes ees> s <f bes d>} \\
    {<ees, ees'>8 s <bes bes'> s}
  >> |
  <<
    {s8 <ges'' bes ees> d4\rest} \\
    {<ees, ees'>8 s4.}
  >> |
  <<
	{
	  s8 \clef treble <aes' c ees aes>16 <aes c ees aes> <aes bes des aes'>8-. <aes c ees aes>-. |
	  s8 \clef treble <aes ees' ges>8-.[ <aes f' aes>-.] s8 |
	  s8 \clef treble <aes des f>8-.[ <aes ees' ges>-.] s8 |
	  s2
	} \\
	{
	  <aes,, aes'>8 s4. |
	  \clef bass <des des'>8-. s4 \clef bass <f, f'>8-. |
	  <aes aes'>8-. s4 \clef bass <aes aes'>8-. |
	  <des des'>8-. <aes aes'>-. <des des'>4
	}
  >> |
  <<
	{
	  s8 \clef treble <aes'' c ees aes>16[ <aes c ees aes>] <aes bes des aes'>8-. <aes c ees aes>-. |
	  s8 \clef treble <aes ees' ges>8-.[ <aes f' aes>-.] s8 |
	  s8 \clef treble <c ees aes>8[ <des ees bes'>8.--( <ees c'>16]
	  <aes, c ees aes>8-.)
	} \\
	{
	  <aes,, aes'>8 s4. |
	  \clef bass <des des'>8-. s4 \clef bass <des des'>8-. |
	  <ees ees'>8 s4. | s8
	}
  >>
  %
  % bar 230
  %
  \clef bass <ees, ees'>16 <ees ees'> <ees ees'>8-. <ees ees'>-. |
  <ges ges'>8-. <ees ees'>16 <ees ees'> <des des'>8( <ees ees'>) |
  <ges' ges'>8-. <ees ees'>16 <ees ees'> <des des'>8( <ees ees'>) |
  \repeat unfold 4 { <ges' ges'>-. <ees, ees'>-. } |
  <ces ges' ees'>8-.\arpeggio <ees' ges ces>16-.[ <ees ges ces>-.] <fes ges des'>8-. <ees ges ces>-. |
  <ces, ges' fes'>8 <ees' ges ces>16-.[ <ees ges ces>-.] <fes ges des'>8-. <ees ges ces>-. |
  \repeat unfold 4 { <ces, ges' fes'>-. <ees' ges ces>-. } |
  %
  % bar 239
  %
  <<
	{
	  s8 <ees ees'>16 <ees ees'> <d ees d'>8-. <des ees des'>-. |
	  s8 <ces ees ces'>16 <ces ees ces'> <bes ees bes'>8-. <aes ees' aes>-. |
	  s8 <g ees' g>16 <g ees' g> <aes ees' aes>8-. <bes ees bes'>-. |
	  <aes ees' aes>16 <g ees' g> <aes ees' aes> <bes ees bes'> <ces ees ces'>8-. <c ees c'>-. |
	  s8 <des des'>16 <des des'> <c des c'>8-. <ces des ces'>-. |
	  s8 <bes des bes'>16 <bes des bes'> <aes des aes'>8-. <ges des' ges>-. |
	  s8 <f des' f>16 <f des' f> <ges des' ges>8-. <aes des aes'>-. |
	  <ges des' ges>16 <f des' f> <ges des' ges> <aes des aes'> <bes des bes'>8-.
	} \\
	{
	  <ees,, ees'>8-. s4. |
	  \repeat unfold 2 {
		\ottava #-1
		\set Staff.ottavation = #"8"
		<ees ees'>8-.
		\ottava #0
		s4.
	  } |
	  s2 |
	  \repeat unfold 3 {
		\ottava #-1
		\set Staff.ottavation = #"8"
		<des des'>8-.
		\ottava #0
		s4.
	  } |
	  s4.
	}
  >>
  <<
	{
	  <bes'' bes'>16[ <bes bes'>] |
	  <bes bes'>8 s <a bes a'>8 <aes bes aes'>
	} \\
	{
	  s8 |
	  s8 bes,16 bes' s4
	}
  >> |
  <ges bes ges'>8[ <f bes f'> <ees bes' ees> <des bes' fes'>] |
  <c aes' ees'>8 <ees' aes c> <ees, ees'> <ees' g des'> |
  %
  % bar 250
  %
  <aes, c ees aes>8
  <<
	{
	  aes'16[ aes] aes8-. aes-. |
	  <aes des f aes>4_> <ges ees' ges>8-. <f des' f>-. |
	  <ees c' ees>4_> <f des' f>8-. <ees aes ees'>-. |
	  <des f aes des>4_> <ees aes ees'>8-. <f aes f'>-. |
	  <aes, aes'>8.->( <bes bes'>16 <aes aes'>8-.) s |
	} \\
	{
	  s4. |
	  s8
	  \ottava #-1
	  \set Staff.ottavation = #"8"
	  <aes, aes'>
	  \ottava #0
	  s4
	  |
	  \repeat unfold 2 {
		s8
		\ottava #-1
		\set Staff.ottavation = #"8"
		<aes aes'>
		\ottava #0
		s4
	  } |
	  s4.
	  \ottava #-1
	  \set Staff.ottavation = #"8"
	  <aes aes'>8-.
	  \ottava #0
	  |
	}
  >>
  <<
	{
	  <aes'' des f aes>4_> <ges ees' ges>8-. <f des' f>-. |
	  \clef treble <bes d f bes>4_> <f f'>8-. <d d'>-. |
	} \\
	{
	  s8 <aes, aes'> s4 |
	  s8 \clef bass <aes aes'> s4 |
	}
  >>
  <ees'' ees'>8_\markup { \small \bold \italic "staccato" } <aes,, aes'> <bes' bes'> <aes, aes'> |
  <<
	{ s8 <ges'' bes ees> } \\
	{ <ees, ees'>8 s8  }
  >> r4 |
  %
  % bar 259
  %
  <aes' aes'>8 <aes,, aes'> <ees'' ees'> <aes,, aes'> |
  <des' des'>8 <aes, aes'> <ces' ces'> <aes, aes'> |
  <bes' bes'>8 <aes, aes'> <beses' beses'> <aes, aes'> |
  <aes' aes'> <aes, aes'>16 <aes aes'> <des des'>8 <aes aes'> |
  \set Voice.beatLength = #(ly:make-moment 1 8)
  \set Voice.beatGrouping = #'(1 1 2)
  <ces ces'>8-. <des'  des'>16 <des des'> <des des'>8-. <ces,  ces'>-. |
  <bes bes'>8-. <des'  des'>16 <des des'> <des des'>8-. <bes,  bes'>-. |
  <aes aes'>8-. <des'  des'>16 <des des'> <des des'>8-. <aes,  aes'>-. |
  <ges ges'>8-. <des'' des'>16 <des des'> <des des'>8-. <ges,, ges'>-. |
  <aes aes'>8-. <bes'  bes'>16 <bes bes'> <bes bes'>8-. <aes,  aes'>-. |
  <ges ges'>8-. <bes'  bes'>16 <bes bes'> <bes bes'>8-. <ges,  ges'>-. |
  <f   f'  >8-. <bes'  bes'>16 <bes bes'> <bes bes'>8-. <f,    f'  >-. |
  <ees ees'>8-. <bes'' bes'>16 <bes bes'> <bes bes'>8-. <ees,, ees'>-. |
  %
  % bar 271
  %
  \unset Voice.beatLength
  \unset Voice.beatGrouping
  <<
	{
	  <a'' des a'>8 s <ges a ges'> s |
	  <f aes f'> s <d f d'> s |
	  <ees ges ees'> s <c ees c'> s |
	} \\
	{
	  s <aes, aes'> \repeat unfold 5 { s <aes aes'> }
	}
  >> |
  <des' f des'>8-. <g, des' fes bes>-. <aes c e aes>4-^
  <<
	{
	  <a' des a'>8 s <ges a ges'> s |
	  <f aes f'> s <d f d'> s |
	  <ees ges ees'> s <e g e'> s |
	  <e aes e'> s <f aes f'> s |
	  <ges bes ges'> s <g bes g'>
	} \\
	{
	  s <aes,, aes'> \repeat unfold 7 { s <aes aes'> } |
	  s <aes aes'> s
	}
  >> r8 |
  %
  % bar 280
  %
  \clef treble <g'' des' ees bes'>4 r8 <fis c' ees a> |
  <g des' ees bes'>8[ <fis c' ees a> <g des' ees bes'>] \clef bass <aes,, aes'> |
  \clef treble <aes'' ees' ges c>4 r8 <d f b> |
  <ees ges c>8[ <d f b> <ees ges c>] <c ees aes> |
  %
  % FIXME: Invisible bar inserts time step, hence adds horizontal space
  % c.f. http://code.google.com/p/lilypond/issues/detail?id=462
  %
  \cadenzaOn
  <aes' ees' ges c>4\arpeggio
%%  \once \override BarLine #'gap = #0.0
%%  \once \override BarLine #'kern = #0.0
%%  \once \override BarLine #'thin-kern = #0.0
  \bar ""
  <aes, ees' ges c>\arpeggio
  \bar ""
  \clef bass
  <aes, ees' ges c>\arpeggio
  \bar ""
%%  \tupletUp \times 16/22 
  \scaleDurations #'(16 . 22) { f'32[ ges aes bes c des ees \clef treble f ges aes bes c des ees \ottava #1 \set Staff.ottavation = #"8" f ges aes bes c des ees f] }
  \bar ""

  \scaleDurations #'(16 . 31) { ges[-> f ees des c bes aes ges f \ottava #0 ees des c bes aes ges f \clef bass ees des c bes aes ges f ees des c bes aes ges f ees] }
  \bar "|"
  \cadenzaOff
  |
  \ottava #-1 \set Staff.ottavation = #"8" <des, des'>8-^ \ottava #0
  r
  % forcefully shift 2nd voice and flat sign
  \once \override Accidental #'X-extent = #'(-3 . -3)
  \once \override NoteColumn #'force-hshift = #2
  <aes'' ees' ges!>8 r |

  <des, aes' f'>8 r
  \clef treble
  % forcefully shift 2nd voice and flat sign
  \once \override Accidental #'X-extent = #'(-3 . -3)
  \once \override NoteColumn #'force-hshift = #2
  \stemDown <aes'' ees' ges!>8 \stemNeutral r |

  \clef bass
  <des, aes' f'>8 r
  \clef treble
  % forcefully shift 2nd voice and flat sign
  \once \override Accidental #'X-extent = #'(-3 . -3)
  \once \override NoteColumn #'force-hshift = #2
  <aes'' ees' ges!>8 r |

  <des, des'>16 aes' f aes des aes des f |
  <aes, aes'>8-. r \clef bass <aes,, ees' aes>4 |
  <des, f aes des>8-> <ges ges'>16[ <f f'>] <e e'> <ees ees'> <d d'> <des des'> |
  <c c'> <b b'> <bes bes'> <a a'> <aes aes'>8 r |
  \ottava #-1
  \set Staff.ottavation = #"8"
  <des, des'>8->
  \ottava #0
  r <aes''' des f>8
  \ottava #-1
  \set Staff.ottavation = #"8"
  <des,,, des'>16[ <des des'>] |

  <des des'>4->\fermata r
}
