semprePP = \markup { \whiteout \concat { \normal-text \small \bold \italic "sempre "
	\dynamic "pp"
	\normal-text \small \bold \italic " e leggiero"
} }
semprePPDynamic = #(make-dynamic-script semprePP)

FFFbrioso = \markup { \whiteout \concat { \dynamic fff
  \normal-text \small \bold \italic { " brioso e marcatissimo, sempre staccato" }
} }
FFFbriosoDynamic = #(make-dynamic-script FFFbrioso)

crescDynamic = #(make-dynamic-script
	(markup #:normal-text #:small #:bold #:italic "crescendo")
)

crescsubitoDynamic = #(make-dynamic-script
	(markup #:normal-text #:small #:bold #:italic "cresc. subito")
)

menaF = \markup { \normal-text \small \bold \italic { "mena " } \dynamic f }
menaFDynamic = #(make-dynamic-script menaF)

dyn = {
  s2\pp | s2*5 |
  \once \override DynamicText #'self-alignment-X = #-1
  s2\semprePPDynamic |
  s2*14 |
  %
  % bar 22
  %
  \once \override DynamicText #'self-alignment-X = #-1
  s8\mp
  % FIXME: should treat "crescendo" as long cresc. spanner
  \once \override DynamicText #'self-alignment-X = #-1
  s4.\crescDynamic
  \crescTextCresc
  \set crescendoText = \markup { \small \bold "poco " }
  s8\< s4 s16 s\! |
  \set crescendoText = \markup { \small \bold "a " }
  s8\< s4 s16 s\! |
  \set crescendoText = \markup { \small \bold "poco " }
  s8\< s4. |
  s2*3 |
  s16\mp
  \set crescendoText = " "
  s4..\< |
  %
  % bar 30
  %
  s2*15 |
  % FIXME: should specify sfp as cresc text???
  s16\sfp s4..\< |
  s16\sfp s4..\< |
  s16\sf s8.\< s16\sf s8.\< |
  s16\sf s8.\< s16\sf s8.\< |
  %
  % bar 49
  %
  s2*16 |
  %
  % bar 65
  %
  s2\f | s2*6 | s8
  \crescHairpin
  \once \override Hairpin #'rotation = #'(5 -1 0)
  \once \override Hairpin #'Y-extent = #'(0 . 0)
  s4\< s16 s\! | s2*7
  %
  % bar 80
  %
  s8 s4.\sf | s2 |
  \once \override DynamicText #'self-alignment-X = #-1
  s2\sf |
  \once \override DynamicText #'self-alignment-X = #-1
  \once \override DynamicText #'Y-offset = #'-1
  s4\sf
  \once \override DynamicText #'Y-offset = #'1
  s\sf |
  \once \override DynamicText #'self-alignment-X = #-1
  \once \override DynamicText #'Y-offset = #'-1
  s\sf
  \once \override DynamicText #'Y-offset = #'1
  s\sf |
  % FIXME: why cresc text is not working?
  \crescTextCresc
  \set crescendoText = \markup { \small \bold "sempre cresc. " }
  s2\< |
  s2*15 |
  %
  % bar 101
  %
  \once \override DynamicText #'self-alignment-X = #1
  s2\ff |
  s2*6 |
  \crescHairpin
  s4..\< s16\! |
  %
  % bar 109
  %
  \once \override DynamicText #'self-alignment-X = #-1
  s2\FFFbriosoDynamic |
  s2*12 |
  s2\>_\markup { \small \bold \italic { "subito dim." } } | s4 s4\! |
  %
  % bar 124, Trio
  %
  s16*2/3\p s16*22/3\< |
  s16*22/3 s16*2/3\! |
  s2 |
  s8 s8\< s8. s16\! |
  s2\< |
  s16*22/3 s16*2/3\! |
  %
  % bar 130
  %
  s8.\< s16\! s8.\> s16\! |
  s8. s16\< s8. s16\! |
  s2\< |
  s4 s16*16/5 s16*4/5\! |
  s16*10/3\< s16*2/3\! s16*10/3\> s16*2/3\! |
  s2*3 |
  s8\< s8\! s8\> s8\! |
  s2 |
  %
  % bar 140
  %
  s16*20/3\< s16*4/3\! |
  s2 |
  s16*2/3\p s16*22/3\< |
  s16*22/3 s16*2/3\! |
  s2 |
  s4 s8.\< s16\! |
  s2\< |
  s16*22/3 s16*2/3\! |
  s8.\< s16\! s8.\> s16\! |
  s2 |
  %
  % bar 150
  %
  s2\< |
  s16*22/3 s16*2/3\! |
  s16*10/3\< s16*2/3\! s16*10/3\> s16*2/3\! |
  s2*6 |
  \override Hairpin #'to-barline = ##f
  s2\> |
  %
  % bar 160
  %
  \afterGrace s2 { s8\! } |
  s2\pp | s2*15 | s2\p | s2*3 |
  %
  % bar 181
  %
  s2\p |
  s4.\< s8\! |
  s4.\> s8\! |
  s2 |
  \once \override DynamicText #'self-alignment-X = #-1
  s2\pp |
  s2*15 |
  %
  % bar 201
  %
  s2\p |
  s2*4 |
  s4.\< s8\! |
  s4.\> s8\! |
  <<
	{ s4.\< s8\! } \\
	{
	  \once \override DynamicText #'self-alignment-X = #-1
	  %% FIXME how to align?
	  s4 s4\crescsubitoDynamic
	}
  >> |
  s2\ff |
  %
  % bar 210
  %
  s2*29 |
  %
  % bar 239
  %
  \once \override DynamicText #'self-alignment-X = #-1
  s2\fff |
  s2*2 |
  s4.\< s8\! |
  s2*3 |
  s4\< s4\! |
  s2*16 |
  %
  % bar 263
  %
  \once \override DynamicText #'self-alignment-X = #-1
  s2\menaFDynamic |
  s2*16 |
  %
  % bar 280
  %
  \once \override DynamicText #'self-alignment-X = #-1
  s2\ff |
  s2*11 s4 |
  \crescTextCresc
  \once \override DynamicTextSpanner #'dash-period = #-1.0
  \once \override DynamicText #'self-alignment-X = #-1
  s2\< | s2 |
  s4\! s4\fff |
  s2 ||


}
