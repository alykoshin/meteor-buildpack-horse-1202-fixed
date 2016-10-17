#!/bin/sh

VERSION=1.9.7
ARCHIVE_BASE_NAME="phantomjs-$VERSION-linux-x86_64"
ARCHIVE_FULL_NAME="$ARCHIVE_BASE_NAME.tar.bz2"

#echo "Replaced Bitbucket URL"
#PHANTOM_URL="https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-$VERSION-linux-x86_64.tar.bz2"
PHANTOM_URL="https://bitbucket.org/ariya/phantomjs/downloads/$ARCHIVE_FULL_NAME"
#PHANTOM_URL="https://cnpmjs.org/downloads/$ARCHIVE_FULL_NAME"

# Just extract the one file (the binary) and not all the examples/readme's/etc.
FILE="phantomjs-$VERSION-linux-x86_64/bin/phantomjs"
#FILE="$ARCHIVE_BASE_NAME/bin/phantomjs"

echo "-----> Installing phantomjs."
echo "       COMPILE_DIR: $COMPILE_DIR"
echo "       PHANTOM_URL: $PHANTOM_URL"
echo "       FILE: $FILE"
echo ""
echo "In case download fails, please refer to https://github.com/ariya/phantomjs/issues/13953"
echo "alternative URL can be uncommented in this Buildback's file: extra/phantomjs.sh"
#curl -L -sS $PHANTOM_URL -o - | tar -jxf - -C $COMPILE_DIR $FILE --strip 1
curl -L $PHANTOM_URL -o - | tar -jxf - -v -C $COMPILE_DIR $FILE --strip 1
#curl -L $PHANTOM_URL -o - | tar xvf - -v -C $COMPILE_DIR $FILE --strip 1

#curl -L $PHANTOM_URL -o - | tar -jxvf - -C $COMPILE_DIR $FILE --strip 1
#curl -L $PHANTOM_URL -o $ARCHIVE_FULL_NAME

exit 0



