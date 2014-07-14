%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Prokofiev Piano Concerto No. 2, Op. 16, typesetted with Lilypond
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%% Note
%
% - Additional MetronomeMark on Violin I staff, so most tempo and marks
%   are added there. Tempo inside tempoTopOnly are for score context only.
%   Tried adding mark-only staff but won't work; metronome mark displays
%   successfully above violin staff, but other marks fail to show up.
%   Probably nothing can be done until issue 2199 can be fixed.
%   https://code.google.com/p/lilypond/issues/detail?id=2199


%%% Editorial notes
%
% - bar 10, Violin II additional staff, last div missing tie
% - bar 11, piano left hand, make last beam group kneed to compact staff
%

\version "2.19.0"

\header {
  title    = "SECOND PIANO CONCERTO"
  composer = "Serge Prokofiev"
  opus     = "Op. 16"
  
  subtitle = "I"
  
  enteredby  = "Abel Cheung"
  maintainer = "abelcheung On gmail Dot com"
  tagline    = ##f
}

% move to book block later if available
#(set-global-staff-size 14.14)

\paper {
  #(set-paper-size "a4")
  ragged-last = ##t
  ragged-bottom = ##t
  ragged-last-bottom = ##t
  system-separator-markup = \slashSeparator
}

% Input Shorthand, include before instruments
\include "common.ily"
\include "openlilylib-octaves.ily"
\include "openlilylib-merge-rests-engraver.ily"

% Individual instruments
\include "flute.ily"
\include "oboe.ily"
\include "clarinet.ily"
\include "bassoon.ily"
\include "hornU.ily"
\include "hornL.ily"
\include "trumpet.ily"
\include "tromboneU.ily"
\include "tromboneL.ily"
\include "timpani.ily"
\include "perc.ily"
\include "pianoU.ily"
\include "pianoDyn.ily"
\include "pianoL.ily"
\include "violinI.ily"
\include "violinII.ily"
\include "violinII-extra.ily"
\include "viola.ily"
\include "viola-extra.ily"
\include "cello.ily"
\include "dbass.ily"

\layout {
  
  indent = 2.0\cm
  short-indent = 1.0\cm

  % different time signatures can occur in various staves
  \context {
    \Score
    tempoHideNote = ##t
    instrumentEqualizer = #my-instrument-equalizer % from lilypond doc
    markFormatter = #format-mark-box-numbers
    \remove "Timing_translator"
    \remove "Default_bar_line_engraver"
    \accidentalStyle Score.modern-voice
    \override MetronomeMark.font-size = #2 % default tempo font too small
    \override MetronomeMark.outside-staff-padding = #2
    \override DynamicTextSpanner.style = #'none
  }
  
  \context {
    \Staff
    \consists "Timing_translator"
    \consists "Default_bar_line_engraver"
    \RemoveEmptyStaves
    \numericTimeSignature
  }
  
  \context {
    \RhythmicStaff
    \consists "Timing_translator"
    \consists "Default_bar_line_engraver"
    \RemoveEmptyStaves
    \numericTimeSignature
  }
  
  \context {
    \Dynamics
    \consists "Timing_translator"
    \consists "Default_bar_line_engraver"
    \RemoveEmptyStaves
  }

  \context {
    \Devnull
    \RemoveEmptyStaves
  }
  

}

\score {
  <<
    \new StaffGroup <<  % 1st group: Wind
    
      \new Staff \with {
        instrumentName = #"2 Flute"
        shortInstrumentName = #"Fl."
      } << \flute >>

      \new Staff \with {
        instrumentName = #"2 Oboe"
        shortInstrumentName = #"Ob."
      } << \oboe >>

      \new Staff \with {
        instrumentName = \markup {
          \center-column { "2 Clarinet" \line { "in B" \raisedFlat } }
        }
        shortInstrumentName = \markup { "Cl." \line { "in B" \raisedFlat } }
        midiInstrument = #"clarinet"
        \transposition bes
        \consists #merge-rests-engraver
        \consists #merge-mmrests-engraver
      } << \clarinet >>

      \new Staff \with {
        instrumentName = #"2 Bassoon"
        shortInstrumentName = #"Ba."
      } << \bassoon >>
    
    >> % end of Wind group
    
    \new StaffGroup <<  % 2nd group: Brass

      \new StaffGroup \with {
        \consists "Instrument_name_engraver"
        instrumentName = \markup { \center-column { "4 Horn" "in F" } }
        shortInstrumentName = \markup { \center-column { "Hn." "in F" } }
      } <<
        \new Staff \with {
          \override InstrumentName.self-alignment-X = #RIGHT
          instrumentName = #"1. 2."
          midiInstrument = #"french horn"
          \transposition f
        } << \hornU >>
        \new Staff \with {
          \override InstrumentName.self-alignment-X = #RIGHT
          instrumentName = #"3. 4."
          midiInstrument = #"french horn"
          \transposition f
        } << \hornL >>
      >>

      \new Staff \with {
        instrumentName = \markup { \center-column { "2 Trumpet" "in C" } }
        shortInstrumentName = \markup { \center-column { "Tpt." "in C" } }
      } << \trumpet >>

      \new StaffGroup \with {
        \consists "Instrument_name_engraver"
        instrumentName = #"3 Trombone"
        shortInstrumentName = #"Tbn."
      } <<
        \new Staff \with {
          \override InstrumentName.self-alignment-X = #RIGHT
          instrumentName = #"1. 2."
        } << \tromboneU >>
        \new Staff \with {
          \override InstrumentName.self-alignment-X = #RIGHT
          instrumentName = #"3. Tuba"
        } << \tromboneL >>
      >>

    >> % end of Brass group
    
    \new StaffGroup <<  % 3rd group: Percussion

      \new Staff \with {
        instrumentName = #"Timpani"
        shortInstrumentName = #"Timp."
      } << \timpani >>

      \new RhythmicStaff \with {
        \consists "Clef_engraver"
        instrumentName = #"Percussion"
        shortInstrumentName = #"Perc."
      } << \perc >>

    >> % end of Percussion group

    \new PianoStaff = "Piano" \with {
      \accidentalStyle piano
      instrumentName = #"Pianoforte"
      shortInstrumentName = #"Pfte."
      midiInstrument = #"acoustic grand"
      \consists "Dynamic_performer"
    } <<
      \new Staff = "PianoRH" << \pianoU >>
      \new Dynamics = "PianoDyn" << \pianoDyn >>
      \new Staff = "PianoLH" << \pianoL >>
    >>
    
    \new StaffGroup <<  % 4rd group: Strings

      \new Staff \with {
        instrumentName = #"Violin I"
        shortInstrumentName = #"Vl. I"
        midiInstrument = #"violin"
        \consists "Metronome_mark_engraver"
        \consists "Mark_engraver"
      } << \violinI >>
      
      \new StaffGroup \with {
        midiInstrument = #"violin"
      } <<
        \new Staff \with {
          instrumentName = #"Violin II"
          shortInstrumentName = #"Vl. II"
        } << \violinII >>
        \new Staff \with { % for div a 3
          \override VerticalAxisGroup.remove-first = ##t
        } << \violinII-extra >>
      >>

      \new StaffGroup \with {
        midiInstrument = #"viola"
      } <<
        \new Staff \with {
          instrumentName = #"Viola"
          shortInstrumentName = #"Va."
        } << \viola >>
        \new Staff \with {
          \override VerticalAxisGroup.remove-first = ##t
        } << \viola-extra >>
      >>

      \new Staff \with {
        instrumentName = #"Cello"
        shortInstrumentName = #"Vc."
        midiInstrument = #"cello"
      } << \cello >>

      \new Staff \with {
        instrumentName = #"Double Bass"
        shortInstrumentName = #"Db."
        midiInstrument = #"contrabass"
      } << \dbass >>

    >> % end of Strings group

  >>
  
  \layout { }
  \midi {
    \tempo 4 = 66
    \context {
      \Score
      midiChannelMapping = #'instrument
    }
  }
} % end score

