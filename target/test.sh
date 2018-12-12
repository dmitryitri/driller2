#!/bin/bash
#find corpus/ -type f -exec bash -c 'echo {}; xxd {}; LD_LIBRARY_PATH=./lib ./CGC_Hangman_Game < {}; echo =====================' \; &>log.txt
for i in corpus/*
do
        echo $i; xxd $i; LD_LIBRARY_PATH=./lib ./CGC_Hangman_Game < $i; echo -e \n=====================
done

