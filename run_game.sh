#!/bin/bash

NAME="Henrik_Buller"
SUFFIX="_labb"
COMPILE="Compiling..."
RUNNING="Running..."
DONE="Done!"
RMCLASS="Removing class files..."
CODE="Guesser.java"
MAIN="GuessingGame.java"
GAME="GuessingGame"


echo "$NAME made this game."

mkdir "$NAME$SUFFIX"
cp {$CODE,$MAIN} $NAME$SUFFIX
cd ./$NAME$SUFFIX

echo -n "Running game from "; pwd

echo "$COMPILE"
javac "$CODE"; javac "$MAIN"

echo "$RUNNING"
java $GAME
echo $DONE


echo $RMCLASS
rm *.class

dir
