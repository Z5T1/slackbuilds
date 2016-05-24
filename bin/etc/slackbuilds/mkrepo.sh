#!/bin/bash

echo "name=\"$1\"" > $1
echo "server=\"slackbuilds.org\"" >> $1
echo "directory=\"/14.1/$1\"" >> $1
echo "comment=\"Slackbuilds.org $1 repository\"" >> $1
