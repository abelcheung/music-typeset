pianoDyn = {
  \time 4/4

  s1*2 |
  s1\p |
  s1*3 |
  \crescWithText "pochissimo cresc." s1\< |
  s4\mp\> s4*2/3 s8*2/3\p s2 |
  s1*2 |
  
  \barNumberCheck 11
  \crescHairpin s1\<
  s4\f s4\> s4*2/3 s8*2/3\! s4 |
  s1-\tweak X-offset 3 -\tweak extra-offset #'(-3.5 . -3) \mf |
  s1|
  s4 s2.\< |
  s1\f |
  s1\> |
  s1\mp |
  s1 |
  s1\p |
}
