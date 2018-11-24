\version "2.19.82"

% define a shortcut to have better readable tab fret settings
% and to get rid of tabs completely
% to remove the tabs, it's not enough to just remove the
% TabStaff
minFret =
#(define-music-function
  (parser location fret)
  (number?)
  #{
    % If you want to get rid of tabs completely, you need to comment the following code line
    % so that e,g. \minFret #5 expands to an emtpy string
    \set TabStaff.minimumFret = #fret
  #})



% define a shortcut to easily get rid of tabs completely
% to remove the tabs
tabs =
#(define-music-function
  (parser location expression)
  (string-or-music?)
  #{
    \new TabStaff \with {
      stringTunings = #bass-tuning
    } {
      \clef moderntab
      \set TabStaff.restrainOpenStrings = ##t
      #expression
    }
  #})
