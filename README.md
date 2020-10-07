
This program can be used as a workaround for some problems in WineHQ
when runing a Linux command-line program with input/output redirection.

Due to a flaw in WineHQ (see [bug#18335](https://bugs.winehq.org/show_bug.cgi?id=18335)),
a Windows process cannot detect whether a child Linux process is terminated.

Due to a bug in WineHQ (see https://stackoverflow.com/a/45545068/1300170),
it incorrectly closes the inherited handle when its original is closed.


Usage examples:

```
  runio -n /bin/bash -c "echo test; sleep 1" && echo child is finished

  echo echo wating a second; sleep 1; echo finished | runio /bin/bash
```
