NAME
    Tie::ExecHash - Give special powers to only some keys in a hash

VERSION
    version 0.91

SYNOPSIS
      use Tie::ExecHash;

      my %foo = ();
      tie( %foo, 'Tie::ExecHash');

      $foo{'bar'} = 1;
      print "$foo{'bar'}\n"; # 1

      my $baz = "red";

      $foo{'bar'} = [ sub { $baz = $_[0] }, sub { $baz } ];

      print "$foo{'bar'}\n"; # red

      $foo{'bar'} = "a suffusion of yellow";

      print "$baz\n"; # a suffusion of yellow

DESCRIPTION
    What this does is allow you to have some hash values act like they are
    tied scalars without actually having to go through the trouble of making
    them really be tied scalars.

    By default the tied hash works exactly like a normal hash. Its behavior
    changes when you assign a value of an arrayref with exactly two code
    blocks in it. When you do this it uses the first as the get routine and
    the second as the set routine. Any future gets or sets to this key will
    be mediated via these subroutines.

SEE ALSO
    Tie::Hash

    Tie::SentientHash

HISTORY
    This was originally written as part of the development of "friv", the
    command line client for the Volity project. <http://www.volity.org/>

AUTHOR
    Becca <becca@referencethis.com>

COPYRIGHT AND LICENSE
    This software is copyright (c) 2011 by Rebecca Turner.

    This is free software; you can redistribute it and/or modify it under
    the same terms as the Perl 5 programming language system itself.

