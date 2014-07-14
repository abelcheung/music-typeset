consordMarkup = \markup{
  \halign #CENTER
  \override #'(baseline-skip . 1)
  \center-column{ "con" "sord" }
}

midiDynamics = { \once \omit DynamicText }

% for use in instrument name
raisedFlat = \markup { \hspace #-.5 \raise #0.4 \smaller \flat }

% different kinds of cresc text
crescWithText =
#(define-music-function (parser location text) (string?)
   #{
     \set crescendoSpanner = #'text
     \once \override DynamicTextSpanner.text = #text
   #} )

octaveUp = { \ottava #1 \set Staff.ottavation = "8" }

% inverted downbow
% http://lists.gnu.org/archive/html/lilypond-user/2008-12/msg00576.html
ddownbowMarkup = \markup{ \rotate #180 \musicglyph #"scripts.downbow" }

ddownbow =
#(let* ((music (make-articulation "downbow"))
        (ddownbow (lambda(grob)
                    (grob-interpret-markup grob ddownbowMarkup))))
   (ly:music-set-property! music 'tweaks
     (acons 'stencil ddownbow
       (ly:music-property music 'tweaks)))
   music)

timeSigTwelveEight = {
  \time 12/8
  \set baseMoment = #(ly:make-moment 1 12)
  \set beatStructure = #'(3 3 3 3)
  \set beamExceptions = #'()
  \set Timing.measureLength = #(ly:make-moment 1 1)
}

timeSigRestore = {
  \time 4/4
  \unset baseMoment
  \unset beatStructure
  \unset beamExceptions
  \unset Staff.measureLength
}


% MIDI volume tuning
#(define my-instrument-equalizer-alist '())

#(set! my-instrument-equalizer-alist
       (append
        '(
           ("flute"    . (0.2 . 0.4))
           ("clarinet" . (0.2 . 0.4))
           ("violin"   . (0.2 . 0.4))
           ("viola"    . (0.2 . 0.4))
           ("cello"    . (0.2 . 0.4))
           ("contrabass" . (0.2 . 0.4)))
        my-instrument-equalizer-alist))

#(define (my-instrument-equalizer s)
   (let ((entry (assoc s my-instrument-equalizer-alist)))
     (if entry
         (cdr entry))))
