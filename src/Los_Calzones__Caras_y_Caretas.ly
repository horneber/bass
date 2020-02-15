\version "2.19.82"

%\include "includes/tabs_engraved.ily"
\include "includes/no_tabs_engraved.ily"
\include "includes/settings.ily"
\include "includes/shortcuts.ily"



\header {
  title = "Caras y Caretas"
  subtitle = "Fabián Isernia on Bass"
  subsubtitle =  "Why yes, I do like arpeggios, thank you very much"
  composer = "Los Calzones Rotos"
  instrument = "Bass"
  tagline = \markup {

    Engraved at
    \simple #(strftime "%Y-%m-%d" (localtime (current-time)))
    with \with-url #"http://lilypond.org/"
    \line { LilyPond \simple #(lilypond-version) (http://lilypond.org/) }
  }
}



%score starts

shortSkit = {
  
  \minFret #3
  \tuplet 3/2 {a4 a a g g g}
}
skit = { 
 \italMark  "Intro skit" 
 \shortSkit
 \time 2/4
  a4 r4 
 
  \barbara
  
}

interlude = {
  \italMark  "Interlude"
 \minFret #5
  a4 b c b
  a b c b
  a b c b
  \minFret #0
  g g e e
 | 
  \minFret #5
  a4 b c b
  \minFret #5
  a4 b \tuplet 3/2 { c b a}
  \minFret #3
  g1~ 
  g2 g4 g
  gis1~ 
  gis2  e'4 gis,
  a1  \glissando \minFret #17 a'2~ a8 a a a
  |
  \barbara
}

firstVerse = {
  \italMark  "Verse I"
 \minFret #5
  a,4 b c c8 b
  a4 b c d
  e gis b gis8 b
  e,4 gis b8 gis e4
  |
  \minFret #2
  g, d' b d8 b
  g4 b d b8 d
  c4 c c c
  \minFret #7
  r8 e r e r e r e
  |
  \minFret #5
  a,4 e' c e8 c
  a4 b c d
  e gis b gis8 b
  e,4 d e8 d b4
  |
  \minFret #2
  g d' b d8 b
  g4 b d b8 d
  c4 c c c
  \minFret #7
  e8 e4  e4  e8 e e
  
  \barbara
}


firstBridge = {
  \italMark  "Bridge I"
  \minFret #5
  a,4 c e c8 e
  a,4 e' e e
  \minFret #0
  e, \minFret #4 b'  gis b8 gis
  \minFret #0
  e4 gis \minFret #4 b8 gis b4
  |
  \minFret #5
  a4 e' c e8 c
  a4 e' c e8 c
  \minFret #0
  e,4 \minFret #4 b'  gis b8 gis
  \minFret #0
  e4 gis \minFret #4 b8 gis b4
  |
  \barbara
}


secondVerse = {
  \italMark  "Verse II"
 \minFret #5
  a,4 b c c8 b
  a4 b c d
  \minFret #0
  e, \minFret #4 gis b gis8 b
  \minFret #0
  e,4 \minFret #4 gis b gis8 b
  |
  \minFret #2
  g4  d' b d8 b
  g4 b d b8 d
  c4 c c c
  \minFret #0
  r8 e, r e r e r e
  |
  \minFret #5
  a4 b c e
  a,4 b c e
  \minFret #0
  e, \minFret #4 gis b gis8 b
  \minFret #0
  e,4 \minFret #4 gis b r8 \minFret #2 g~
  |
  \minFret #2
  g4 d' b d8 g,~
  g4 b d b8 d
  c4 c c c
  \minFret #7
  e8 e4  e4  e8 e e
  |
  \barbara
}


secondBridge = {
  \italMark  "Bride II"
  \minFret #5
  a,4 b c e
  a,4 c e c
  \minFret #0
  e, \minFret #4 b'  gis b
  \minFret #0
  e,4 gis \minFret #4 b gis 
  |
  \minFret #5
  a4 e' c e
  a,4 e' c e
  \minFret #0
  e,4 gis \minFret #4 b gis 
  \minFret #0
  e4 gis \minFret #4 b gis 
  |
  \barbara
}

breakup = {
  \shortSkit
  \barbara
  \italMark  "Break Up"  
  a4 r8 a4. r4
  a a r2
  a8 a r8 a4. r4
  a a r2
  |
  a4 r8 a4. r4
  a a r2
  d,4 r8 d4. r4
  e e r2
  |
  a4 r8 a4. r4
  a a r2
  d,4 r8 d4. r4
  \minFret #5
  e e g r8 b
  |
  a4 r8 a4. r4
  a a r2
  \minFret #3
  d,4 r8 d4. r4
  e4 b'4 e4. b8
  |
  a4 r8 a4. r4
  \minFret #5
  a4 c b8 c r c
  \minFret #3
  d4 r8 d4. r4
  e4 b4 e,4. r8
  |
  a4 r8 a4. r4
  \minFret #5
  a4 b c r8 c
  \minFret #3
  d4 r8 d4. r4
  e4 b4 e,4. r8
  |
  a4 r8 a4. r4
  a a r2
  d4 r8 d4. r4
  e e r2
  |
  a,4 r8 a4. r4
  a a r2
  \minFret #3
  d,2 d
  e4 e e e
  |
  \barbara
  
}

eSKAlation = {
  \italMark  "Eskalation"
  \minFret #4
  a4 b c e
  a g f a
  e b gis b8 e,
  b'8 b e,4 gis b8 gis
  |
  \minFret #4
  a4 b c e
  a g f g
  e d c b
  e4 d c b
  |
  
  \barbara
}

repriseBreakUp = {
  \italMark  "Reprise Break Up"
  \minFret #5
  a, c e f
  a e c e
  \minFret #3
  d,4 a' f a8 f
  e4 gis8 b b b b b
  |
  \minFret #5
  a4 e' c e8 c
  a4 e' c8 b a4
  \minFret #3
  d,4 a' f a8 f
  e4 gis8 b b b gis4
  |
  \minFret #5
  a e' f e
  a, b c d
  f c f c
  e8 e b4 e b
  |
  a b c d
  a b c d
  f c f c
  e8 e b4 e b
  |
  \barbara
}

outro = {
  \italMark  "Outro"
  \minFret #5
  a b c e
  a g f a
  e d c b
  e4 d c b
  |
  \minFret #5
  a b c e
  a g f g
  e d c b8 e
  e8 e d4 c b

}

bass = \relative c, {   
  
  \skit
  \time 4/4
  \interlude
  
  \firstVerse
  \firstBridge
  \interlude
  
  \secondVerse
  \secondBridge
  
  \breakup
  \eSKAlation
  \interlude
  
  \repriseBreakUp
  \outro
  
  \skit
}

chordsSong = {}

\score {
  <<
    \scoreSettings
    \new ChordNames {
      \chordSettings

      \chordsSong
    }

    \new Voice \with {
      %  \omit StringNumber
    } {
      \metronomeSettings
      \tempo 4 = 196
      \clef "bass_8"
      \key c \major
      \bass
    }

    \tabs #bass-five-string-tuning { \bass} 
  >>
  
  \layout {}
  \midi {}
}
