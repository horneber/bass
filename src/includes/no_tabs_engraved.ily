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
    % Defined empty on purpose to remove expression generation

  #})



% define a shortcut to easily get rid of tabs completely
% to remove the tabs
tabs =
#(define-music-function
  (parser location tuning expression )
  (list? string-or-music?)
  #{
    % Defined empty on purpose to remove expression generation  
  #})
