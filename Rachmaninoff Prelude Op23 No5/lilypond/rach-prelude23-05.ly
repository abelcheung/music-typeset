%%--------------------------------------------------------------------
% LilyPond typesetting of Rachmaninoff Prelude Op. 23 No. 5
%%--------------------------------------------------------------------

%----- Notes ---------------------------------------------------------
% - Intentionally choose devel version of lilypond to alleviate tuplet
%   display problems. Or use lilypond 2.18 and check out bar 36, 38, 41 etc

%----- Known problems ------------------------------------------------
% - Maybe someone want to tell me what happened with the staccato in bar 23/70


%%--------------------------------------------------------------------
% The Mutopia Project
% LilyPond template for keyboard solo piece
%%--------------------------------------------------------------------

% Due to https://code.google.com/p/lilypond/issues/detail?id=3304
% some tuplets rendered from older lilypond (including 2.18.2) are
% completely broken (overlapping notes etc)
\version "2.19.1"

\include "easy-octaves.ily"

%---------------------------------------------------------------------
%--Paper-size setting must be commented out or deleted upon submission.
%--LilyPond engraves to paper size A4 by default.
%--Uncomment the setting below to validate your typesetting
%--in "letter" sizing.
%--Mutopia publishes both A4 and letter-sized versions.
%---------------------------------------------------------------------
% #(set-default-paper-size "letter")

%--Default staff size is 20
% #(set-global-staff-size 20)

\paper {
  top-margin = 8\mm                              %-minimum top-margin: 8mm
  top-markup-spacing.basic-distance = #6         %-dist. from bottom of top margin to the first markup/title
  markup-system-spacing.basic-distance = #5      %-dist. from header/title to first system
  top-system-spacing.basic-distance = #12        %-dist. from top margin to system in pages with no titles
  last-bottom-spacing.basic-distance = #12       %-pads music from copyright block
  
  ragged-last = ##t
  ragged-bottom = ##t
  ragged-last-bottom = ##t
  
  % debug-slur-scoring = ##t
}

%---------------------------------------------------------------------
%--Refer to http://www.mutopiaproject.org/contribute.html
%--for usage and possible values for header variables.
%---------------------------------------------------------------------
\header {
  title = "Prelude V"
  composer = "Sergei Rachmaninoff (1873-1943)"
  opus = "Op. 23, No 5"
  date = "1903"
  style = "Romantic"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  %% Gutheil edition on IMSLP is also cross-referenced
  source = "Muzyka [1966]"
 
  maintainer = "Abel Cheung"
  maintainerEmail = "abelcheung at gmail dot com"
  mutopiatitle = "Prelude Op. 23"
  mutopiaopus = "Op. 23"
  mutopiacomposer = "RachmaninoffS"
  mutopiainstrument = "Piano"
 
 
  % Footer, tagline, and copyright blocks are included here for reference
  % and spacing purposes only.  There's no need to change these.
  % These blocks will be overridden by Mutopia during the publishing process.
  footer = "Mutopia-2014/01/01-1234"
  copyright = \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9 "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2014 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans { " " \with-url #"http://creativecommons.org/licenses/by-sa/3.0/" "Creative Commons Attribution ShareAlike 3.0 (Unported) License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
  tagline = ##f
}

%------- Util functions and shorthand

% Fool layout engravers by moving dynamics to temporary location, so
% layout engine thinks staffs are better packed. Afterwards, move dynamics
% to truly appropriate location afterwards
moveDynamics =
#(define-music-function
  (parser location tempX realXY)
  (number? number-pair?)
  (let ((dest (cons (- (car realXY) tempX) (cdr realXY))))
  #{
    \once \override DynamicText.X-offset = #tempX
    \once \override DynamicText.extra-offset = #dest
    \once \override DynamicText.whiteout = ##t
  #} ))

voiceOffBeatBeaming = {
  \set Voice.baseMoment = #(ly:make-moment 1 8)
  \set Voice.beatStructure = #'(1 2 2 2 1)
  \set Voice.beamExceptions =  #'()
}

unsetVoiceOffBeatBeaming = {
  \unset Voice.baseMoment
  \unset Voice.beatStructure
  \unset Voice.beamExceptions
}

hshift = { \once \override NoteColumn.force-hshift = #1.6 }

% Relax requirement so kneed beam is always possible
kneed-beam = { \once \override Beam.auto-knee-gap = #0 }

% Convenience func for staff switching
%
toLH = { \change Staff="LH" \voiceOne  }
toRH = { \change Staff="RH" \voiceFour }
showToRH =
#(define-music-function (parser location music) (ly:music?)
   #{
     % by default latter part is hidden after line break
     \once \override VoiceFollower.after-line-breaking = ##t
     \showStaffSwitch \toRH $music \hideStaffSwitch
   #} )

showToLH =
#(define-music-function (parser location music) (ly:music?)
   #{
     \once \override VoiceFollower.after-line-breaking = ##t
     \showStaffSwitch \toLH $music \hideStaffSwitch
   #} )

%-------- The following funcs are for repeatedly adding articulation

#(define tied? #f)

#(define (check-tie e)
   (if (eq? 'TieEvent (ly:music-property e 'name))
       (set! tied? #t)))

% Idea from http://lists.gnu.org/archive/html/lilypond-user/2008-06/msg00019.html
#(define (add-articulation articulation m)
   (let (
          (name    (ly:music-property m 'name))
          (es      (ly:music-property m 'elements))
          (e       (ly:music-property m 'element))
          (ar-list (ly:music-property m 'articulations))
          (ar      (make-music 'ArticulationEvent 'articulation-type articulation)))
     (cond
      ((ly:music? e)
       (if (not (eq? name 'GraceMusic)) (add-articulation articulation e)))
      ((eq? name 'TieEvent) (set! tied? #t))
      ((list? es)  ; including case where elements property doesn't exist
        (cond
         ((eq? name 'EventChord)
          (begin
           (if (and (not tied?)
                    ; no very reliable way to determine if an EventChord contains notes
                    ; but enough for use here
                    (or (ly:duration? (ly:music-property m 'duration))
                        (memq 'NoteEvent
                          (map (lambda(x) (ly:music-property x 'name)) es))))
               ; Attaching same articulation multiple times is not harmful, so
               ; not bother checking if accent already exists. Same below.
               (ly:music-set-property! m 'elements
                 (append es (list ar))))
           (set! tied? #f)
           (for-each check-tie es)))
         ((eq? name 'NoteEvent)
          (begin
           (if (not tied?)
               (ly:music-set-property! m 'articulations
                 (append ar-list (list ar))))
           (set! tied? #f)
           (for-each check-tie ar-list)))
         (else (if (not (null? es))
                   (for-each
                    (lambda(x) (add-articulation articulation x)) es))))))))


% for supported articulation list, see lilypond doc section A.13
addArticulation =
#(define-music-function (parser location articulation mus)
   (string? ly:music?)
   "Add same articulation to all notes except rests, grace and tied notes"
   (set! tied? #f)
   (for-each
    (lambda(x) (add-articulation articulation x))
    (ly:music-property mus 'elements))
   ; (display-scheme-music mus)
   mus
   )


%------- Right hand parts

RHpatA = { % bar 1 - start of bar 4, 10 - start of 13
           <<
             \relative c' {
               \voiceOffBeatBeaming

               s8 <bes d>16 q q8 s s \tag #'clefchange \clef treble q s q |
               s q16 q q8 s s \tag #'clefchange \clef treble q s q |
               s q16 q q8 s r <g' bes>16 q q8 r |
               r <bes d>16 q q8
             } \\
             \relative c' {
               \set Voice.beamExceptions =
               #'((end . (((1 . 16) . (2 4 4 4 2)))))
      
               \addArticulation "portato" {
                 g8 s s \tag #'clefchange \clef bass bes, d s bes' s |
                 g
               } s s \tag #'clefchange \clef bass a,16 ( bes d8-> ) s \clef treble bes'-_ s |
               g-_  s s d'16 ( f g4.-> ) bes,16 ( d |
               f4.-> )
             }
           >>
}

RHpatB = \relative c'' { % bar 17-24, 64-71
  \set baseMoment = #(ly:make-moment 1 8)
  \set beatStructure = #'(1 2 2 1 2)  % not typo
  \set beamExceptions =  #'()
  <bes ees g bes>8->
  \addArticulation "staccato" {
    <g bes ees g>16 q q8  <g, bes ees g>16 q q8  <g' bes ees g>
  }
  <bes g' bes>16 ( C D Es |
  <d bes' d>8-> )
  \addArticulation "staccato" {
    <f, bes d f>16 q q8   <f, bes d f>16 q q8    <f' bes d f>
  }
  <d' bes' d>16 ( e' F, g' |
  <f, d' f>8-> )
  \addArticulation "staccato" {
    <a, d f a>16 q q8     <a, d f a>16 q q8      <f' a d f>8
  }
  <a f' a>16 ( b' C, d' |
  <c, a' c>8-> )
  \addArticulation "staccato" {
    <a c f a>16 q q8      <c, f a c>16 q q8      <a' c f a>8
  }
  <c aes' c>16 ( d' Es, f' |

  \set beatStructure = #'(1 2 2 2 1)
  <ees, c' ees>8-> ) \relative c' { <c g'>16-. q-. q8-. }
  Es16 ( F <g bes d g>8-> ) \relative c' { <d g>16-. q-. q8-. }
  d'16 ( g |
  <a, d a'>8^> )
  \addArticulation "staccato" {
    <d, e a>16 q q8  <d, e a>16 q q8  \clef bass <cis, g' a>16 q q8
  }
  
  \unset beamExceptions
  \unset baseMoment
  \unset beatStructure

  <<
    \relative c''' {
      s8 |
      r8 \stemDown
      \addArticulation "staccato" {
        <a d fis a>16
        \repeat unfold 3 { <a d fis a> q <bes d fis bes> q }
        <a d fis a>
      }
    } \\
    \relative c' {
      \clef treble \stemUp g16 ( a |
      D,1-\tweak extra-offset #'(0 . -3.5) -\tweak whiteout ##t ^> )
    }
  >> |
  \addArticulation "staccato" {
    <a'''='' d fis a>8\noBeam Fis16 Es D C Bes A Fis Es D C Bes A
  }
  fis'-> ( d ) |
}

RH = \relative c' {
  \removeWithTag #'clefchange \RHpatA

  <<
    \relative c'' {
      \voiceOffBeatBeaming

      r8 r <g c g'>16 q q8 r |
      \barNumberCheck 5
      r <fis d' fis>16 q q8 r s <g, d' e> s <bes d e> |
      r <d fis d'>16 q q8 s s \clef treble <g, d' e> s <bes d e> |
      r <d fis d'>16 q q8
    } \\
    \relative c' {
      \set Voice.beamExceptions =
      #'((end . (((1 . 16) . (2 4 4 4 2)))))
      
      bes16 ( d ees4.-> ) g,16 ( a |
      \barNumberCheck 5
      d4. -\tweak whiteout ##t -\tweak extra-offset #'(0 . -4) ^> )
      fis,8-_ bes-_ s g-_ s |
      d4.-> \clef bass fis,16 ( a bes8-> ) s g'-_ s |
      d4.->
    }
  >>

  <fis,= a>16 ( bes <c g ees>8->[ )
  \addArticulation "staccato" {
    <ees c g>] <a ees c a> <fis d a> |
    <g d g,> <bes d, bes>
  } <a d, c>16-- ( q <bes d, bes>8-. )
  <fis d a>-. <g d g,>-. <ees cis g>16-> q-. q8-. |
  <e cis g>-. <fis d fis,>-. d,-> r |
  
  \barNumberCheck 10
  \RHpatA
  <<
    \relative c' {
      \voiceOffBeatBeaming
      
      r8 r <fis bes ees>16 q q8 r |
      r <fis d' fis>16 q q8 r r <bes g' bes> 16 q q8 r |
      s s <a ees' a>-.[ <fis d' fis>-. <g d' g>->] s s <ees g ees'>-. |
      s <fis c a>-. <g bes, g>->
    } \\
    \relative c' {
      \set Voice.beamExceptions =
      #'((end . (((1 . 16) . (2 4 4 4 2)))))
      
      f16 ( a bes4.-> ) d,16 ( fis |
      a4.-> ) a16 ( c d4.-> ) d,8-. |
      cis-.[ c-.] s s s bes-.[ b-.] s |
      c-. s4
    }
  >>
  r8 |
  
  \barNumberCheck 17
  \RHpatB
  
  \barNumberCheck 25
  
  <<
    \relative c'' {
      \voiceOffBeatBeaming
      
      \repeat unfold 2 { r8 <g bes d>16 q q8 r s q s q } |
      r8 q16 q q8 r r <g bes>16 q q8 r |
      r <bes d>16 q q8 r r <g c g'>16 q q8 r |
      
      \barNumberCheck 29
      r <fis d' fis>16 q q8 r r \clef treble <ees fis a ees'>4-> r8 |
      r  \clef treble <ees g b ees>4-> r8 r \clef treble <d g d'>4-> r8 |
      r  \clef treble q16 q q8 r s2 |
      r8 \clef treble q16 q q8 r r <d g,>16 q q8 r |
      r <d fis,>16 q q8
    } \\
    \relative c' {
      g4.-\tweak extra-offset #'(0 . -4.25) -\tweak whiteout ##t ^>
      bes8-_ d-_ s bes-_ s |
      g4.-> bes8-_ d-_ s bes-_ s |
      g4.-> d'16 ( f g4.-> ) bes,16 ( d |
      f4.-> ) bes,16 ( d ees4.-> ) g,16 ( a |
      
      \barNumberCheck 29
      % EDITION NOTE: both Gutheil and Muzyka editions seems to miss a few
      % staccato here.
      % Muzyka: both c notes on left / right hand
      % Gutheil: b natural on left hand
      d 4.->)\clef bass c   8-. d,4.-> \clef bass b'8-. |
      d,4.-> \clef bass bes'8-. d,4.-> \clef bass a'8-. |
      d,4.-> \clef bass \addArticulation "staccato" { a'8 d, gis d g } |
      d 4.-> \clef bass g   8-. d 4.-> fis8-. |
      d 4.->
    }
  >>
  
  \set baseMoment = #(ly:make-moment 1 8)
  \set beatStructure = #'(1 2 1 1 2 1)
  \set beamExceptions = #'()
  r8 r <fis= d'>16 q q8 r |
  \repeat unfold 2 { r8 d16 d d8 r } |
  
  \unset baseMoment
  \unset beatStructure
  \unset beamExceptions
  
  \barNumberCheck 35
  <<
    \relative c'' {
      r8 \clef treble \addArticulation "tenuto" {
        <a d fis a> \( q <bes d fis bes> <c d fis c'>4 Bes8
      } A |
      G A Bes4-- \) Fis-- ( A ) |
  
      r8 \addArticulation "tenuto" {
        <a d fis a> \( q <bes d fis bes> C4 Bes8
      } A |
      G A Bes4-- \) Fis-- ( A ) |
      r8 \addArticulation "tenuto" {
        Bes ( <d g bes> C D4 C8
      } Bes ) |
      C8-- ( D Es4~ q8 ) E ( Fis G ) |
      
      \barNumberCheck 41
      Fis, ( G <d' a'~>2 <cis a'>4 ) |
      r8 \addArticulation "tenuto" {
        <fis a>8 ( q8 <bes, d fis bes> <c d fis c'>4 Bes8
      } A |
      G8-- A Bes4-- ) <fis c' d fis>8-- ( G <a c d a'>4 ) |
      
      \barNumberCheck 44
      r8 \addArticulation "tenuto" {
        <fis' a>8 ( q8 <bes, d fis bes> <c ees g c>4 Bes8
      } A |
      G8-- A Bes4-- ) <fis c' d fis>8-- ( G <a c d a'>4 ) |
      r8 Bes ( <d g bes> C <d aes' bes d>4 ) C8 ( Bes ) |
      
      \barNumberCheck 47
      <c ees c'>[ ( D] Es[ F] ) G ( A4 Bes8 ) |
      Fis, ( A C4 ) Fis,8 ( A B4 ) |
      Fis8 ( G Bes2 ) <g a a'>4
        
    } \\
    \relative c'' {
      s2. <d fis>4 |
      <c ees>2 <c d> |
      s2 <ees g>4 <c ees> |
      <cis e>2 <c d> |
      s2 <g' bes>4 g |
      <g bes>4 q2 <a e'>4 |
      
      \barNumberCheck 41
      <a, d> a ( g2 ) |
      s8
      
      % FIXME: should shorten stem or not?
      a16 _( c d4-- ) s <d fis> |
      <c ees>4
      % guarantee tenuto on LH won't be mistaken to belong to RH note
      \hshift q s2 |
      
      \barNumberCheck 44
      s8 a16 _( c d4-- ) s \hshift <c ees> |
      <cis e>4 \hshift q s4. a16 ( c |
      <d, bes' d>2-- ) r8 d'-- ees-- f-- |
      s4 <g bes> <bes d>2 |
      
      \barNumberCheck 48
      % FIXME tie needs whiteout
      s2 dis,2--~ |
      % FIXME Where is this tie going after line break !!!!?????
      dis4 <d e>-- ( <cis f>-- <cis fis>-- )
      
    } \\
    \relative c' {
      \voiceFour
      s1 |
      s2. r8 a16 ( c~ |
      <d c fis,>2-- ) s2
      s2. r8 a16 ( c |
      <bes d>2-- ) s2 |
      s1*4 |
      \barNumberCheck 44
      <fis c'>1--
    }
  >> |
  
  \barNumberCheck 50
  <<
    \relative c' {
      \voiceOffBeatBeaming
      s8
      \repeat unfold 2 { <d=' fis d'>16 q q8 s s <e d g,> s <e d bes> | s }
      <d fis d'>16 q q8 s r <d g>16 q q8 r |
      r <d gis>16 q q8 r r a' r a |
      r <g bes>16 q q8 r s q s q |
      s q16 q q8 s s q s q |
      s q16 q q8 s r <c, g' c>16 q q8 r |
      r <cis g' cis>16 q q8 s s <d g d'> s q |
      s <g c ees g>16 q q8 s s q s <aes c ees aes> |
      s <a c ees a>16 q q8 s s <g c ees g> s <a c ees a> |
      r <bes ees bes'>16 q q8 r r <d g d'>16 q q8 r
    }
    \\
    \relative c {
      d=8
      \repeat unfold 2 { s s \addArticulation "staccato" { fis bes s g s | d } }
      s s d'-. ees,4.-- d'8-. |
      e,4.-- \addArticulation "staccato" { d'8 f, d' fis, d' } |
      g,4.-- \addArticulation "staccato" {
        bes8 d s bes s |
        g s s bes d s bes s |
        g s s g'
      }
      aes,4.-- g'8-. |
      a,4.--
      \addArticulation "staccato" {
         g'8 bes, s b s |
         \repeat unfold 2 { c s s ees g s ees s | }
      }
      cis4.-> bes'8-. d,4.-> bes'8-.
    }
  >> |
  
  \barNumberCheck 61
  <<
    \relative c'' {
      r8 d-- ( cis ) <bes g' bes>4-> D8-- ( Cis) <g' bes cis g'>->
    }
    \\
    \relative c'' {
      \voiceOffBeatBeaming
      s8 <bes g>4 d8-- ( cis ) <g' bes>4-> s8
      \unsetVoiceOffBeatBeaming

    }
    \\
    \relative c' { \voiceFour e2.-> r4 }
  >> |
  
  r8 <bes'''='' d g bes>16 q q q q q q8\noBeam
  <d, bes' d>-> <e bes' e>-> <fis d' fis>-> |

  % bar 63
  \set baseMoment = #(ly:make-moment 1 8)
  \set beatStructure = #'(1 2 2 2 1)
  \set beamExceptions = #'()
  <g d' g>8-> <d, g d'>-> <ees c' ees>->
  aes,-. a-. <a c fis>-> <bes d g>-> r |
  
  \barNumberCheck 64
  \RHpatB
  
  \barNumberCheck 72
  <<
    \relative c'' {
      \set baseMoment = #(ly:make-moment 1 8)
      \set beatStructure = #'(1 2 1 2 2)
      \set beamExceptions = #'()
      s8 <g bes d g>16 q q8 s
      r <g bes d>16 <g bes ees> q <g bes e> q8 |
      s8 <f bes d f>16 q q8 s
      r <g bes c>16 <g bes cis> q <g bes d> q8 |
      
      \set beatStructure = #'(1 2 1 1 2 1)
      r <g bes ees>16 q q8 r r <d g d'>16 q q8 r |
      r <cis g' cis>16 q q8 r s <c a' c> s <b f' b> |
      
      \barNumberCheck 76
      \set beatStructure = #'(1 2 1 2 2)
      s <c ees g c>16 q q8 s
      r <c ees g>16 <c ees aes> q <c ees a> q8 |
      s <ees bes'>16 q q8 s
      r <c ees f>16 <c ees fis> q <c ees g> q8 |
      
     \set beatStructure = #'(1 2 2 2 1)
      r <c ees aes>16 q q8 r r <c ees g>16 q q8 r |
      r <c ees fis>16 q q8 r r <c d fis>16 q q8 r
    }
    \\
    \relative c' {
      g8-> s4 a16 ( bes d2-> ) |
      g,8-> s4 a16 ( bes d2-> ) |
      g,4.-- ees'8-. g,4.-- e'8-. |
      g,4.-- \addArticulation "staccato" { f'8 g, fis' g, g' } |
      
      \barNumberCheck 76
      g,8-. s4 b16 ( c ees2-> ) |
      g,8 s4 a16 ( bes ees2-> ) |
      g,4.-- aes'8-. g,4.-- a'8-. |
      ees,4.-- bes''8-. d,,4.-- D'8-.
    }
  >> |
  
  \barNumberCheck 80
  \set baseMoment = #(ly:make-moment 1 8)
  \set beatStructure = #'(1 2 2 1 2)
  \set beamExceptions = #'()
  \voiceTwo g=8-. \oneVoice
  <g bes g'>16 q q8 <g cis ees>16 q q8
  <g cis e> r <fis c' d fis> |
  r <bes g'>16 q q8 <g cis ees>16 q q8
  <g cis e> r <fis c' d fis> |
  
  \set beatStructure = #'(1 2 2 2 1)
  r <g bes g'>16 q q8 \clef bass
  a,16 ( bes d8-> ) <f bes d>-. <fis c' d>-. r |
  r <g bes>16 q q8 r r <d f>-. <d fis>-. r |
  
  \barNumberCheck 84
  \unset baseMoment
  \unset beatStructure
  \unset beamExceptions
  
  r8 g,16 ( a bes d a d
  <bes g'> d g ) g ( bes d a d |
  \clef treble
  <bes g'> d g ) g ( bes d a d
  <bes g'> d g ) g ( bes d a d |
  <bes g'>8 ) r g,-. r r2

}

%------- Left hand parts

% bar 1-3 + first part of bar 4
LHpatA = {
  <<
    \relative c {
      \voiceOffBeatBeaming

      s8 <d g>16 q q8 s s q s q |
      s q16 q q8 s s q s q |
      s q16 q q8 s r <d bes' d>16 q q8 r |
      r q16 q q8
    } \\
    \relative c, {
      \set Voice.beamExceptions =
      #'((end . (((1 . 16) . (2 4 4 4 2)))))
      
      G8-_ s s bes-_ d-_ s Bes-_ s |
      G-_  s s a16 ( bes d8-> ) s Bes-_ s |
      G-_  s s d''16 ( f G,4.-> ) bes16 ( d |
      F,4.-> )
    }
  >>
}

LHpatX = \relative c' { % bar 17-24, 64-71
  \set baseMoment = #(ly:make-moment 1 8)
  \set beatStructure = #'(1 2 2 1 2)
  \set beamExceptions =  #'()

  <g bes ees g>8->
  \addArticulation "staccato" {
    <g bes ees>16 q q8 <ees, bes'>16 q q8 <g' bes ees>
  }
  <g bes>16 ( c d ees |
  <d bes f>8-> )
  \addArticulation "staccato" {
    <d bes f>16 q q8 <bes, bes,>16 q q8 <d' bes f>
  }
  q16 ( e f g |
  <f d a>8-> )
  \addArticulation "staccato" {
    <f d a f>16 q q8 <a,, d,>16 q q8 <f' a d>
  }
  <f a>16 ( b c d |
  <c a f>8-> )
  \addArticulation "staccato" {
    <f c a f>16 q q8 <c, f,>16 q q8 <c' a f>8
  }
  <c aes f>16 ( d ees f |
  
  \set beatStructure = #'(1 2 2 2 1)
  <ees c g>8-> ) <ees, g,>16 ( c, <ees' g,>8 )
  ees'16 ( f <g d bes>8-> ) <g, bes,>16 ( ees, <g' bes,>8 )
  d'16 ( g |
  <a e a,>8_> )
  \addArticulation "staccato" {
    <g e a,>16 q q8 <g, e a,>16 q q8 <e, a,>16 q q8
  }

  \unset beamExceptions
  \unset baseMoment
  \unset beatStructure

  <<
    \relative c {
      s8 |
      b8\rest \clef treble
      \addArticulation "staccato" {
        <a' d fis a>16
        \repeat unfold 3 { <a d fis a> q <bes d fis bes> q }
        <a d fis a>
      }
    } \\
    \relative c { \stemUp g,16 ( a | D,1-> ) }
  >> |
  \addArticulation "staccato" {
    <a'= d fis a>8\noBeam fis'16 ees d c \clef bass bes a
    fis ees d c bes a
  }
  fis-> ( d ) |
}

LHpatB = \relative c, { % common LH pattern for middle section
  \once \override PhrasingSlur.eccentricity = #1.5
  \tuplet 6/4 4 {
    d16 ^\( a' d fis c' d fis d c fis, d a \)
  }
}

LHpatC = \relative c, { % common LH pattern for middle section
  \once \override PhrasingSlur.eccentricity = #1.5
  \tuplet 6/4 4 {
    d16 \( a' d g c ees g ees c g d a \)
  }
}

LH = \relative c {
  \LHpatA
  <<
    \relative c' {
      \voiceOffBeatBeaming

      r8 r <g a c>16 q q8 r |
      \barNumberCheck 5
      r <fis a d>16 q q8 s s <d e> s q |
      f8\rest <a fis a,>16 q q8 s s <e d> s q |
      r <a fis a,>16 q q8
    } \\
    \relative c {
      \set Voice.beamExceptions =
      #'((end . (((1 . 16) . (2 4 4 4 2)))))
      
      bes16 ( d Es,4.-> ) g16 ( a |
      \barNumberCheck 5
      D,4.-> ) Fis,8-_ Bes-_ s G-_ s |
      D4.-> fis16 ( a bes8-> ) s G-_ s |
      D4.->
    }
  >>
  D,8-. C-. Bes16 ( A Fis8-> )
  \addArticulation "staccato" {
    C' |
    Bes E, Fis G C Bes
  } <ees bes'>16-> q-. q8-. |
  Bes-. A-. d-> D,-. |
  
  \barNumberCheck 10
  \LHpatA

  <<
    \relative c {
      \voiceOffBeatBeaming
      
      r8 r <fis bes ees>16 q q8 r |
      r <fis d'>16 q q8 r r <bes d g>16 q q8
      % NOTE: on Muzyka edition this rest is completely absent
      r |
      s s <a ees' fis>-.[ <fis a d>-. <g d'>->] s s <ees g>-. |
      s D,-.[ G,->]
    } \\
    \relative c {
      \set Voice.beamExceptions =
      #'((end . (((1 . 16) . (2 4 4 4 2)))))
      
      f16 ( a Bes,4.-> ) d16 ( fis |
      A,4.-> ) A16 ( C D4.-> ) D,8-. |
      Cis-.[ C-.] s s s Bes-.[ B-.] s |
      C-. s4
    }
  >>
  r8 |
  
  \barNumberCheck 17
  \LHpatX
  
  \barNumberCheck 25
  <<
    \relative c {
      \voiceOffBeatBeaming
      \repeat unfold 2 { f8\rest <d g bes d>16 q q8 r s q s q } |
      f8\rest q16 q q8 r
      \repeat unfold 2 { r <d bes' d>16 q q8 r }
      r <g a c>16 q q8 r |
      r <fis a d>16 q q8 r r <c fis a c>4-> r8 |
      
      \barNumberCheck 30
      r <b ees g b>4-> r8 r <bes d g bes>4-> r8 |
      r <a d g a>16 q q8 r s2 |
      r8 <a d g>16 q q8 r r <a d>16 q q8 r |
      r q16 q q8 r
    } \\
    \relative c, {
      \repeat unfold 2 { G4.-> Bes8-_ D-_ s Bes-_ s } |
      G4.-> d''16 ( f G,4.-> ) bes16 ( d |
      F,4.-> ) bes16 ( d Es,4.-> ) g16 ( a |
      % EDITION NOTE: see right hand part
      D,4.-> ) c'   8-. D,,4.-> b''8-. |
      
      \barNumberCheck 30
      D,,4.->  bes''8-. D,,4.-> a''8-. |
      D,,4.-> \addArticulation "staccato" {
        a''8 \temporary \stemUp D,, gis' D, g'
        \revert Stem.direction
      } |
      D,4.-> g'8-. D,4.-> fis'8-. |
      D,4.-> a''8-.
    }
  >>
  \repeat unfold 2 { d'=,4.-- a'8-. } d,4.-- D,16-. q-. |
  
  \barNumberCheck 35
  \once \override PhrasingSlur.eccentricity = #1
  \tuplet 6/4 4 { q16 \( a'' d fis c' d fis d c fis, d a \) }
  \LHpatB |
  \LHpatC \LHpatB |
  \LHpatB \LHpatC |
  \tuplet 6/4 4 { \once \stemDown d,=, \( a' g' a bes cis g' cis, bes g a, d,~ \) }
  \LHpatB |
  <<
    \relative c {
      \tuplet 6/4 4 {
        g ( d' g bes \clef treble d g
        bes g d \clef bass bes g d )
      }
    } \\
    \relative c'' { s4 bes8 s8 }
  >>
  \tuplet 6/4 4 {
    f=,16 ( d' g a bes d g d a g d f, ) |
    ees ( bes' g' bes ees f g ees bes g bes, ees, )
    d ( bes' g' a bes g' ) cis,,, ( a' g' a g' a ) |
    \barNumberCheck 41
    d,,, ( a' d g a d ) fis, ( a d fis e fis
    e d e d a d )
  }

  <<
    \relative c' {
      
      a8-- bes-- |
      
      %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
      %
      %    HHHHHHHHHH EEEEEEEEEE LLLLLLLLLL LLLLLLLLLL
      %
      \barNumberCheck 42
      
      % attach-dir can be any integer, meaning how many steps to left or right
      % of notehead center
      \once \override VoiceFollower.bound-details =
      #'((right (padding .   0) (attach-dir . -3))
         (left  (padding . 2.8) (attach-dir . -1)))
      
      % Allow tie to curve more, moving away from right hand slur
      \once \override Tie.details.height-limit = #2.5
      
      % Note order is important, cross staff line would attach to wrong note
      \showToRH <fis c'!_~ >2_-
      
      \kneed-beam c'8
      \toLH
      d-- e-- fis-- |
      
      % Both Gutheil and Muzyka edition don't look good here visually.
      % For Gutheil edition is basically \tweak self-alignment-X #CENTER,
      % so the "d." is above notehead
      % Muzyka edition is worse. Since staff-staff distance is smaller,
      % stem is shortened in extreme manner; "m.d." is forcefully
      % stuffed in between the stems; and one of the tenutos can be
      % mistaken as ledger line!
      g4--
        -\tweak side-axis #0
        -\tweak X-offset #2
        -\markup{\italic "m.d."}
      fis8--
      \toRH
      \kneed-beam g_-
      \once \override NoteColumn.force-hshift = #-0.3
      \scaleDurations 1/2 { a2_- }
      
      % FIXME the line position tweak is highly dependent on
      % auto layout decisions
      \once \override VoiceFollower.bound-details =
      #'((right (padding . 5.5) (attach-dir .  7))
         (left  (padding . 5.5) (attach-dir . -7)))

      \showToLH a,8--
      bes-- |
      
      \barNumberCheck 44
      \toRH
      \once \override Tie.details.height-limit = #2.5
      
      % Create tie using hidden note that completely overlaps with
      % real note. Somehow downward stem is causing trouble.
      \once \override NoteColumn.force-hshift = #0
      \hideNotes \once \stemUp <c_~ fis,>2 \unHideNotes
      
      \kneed-beam c8
      \toLH
      d-- ees-- f-- |
      g4--
        -\tweak side-axis #0
        -\tweak X-offset #2
        -\markup{\italic "m.d."}
      fis8--
      \toRH
      \kneed-beam g_-
      % Both Gutheil and Muzyka edition serve as bad example in 
      % Gardner Read example 5-16 (p.70). With almost no horizontal
      % shift, the dot is almost unrecognizable. I did treat it as
      % stain on first glance.
      \once \override NoteColumn.force-hshift = #1.3
      a4._- s8 |
      
      \barNumberCheck 46
      \toLH
      s4 \once \stemDown bes8 s s2 |
      \toRH g'4--
      
      % Both Gutheil and Muzuka editions, staff switch line
      % start at close to stem tip on right hand G note. Tweaking
      % like that can't survive any auto layout change. So here
      % it points to the notehead directly, change can survive longer.
      \once \override VoiceFollower.bound-details.left =
      #'((attach-dir . 2) (padding . 0.5))
      
      \showToLH g,4--~
      g8 \clef treble a-- bes-- c-- |
      
      \once \override VoiceFollower.bound-details =
      #'((right (attach-dir . -2) (padding . 0.5))
         (left  (attach-dir .  0) (padding . 2)))
      \showToRH d2--
      
    }
    \\
    \relative c' {
      \tuplet 6/4 { a16 ( g e ) bes' ( g e ) } |
      \LHpatB
      \tuplet 6/4 4 {
        d, ( a' fis' ) d' ( c fis, ) e' ( c fis, ) fis' ( c fis, ) |
        d, ( a' d g c ees ) fis ( ees c g d a )
        d, ( a' d d a' d ) a ( fis d ) bes' ( fis d )
      } |
      
      \barNumberCheck 44
      \LHpatB
      \tuplet 6/4 4 {
        d, ( a' g' ) d' ( c g ) ees' ( c g ) f' ( c g ) |
        d, ( a' g' a bes cis ) fis ( cis bes g a,
        d,^~ % FIXME should be downward, but lilypond almost make it invisible
        d ) a' ( d d a' d c a d, d d, d' ) |
        \temporary \stemUp
        g, ( d' g bes \clef treble d g
        bes g d \clef bass bes g d )
        f, ( d' g aes bes \clef treble d
        aes' ees bes d \clef bass aes bes, ) |
        
        \barNumberCheck 47
        \revert Stem.direction
        ees, ( bes' g' bes ees f ) g ( ees bes g bes, ees, )
        e ( g' <bes d> ) a' ( g d ) bes' ( g d ) c' ( g d ) |
        \clef bass \oneVoice
        a,, ( a' fis' a d e fis d a fis a, a,~
        a ) a' ( fis' a b dis fis dis b a fis a, )
      }
    }
  >> |
  \tuplet 6/4 4 {
    a,,=,, ( a' fis' g bes ees )
    % FIXME With upward slurs, some slurs are overlapping with tenutos.
    % With downward slurs, some start at bad positions.
    <d e>-- ( bes g a, g' ) g (
    <cis f>-- bes g a, g' ) g (
    <cis fis>-- a ) a ( g a, ) a (
  } |
  
  \barNumberCheck 50
  \once \stemDown D,,8 )
  <<
    \relative c {
      \voiceOffBeatBeaming
      \repeat unfold 2 { <a fis' a>16 q q8 s s <d e> s q | s }
      <a fis' a>16 q q8 s r <d g>16 q q8 r |
      r <d gis>16 q q8 r s2 |
      r8 <d bes' d>16 q q8 r s q s q |
      s q16 q q8 s s q s q |
      s q16 q q8 s r <c g'>16 q q8 r |
      r <cis g'>16 q q8 r s2 |
      s8 <g' c ees>16 q q8 s s q s q |
      s q16 q q8 s s q s q |
      r <g bes ees>16 q q8 r r <bes d g>16 q q8 r 
    }
    \\
    \relative c,, {
      \repeat unfold 2 { \addArticulation "staccato" { s8 s Fis Bes s G s | D } }
      s s d''8-. Es,,4.-- d''8-. |
      E,,4.-- \addArticulation "staccato" { d''8 \oneVoice F,, d'' Fis,, d'' } |
      \voiceTwo G,,4.-- \addArticulation "staccato" {
        Bes8 D s Bes s |
        % SPECIAL NOTE: Muzyka edition has single note G, but Gutheil shows octave.
        % from surrounding pattern this should be octave.
        G s s Bes D s Bes s |
        G s s G'
      }
      As,4.-- G'8-. |
      A,4.-- \addArticulation "staccato" { g''8 \oneVoice Bes,, g'' B,, g'' } |
      \voiceTwo \repeat unfold 2 { C,, s s Es G s Es s } |
      Cis4.-> Bes'8-. D,4.-> Bes'8-.
    }
  >> |
  
  \barNumberCheck 61
  <<
    \relative c' {
      r8 d-- ( cis ) \clef treble <g' bes,>4-> <g bes>-> r8
    }
    \\
    \relative c' {
      \voiceOffBeatBeaming
      s <bes g>4 d8-- ( cis ) d-- ( cis ) \clef bass Es,,->
    }
    \\
    \relative c, { \voiceFour E2.-> s4 }
  >> |

  % bar 62
  <<
    \relative c' {
      \unsetVoiceOffBeatBeaming
      r8 \clef treble <bes d g bes>16 q q q q q q8\noBeam
      <d g bes>-> <cis g' bes>-> <c d a'>->
    }
    \\
    \relative c, { D1-> }
  >> |
  
  \set baseMoment = #(ly:make-moment 1 8)
  \set beatStructure = #'(1 2 2 2 1)
  \set beamExceptions =  #'()
  <bes'''= d g>8-> \clef bass <b, g'>-> <c g'>->
  As,-. A-. D-> G,-> r |
  
  \unset baseMoment
  \unset beatStructure
  \unset beamExceptions
  
  \barNumberCheck 64
  \LHpatX
  
  \barNumberCheck 72
  <<
    \relative c {
      \set baseMoment = #(ly:make-moment 1 8)
      \set beatStructure = #'(1 2 1 2 2)
      \set beamExceptions = #'()

      s <d g bes d>16 q q8 s r <g bes d>16 <g bes ees> q <g bes e> q8 |
      s <d f bes d>16 q q8 s r <g bes c>16 <g bes cis> q <g bes d> q8 |
      
      \set beatStructure = #'(1 2 1 1 2 1)
      r <g bes ees>16 q q8 r r <e g bes>16 q q8 r |
      r <f g bes>16 q q8 r s2 |
      
      \barNumberCheck 76
      \set beatStructure = #'(1 2 1 2 2)
      s8 <ees g>16 q q8 s r q16 <ees aes> q <ees a> q8 |
      s <ees bes'>16 q q8 s r <ees f>16 <ees fis> q <ees g> q8 |
      
      \set beatStructure = #'(1 2 2 2 1)
      r8 <ees aes>16 q q8 r r <ees a>16 q q8 r |
      r <ees a>16 q q8 r r <d bes'>16 q q8 r
    }
    \\
    \relative c {
      \repeat unfold 2 { <g g,>8-> s4 a16 ( bes <d d,>2-> ) | }
      G,,4.-- ees''8-. G,,4.-- e''8-. |
      G,,4.-- \addArticulation "staccato" { f''8 \oneVoice G,, fis'' G,, g'' } |
      \barNumberCheck 76
      \voiceTwo
      G,,8-. s4 b'16 ( c Es,2-> ) |
      G,8 s4 a'16 ( bes Es,2-> ) |
      G,4.-- As'8-. G,4.-- A'8-. |
      Es,4.-- Bes''8-. D,,4.-- d''8-.
    }
  >> |
  
  \barNumberCheck 80
  \set baseMoment = #(ly:make-moment 1 8)
  \set beatStructure = #'(1 2 2 1 2)
  \set beamExceptions = #'()
  G=,,8-. <g' d'>16 q q8 <bes ees>16 q q8 Bes,-. D-. A-. |
  G-. <d'' g>16 q q8 <ees, bes'>16 q q8 bes-. d-. a-. |
  
  \set beatStructure = #'(1 2 2 2 1)
  g-. <g' d'>16 q q8
  <<
    \relative c {
      \set baseMoment = #(ly:make-moment 1 8)
      \set beatStructure = #'(1 2 2 2 1)
      \set beamExceptions = #'()

      s8 r <bes d>8-. <a d>-. r |
      s <g d'>16 q q8 s r bes-. a-. r |
    }
    \\
    \relative c, {
      a16 ( bes d2-> ) |
      g,8-. s4 a16 ( bes d2-> ) |
    }
  >> |
  
  \barNumberCheck 84
  \unset baseMoment
  \unset beatStructure
  \unset beamExceptions

  g,=,,8 r r d' <g, d'> r d''16 ( e fis8 ) |
  <g, d' g>8 r \clef treble d''16 ( e fis8 )
  <g, d' g>8 r d''16 ( e fis8 ) |
  <g, d' g>8 r \clef bass g,-. r r2 |
}

DynPatternA = { % bar 17-24, 64-71
  s1-\tweak X-offset #-2
    -\tweak whiteout ##t \f |
  s1*4 |
  \moveDynamics #2.5 #'(0 . 2.5)
  s1-\tweak avoid-slur #'ignore \f |
  
  \moveDynamics #4 #'(0 . -4.25)
  s8-\tweak avoid-slur #'ignore \ff
  s2..\p\< |
  s1\! |

}

%------- Dynamics
Dynamics = {
  \tempo \markup{\huge "Alla marcia"} 4 = 108
  s1\p |
  \set Score.tempoHideNote = ##t
  s4. s8\< s2\! |
  s8 s2..\cresc |
  s1 |
  \moveDynamics #2 #'(0 . 2.5)
  s4..-\tweak avoid-slur #'ignore \f
  s16\dim % move away from beat position so staves can stay closer
  s2 |
  s4. s8\< s2\! |
  s4. s4.\p\< s8\! s8\> |
  s8 s4.\! s2\dim |
  \time 2/4 s2\pp |
  
  \barNumberCheck 10
  \time 4/4 s1-\tweak X-offset #-2 \p |
  s4. s8\< s2\! |
  s4 s16 s16\cresc s2 s8 |
  s1 |
  s2 s8
  \moveDynamics #-1 #'(0 . 2.5)
  s4\f
  s8 -\tweak whiteout ##t -\markup{\larger\italic "marcato"} |
  s1 |
  \time 2/4 s2 |
  
  \barNumberCheck 17
  \time 4/4 \DynPatternA
  
  \barNumberCheck 25
  \moveDynamics #-4 #'(0 . -3)
  s1\ff |
  s1*5 |
  
  \barNumberCheck 31
  s2 s2\dim |
  s1*2 |
  \tempo 4 = 100 s4..\p
  \tempo 4 = 90  s16\dim s4.
  \tempo 4 = 60  s8 |
  \tempo \markup{\huge "un poco meno mosso"} 4 = 80
  s1 -\tweak X-offset #0.5 \pp
  s1*3 |
  s8 s2..\cresc |
  s2-\tweak X-offset #0.5 \mf s8\< s8\! s4*2/3\> s4*1/3\! |
  
  \barNumberCheck 41
  \moveDynamics #1 #'(0 . -1)
  s1\p |
  s1*4 |
  s8 s2..\cresc |
  s2\mf s8 s4\> s8\! |
  s4\p s4*2/3\< s4*1/3\! s2 |
  s8*1/3 s8*4/3\> s8*1/3\! s4
  % Normally rit. should be in italics and not act as metronome mark.
  % But for the purpose of following Muzyka edition...
  \tempo \markup{\huge "rit."} 4 = 80
  s2\dim
  
  \barNumberCheck 50
  \moveDynamics #6 #'(-1.5 . -3.5)
  s1\ppp |
  s1 |
  % FIXME need spanner
  \tempo \markup{\huge "poco a poco accelerando al Tempo I"} 4 = 84
  s8 s2..\cresc |
  \tempo 4 = 88  s1 |
  \tempo 4 = 92  s1 |
  \tempo 4 = 96  s1 |
  \tempo 4 = 100 s1 |
  \tempo 4 = 104 s1 |
  
  \barNumberCheck 58
  \tempo \markup{\huge "Tempo I"} 4 = 108
  \moveDynamics #-2 #'(0 . -4) s1\f |
  s2 s2\cresc |
  s1*2 |
  s1\ff |
  s1 |
  
  \barNumberCheck 64
  \DynPatternA
  
  \barNumberCheck 72
  \moveDynamics #3 #'(0 . -6.5)
  s2\ff
  s8 s4\< s8\! |
  s2 s8 s4\< s8\! |
  s1*2 |
  
  \barNumberCheck 76
  \repeat unfold 2 { s2 s8 s4\< s8\! } |
  s1*2 |
  
  \barNumberCheck 80
  s8 s2..\dim |
  s1 |
  s4.\p s8\< s2\! |
  s1\dim |
  % pp and leggiero not aligned
  s8\pp s8-\markup{\larger \italic "leggiero"} s2. |
  s1*2 \bar "|."
  
}


%-------Typeset music and generate midi
\score {

  \context PianoStaff <<
    \set PianoStaff.midiInstrument = "acoustic grand"
    \accidentalStyle Score.piano
    \new Staff = "RH" << \clef bass \key g \minor \time 4/4 \RH >>
    \new Dynamics << \Dynamics >>
    \new Staff = "LH" << \clef bass \key g \minor \time 4/4 \LH >>
  >>
  \layout {
    \context {
      \Score
      \override DynamicTextSpanner.style = #'none
      \omit TupletBracket
      \omit TupletNumber
      % apparently at least bracket still affect layout decisions
      \override TupletBracket.avoid-scripts = ##t
      \override TupletBracket.avoid-slur = #'ignore
      \override TupletNumber.avoid-slur = #'ignore
      % FIXME check if line break occurs at bar 49
      \override Accidental.hide-tied-accidental-after-break = ##t
    }
  }
  \midi {
    \tempo 4 = 108
    \context {
      \Score
      midiMinimumVolume = #0.3
      midiMaximumVolume = #1
    }
  }
}