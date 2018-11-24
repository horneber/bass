\version "2.19.82"


metronomeSettings = {
  \override Score.MetronomeMark.padding = #6
  \override Score.MetronomeMark.font-size = #-2
}

chordSettings = {
  % Scale down the size of the chord names
  \override ChordName   #'font-size = #-1
}

scoreSettings = { \override Score.RehearsalMark.font-size = #-1 }

%{
    \context ChordNames = c {
       % Scale down the size of the chord names by .75
       \property ChordNames.ChordName \set #'font-magnification = #0.75

       % Prevent chord names from getting too close together,
       % even when reduced in size.
       \property ChordNames.ChordName \override #'word-space = #2

       \property ChordNames.ChordName \override #'style = #'american

       \chords {
            e2 e4/+cis b4/+dis
            e2 e4/+cis b4/+dis
        }

    }
%}