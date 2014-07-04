\version "2.12.3"

\header {
  title = "Military March"
  subtitle = "Arrangement by C. Tausig"
  subsubtitle = "V. Horowitz RCA Recording Version (1985)"
  % piece = \markup { \large Allegro vivace }
  composer = "F. Schubert"
  enteredby = "Abel Cheung"
  maintainer = "abelcheung@gmail.com"
  mutopiatitle = "Military March"
  mutopiacomposer = "F. Schubert"
  mutopiainstrument = "Piano"
  style = "Romantic"
}

\paper {
  %% #(define dump-extents #t)
  #(set-paper-size "a4")
  between-system-padding = 3\mm
  page-limit-inter-system-space = ##t
  page-limit-inter-system-space-factor = 1.3
  indent = 0.2\in
  %% ragged-bottom = ##t
  ragged-last-bottom = ##t
}

naturalplusflat = \markup { \natural \hspace #1 \flat }

\include "lh.ly"
\include "dyn.ly"
\include "rh.ly"

\score
{
  \new PianoStaff <<

	\set PianoStaff.connectArpeggios = ##t

	\new Staff = "RH" <<
	  \override Score.RehearsalMark #'self-alignment-X = #-1
	  #(set-accidental-style 'piano 'Score)

	  \clef bass
	  \key des \major
	  \time 2/4

	  \once \override Score.RehearsalMark #'break-align-symbols = #'(time-signature)
	  \once \override Score.TimeSignature #'break-align-anchor-alignment = #LEFT

	  \mark \markup { \small \bold "Allegro vivace" }

	  \rh
	>>

	\new Dynamics << \dyn >>

	\new Staff = "LH" <<
	  \override Score.RehearsalMark #'self-alignment-X = #-1
	  #(set-accidental-style 'piano 'Score)

	  \key des \major
	  \time 2/4
	  \clef bass
	  \lh
	>>
  >>

  \layout
  {
	\context
	{
	  \type "Engraver_group"
	  \name Dynamics
	  \consists "Output_property_engraver"
	  \consists "Piano_pedal_engraver"
	  \consists "Script_engraver"
	  \consists "New_dynamic_engraver"
	  \consists "Dynamic_align_engraver"
	  \consists "Text_engraver"
	  \consists "Skip_event_swallow_translator"
	  \consists "Axis_group_engraver"
	  \override DynamicLineSpanner #'Y-offset = #0
	  \override VerticalAxisGroup #'minimum-Y-extent = #'(-1 . 1)
	  %% \override TextScript #'font-size = #1
	  \override TextScript #'font-shape = #'italic
	  \override PaperColumn #'keep-inside-line = ##t
	}

	\context
	{
	  \PianoStaff
	  \accepts Dynamics
	}
  }
}

