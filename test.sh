#!/bin/bash

LISTLEN=201
TESTFILE=/test/bashpipingtest
TESTFILE2=/test/bashtest2

for i in `seq 1 $LISTLEN`
do
	echo "First test: x$i" >> $TESTFILE
	echo "Second test: x$i" >> $TESTFILE2
	echo "Third test: x$i" >> $TESTFILE
done

TESTSIZE=$(stat -c%s "$TESTFILE")
TESTSIZE2=$(stat -c%s "$TESTFILE2")

echo "We've now added $LISTLEN x 2 lines to the test file, $TESTFILE"
echo "This test file is now $TESTSIZE bytes."

echo "We've also added $LISTLEN lines to a secondary test file, $TESTFILE2"
echo "This alternate test file is now $TESTSIZE2 bytes."
