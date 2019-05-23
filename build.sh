#!/bin/sh

set -e

case "$1" in
"")
    flex cscanner.l && bison -d cparser.y
    gcc lex.yy.c cparser.tab.c -o ffcc
    ;;
clean)
    rm -rf *.c *.h *.exe
    ;;
esac
