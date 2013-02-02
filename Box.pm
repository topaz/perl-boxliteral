package Box;

use overload '~' => sub {
  $_[0]->{w} += .5;
  return $_[0];
};


package main;
sub o {
  @_ ? $_[0] : bless {w=>0,h=>0}, 'Box';
}
sub I {
  $_[0]{h} += .5;
  return $_[0];
}

1;
